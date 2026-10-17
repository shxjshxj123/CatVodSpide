---
name: catvod-spider-dev
description: 为 CatVodSpider 项目开发新的影视站点爬虫源（Java）并打包成 custom_spider.jar。覆盖环境搭建（JDK 17 + Android SDK）、站点结构分析、Spider 类编写规范、Release 混淆 dex 反编译与 apktool 重打包全流程。
arguments:
  - name: site-url
    description: 要开发爬虫源的目标站点 URL
    required: true
  - name: class-name
    description: 新爬虫类的 Java 类名（默认根据站点域名自动取名）
    required: false
---

# CatVodSpider 爬虫源开发与打包

按以下四个阶段执行：环境搭建 → 站点分析 → 编写 Spider 类 → 打包验证。

## 阶段一：环境搭建（首次执行，已有环境可跳过）

### 1. 安装 JDK 17

```bash
apt-get update -qq && apt-get install -y -qq openjdk-17-jdk-headless
```

安装后固定 JAVA_HOME：

```bash
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
```

### 2. 安装 Android SDK

```bash
mkdir -p /opt/android-sdk/cmdline-tools
cd /opt/android-sdk/cmdline-tools
wget -q https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O cmdline-tools.zip
unzip -q cmdline-tools.zip && mv cmdline-tools latest && rm cmdline-tools.zip
```

接受许可并安装组件（项目 compileSdk 33，需 platform 33；build-tools 34 也装上）：

```bash
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export ANDROID_HOME=/opt/android-sdk
yes | $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --licenses
$ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager "platform-tools" "platforms;android-33" "platforms;android-34" "build-tools;34.0.0"
```

### 3. 写入 SDK 路径

在项目根目录创建 `local.properties`：

```properties
sdk.dir=/opt/android-sdk
```

注意：`local.properties` 与环境变量 `JAVA_HOME`、`ANDROID_HOME` 每次新开终端都要重新设置。

## 阶段二：站点结构分析

用 curl 抓取目标站点的四类页面，确认 URL 规律与 HTML 选择器。若 DNS 解析失败，可用 DoH 服务查询真实 IP 后用 `--resolve` 直连：

```bash
curl -s "https://dns.google/resolve?name=www.example.com&type=A"
curl -s --resolve www.example.com:443:<IP> -A "<Chrome UA>" "https://www.example.com/" -o /tmp/home.html
```

需要确认的五件事：

1. **首页结构**：视频卡片的 HTML 容器与字段（标题、链接、封面、角标）。
2. **分类 URL 规律**：通常是 `/type/{id}.html` 或 `/xndj/{id}.html`，翻页格式通常是 `{name}-{pg}.html` 或 `?page={pg}`。
3. **详情页字段**：标题、封面、分类、地区、年份、导演、演员、简介、播放源、剧集列表。
4. **播放页视频地址**：在页面源码里找 `.m3u8` / `.mp4`，常见位置是 iframe src 参数、`player_data` JSON、script 变量。
5. **搜索 URL 规律**：通常是 `/search.php?searchword={kw}` 或 `/vodsearch/{kw}----------{pg}---.html`。

苹果 CMS（STUI 模板）站点的常用选择器，可直接套用：

| 用途 | CSS 选择器 |
|------|-----------|
| 视频卡片 | `li.stui-vodlist__item` |
| 卡片链接/标题 | `a.stui-vodlist__thumb` 的 `href` / `title` 属性 |
| 封面 | `mip-img` 的 `src`（MIP 站）或 `img` 的 `data-original` |
| 角标 | `span.pic-text` |
| 标题兜底 | `h4.stui-vodlist__title a` |
| 详情元信息 | `meta[property=og:video:class|area|director|actor|image]` |
| 简介 | `.stui-content__desc` |
| 剧集列表 | `ul.stui-content__playlist li a` |
| 播放源 | `mip-vd-tabs ul li`（源名）|

抓取时带 Chrome UA；站点偶发连接重置时重试 2-3 次。

## 阶段三：编写 Spider 类

### 文件位置与命名

新建 `app/src/main/java/com/github/catvod/spider/<ClassName>.java`，包名 `com.github.catvod.spider`，继承 `com.github.catvod.crawler.Spider`。类名取站点特征词（如站点是犀牛短剧可叫 `Spermik`）。

### 必须实现的方法

```java
public class Example extends Spider {

    private final String url = "https://www.example.com/";
    private HashMap<String, String> headers;

    @Override
    public void init(Context context, String extend) {
        // 初始化请求头：Chrome UA + 站点 Referer
        headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 ... Chrome/120.0 ...");
        headers.put("Referer", url);
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        // 返回分类列表 + 首页推荐视频
        // 分类固定时直接硬编码：new Class("/xndj/1.html", "重生")
        List<Class> classes = new ArrayList<>();
        List<Vod> list = new ArrayList<>();
        // Jsoup 解析首页卡片...
        return Result.string(classes, list);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        // tid = homeContent 里给的分类 id，pg = 页码
        // 拼分类 URL（第 1 页与后续页 URL 格式可能不同）
        // 返回 Result.get().page().vod(list).string() 支持无限翻页
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        // ids.get(0) 是 vod_id，请求详情页
        // 必须设置 vod_id / vod_name / vod_pic / vod_play_from / vod_play_url
        // vod_play_url 格式："第01集$episodeId1#第02集$episodeId2"，多播放源用 $$$ 分隔
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        return searchContent(key, "1");
    }

    @Override
    public String searchContent(String key, boolean quick, String pg) throws Exception {
        // 搜索关键词要 URLEncoder.encode(key, "UTF-8")
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        // 请求播放页，提取 m3u8/mp4 直链
        // 返回 Result.get().url(directUrl).header(playHeaders).string()   直链
        // 或   Result.get().parse().url(pageUrl).header(playHeaders).string()   需嗅探
    }
}
```

### 核心 API 速查

**网络请求**（项目自带 OkHttp 封装）：

```java
String html = OkHttp.string(url, headers);
```

**结果封装**（`com.github.catvod.bean.Result`）：

```java
Result.string(classes, list)          // homeContent
Result.get().page().vod(list).string() // categoryContent / searchContent（无限翻页）
Result.string(list)                    // 无翻页需求的列表
Result.string(vod)                     // detailContent
Result.get().url(u).header(h).string() // playerContent 直链
Result.get().parse().url(u).header(h).string() // playerContent 嗅探
```

**Vod bean**：`new Vod(id, name, pic, remark)`，其余字段用 setter（`setVodPlayFrom`、`setVodPlayUrl`、`setTypeName`、`setVodYear`、`setVodArea`、`setVodActor`、`setVodDirector`、`setVodContent`）。

### 编码规范（必须遵守）

1. **空安全**：Jsoup 的 `selectFirst` 可能返回 null，所有链式调用前判空。封装工具方法：

```java
private String attr(Document doc, String selector) {
    Element el = doc.selectFirst(selector);
    return el == null ? "" : el.attr("content");
}
```

2. **vod_id 设计**：保留站内相对路径（如 `/xiniuduanju/67812.html`）作为 id，detailContent / playerContent 里再截取纯数字部分拼 URL。分类 id 同理直接用完整路径。

3. **请求头**：每个请求都带 Chrome UA；播放直链请求带站点 Referer，部分 CDN 还校验 UA，保持与页面请求一致。

4. **依赖**：只用项目 `app/build.gradle` 里已有的库（jsoup、gson、okhttp 等），不要引入新依赖。

5. **无注释风格**：项目代码不含注释，新增代码保持一致；字符串硬编码站点 URL 为 `private final String` 字段。

### 编译验证

```bash
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export ANDROID_HOME=/opt/android-sdk
cd <项目根目录>
./gradlew :app:compileDebugJavaWithJavac --no-daemon 2>&1 | tail -20
```

注意：首次运行 gradlew 前需 `chmod +x gradlew`；Gradle 7.4.2 发行版首次下载约需 4-10 分钟；完整构建耗时 3-6 分钟，长命令放入后台终端执行。

## 阶段四：打包 custom_spider.jar

产物格式：jar 内只含一个 `classes.dex`，dex 里只保留 `com/github/catvod` 下的 `spider` 与 `js` 两个包（与项目原版一致，体积约 330-400K）。

### 打包流程（Linux）

```bash
cd <项目根目录>/jar

# 0. 清理上次残留
rm -rf Smali_classes spider.jar/smali spider.jar/dist spider.jar/build

# 1. Release 构建产物反编译为 smali
java -jar 3rd/baksmali-2.5.2.jar d \
  ../app/build/intermediates/dex/release/minifyReleaseWithR8/classes.dex \
  -o Smali_classes

# 2. 只拷贝 catvod 的 spider + js 到打包模板
mkdir -p spider.jar/smali/com/github/catvod
cp -r Smali_classes/com/github/catvod/spider spider.jar/smali/com/github/catvod/
cp -r Smali_classes/com/github/catvod/js    spider.jar/smali/com/github/catvod/

# 3. apktool 重新组装成 dex jar
java -jar 3rd/apktool_2.4.1.jar b spider.jar

# 4. 取产物并生成 MD5
mv spider.jar/dist/dex.jar custom_spider.jar
md5sum custom_spider.jar | awk '{print $1}' > custom_spider.jar.md5

# 5. 清理
rm -rf Smali_classes spider.jar/smali spider.jar/dist spider.jar/build
```

前置条件：先执行 `./gradlew assembleRelease --no-daemon`（约 3-6 分钟）生成混淆 dex。

### 体积自检（判断打包是否正确）

| 体积 | 结论 |
|------|------|
| 330-400K | 正确 |
| 800K+ | 混入了 androidx/kotlin/okhttp 等第三方库，检查第 2 步是否误拷整个 Smali_classes |
| <100K | spider 类没拷全，检查 spider.jar/smali/com/github/catvod/spider/ 下是否包含新类 |

### 验证新类已打入

```bash
unzip -o custom_spider.jar classes.dex -d /tmp/verify
java -jar 3rd/baksmali-2.5.2.jar d /tmp/verify/classes.dex -o /tmp/verify/out
ls /tmp/verify/out/com/github/catvod/spider/ | grep <ClassName>
```

能看到 `<ClassName>.smali` 即打包成功。

### 交付物

- `jar/custom_spider.jar` — 新爬虫 jar
- `jar/custom_spider.jar.md5` — MD5 校验文件（部分加载器靠它校验完整性）

Windows 下直接双击项目根目录 `build.bat`（内部调用 `gradlew assembleRelease` + `jar/genJar.bat`）。

## 常见问题

- **`SDK location not found`**：缺 `local.properties` 或 `ANDROID_HOME` 未设置。
- **gradlew permission denied**：`chmod +x gradlew`。
- **DNS 解析失败但站点可达**：用 DoH 拿 IP 后 `curl --resolve` 直连确认结构；爬虫代码里仍写域名，真机网络能正常解析。
- **播放页拿不到直链**：直链可能在异步接口返回的 JSON 里，抓包找 `m3u8` 关键字确认接口，再在 playerContent 里请求该接口；拿不到就用 `parse()` 嗅探模式。
- **R8 混淆后类名变化**：proguard-rules.pro 已 keep `com.github.catvod.spider.*` 的 public 方法，Spider 类名不会被混淆，放心引用。
