package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;

import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class KanKanYa extends Spider {

    private static final String BASE = "https://www.kankanya.me";
    private static final String UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36";
    // 静态替换表（robot.php encrypt 与 Decode2 共用）
    private static final String TABLE = "PXhw7UT1B0a9kQDKZsjIASmOezxYG4CHo5Jyfg2b8FLpEvRr3WtVnlqMidu6cN";
    // md5("test") — Decode1 XOR key
    private static final String MD5_TEST = "098f6bcd4621d373cade4e832627b4f6";

    private String cookie = "";
    private final java.util.Random rnd = new java.util.Random();

    @Override
    public void init(Context context, String extend) {
    }

    // ==================== HTTP 层 ====================

    private Map<String, String> header(String referer) {
        Map<String, String> h = new HashMap<>();
        h.put("User-Agent", UA);
        if (!TextUtils.isEmpty(referer)) h.put("Referer", referer);
        if (!TextUtils.isEmpty(cookie)) h.put("Cookie", cookie);
        return h;
    }

    private String get(String url, String referer) throws Exception {
        String resp = OkHttp.string(url, header(referer));
        if (resp.contains("人机")) {
            unlock(url, referer);
            resp = OkHttp.string(url, header(referer));
        }
        return resp;
    }

    private void unlock(String targetUrl, String referer) throws Exception {
        String page = OkHttp.string(targetUrl, header(referer));
        if (!page.contains("人机")) {
            Map<String, List<String>> rh = new LinkedHashMap<>();
            OkHttp.string(targetUrl, header(referer), rh);
            cookie = captureCookie(rh);
            return;
        }
        String ts = extractRobotToken(page);
        String value = encryptRobot(targetUrl);
        String token = encryptRobot(ts);
        Map<String, String> params = new HashMap<>();
        params.put("value", value);
        params.put("token", token);
        Map<String, String> h = new HashMap<>();
        h.put("User-Agent", UA);
        h.put("Content-Type", "application/x-www-form-urlencoded");
        if (!TextUtils.isEmpty(referer)) h.put("Referer", referer);
        Map<String, List<String>> rh = new LinkedHashMap<>();
        OkHttp.post(BASE + "/robot.php", params, h, rh);
        cookie = captureCookie(rh);
        try {
            Thread.sleep(1000);
        } catch (Exception ignored) {
        }
    }

    private String captureCookie(Map<String, List<String>> rh) {
        if (rh == null) return cookie;
        List<String> vals = rh.get("set-cookie");
        if (vals == null || vals.isEmpty()) return cookie;
        StringBuilder sb = new StringBuilder();
        for (String c : vals) {
            int e = c.indexOf(';');
            sb.append(e > 0 ? c.substring(0, e) : c).append(";");
        }
        return sb.toString();
    }

    private String extractRobotToken(String page) {
        int i = page.indexOf("encrypt(\"");
        if (i < 0) return "";
        i += "encrypt(\"".length();
        int e = page.indexOf("\"", i);
        if (e < 0) return "";
        return page.substring(i, e);
    }

    // robot.php encrypt：每字符 -> TABLE[(idx+3)%62]，前后各包一个随机表字符，base64 编码
    private String encryptRobot(String s) {
        StringBuilder sb = new StringBuilder();
        for (int idx = 0; idx < s.length(); idx++) {
            char ch = s.charAt(idx);
            int pos = TABLE.indexOf(ch);
            char code = pos < 0 ? ch : TABLE.charAt((pos + 3) % 62);
            sb.append(TABLE.charAt(rnd.nextInt(62)))
                    .append(code)
                    .append(TABLE.charAt(rnd.nextInt(62)));
        }
        return Base64.encodeToString(sb.toString().getBytes(StandardCharsets.UTF_8), Base64.DEFAULT);
    }

    // ==================== 站点内容 ====================

    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Class> classes = new ArrayList<>();
        classes.add(new Class("dianying", "电影"));
        classes.add(new Class("juji", "剧集"));
        classes.add(new Class("zongyi", "综艺"));
        classes.add(new Class("dongman", "动漫"));
        List<Vod> list = parseList(get(BASE + "/", BASE + "/"));
        return Result.string(classes, list);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        int page = safeInt(pg, 1);
        if (page < 1) page = 1;
        // show 页翻页 URL 固定为 /show/{tid}--------{page}---.html（6 连字符 + 页码 + 3 连字符），
        // 之前用的 7 连字符 + 尾无连字符 格式站点不识别，会静默回退到第 1 页（各页内容相同）
        String t = "juji".equals(tid) ? "juji" : "zongyi".equals(tid) ? "zongyi" : "dongman".equals(tid) ? "dongman" : "dianying";
        String url = BASE + "/show/" + t + "--------" + page + "---.html";
        String html = get(url, BASE + "/");
        List<Vod> list = parseList(html);
        int pagecount = lastPage(html, t);
        return Result.get().page(page, pagecount, 0, 0).vod(list).string();
    }

    // 从分类页 pager 的 尾页 链接提取总页数；无 pager（单页分类）返回 1
    private int lastPage(String html, String t) {
        Document doc = Jsoup.parse(html);
        Element last = doc.selectFirst("a[title=尾页]");
        if (last != null) {
            String href = last.attr("href");
            int dash = href.lastIndexOf("-");
            int s = dash > 0 ? dash + 1 : 0;
            int e = href.lastIndexOf(".html");
            if (e < 0) e = href.length();
            return safeInt(href.substring(s, e), 1);
        }
        return 1;
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        String id = ids.get(0);
        String html = get(BASE + "/detail/" + id + ".html", BASE + "/");
        Document doc = Jsoup.parse(html);

        String name = "";
        Element h1 = doc.selectFirst("h1");
        if (h1 != null) name = h1.text().trim();
        if (TextUtils.isEmpty(name)) {
            Element title = doc.selectFirst("title");
            if (title != null) name = title.text().replace("详情介绍-", "").replace("-看看鸭", "").trim();
        }

        String pic = "";
        Element posterImg = doc.selectFirst(".module-info-poster img");
        if (posterImg != null) {
            pic = posterImg.attr("data-original");
            if (TextUtils.isEmpty(pic)) pic = posterImg.attr("src");
        }

        String desc = "";
        Element descEl = doc.selectFirst(".module-info-introduction-content");
        if (descEl != null) desc = descEl.text().trim();

        String year = "";
        String actor = "";
        for (Element item : doc.select(".module-info-item")) {
            String label = item.selectFirst(".module-info-item-title") != null
                    ? item.selectFirst(".module-info-item-title").text() : "";
            String content = item.selectFirst(".module-info-item-content") != null
                    ? item.selectFirst(".module-info-item-content").text().trim() : "";
            if (label.contains("年份") || label.contains("上映")) year = content;
            else if (label.contains("主演") || label.contains("演员")) actor = content;
        }

        // 播放源：tab-item -> panel{idx}
        List<String> sourceNames = new ArrayList<>();
        for (Element tab : doc.select("#y-playList .module-tab-item")) {
            sourceNames.add(tab.attr("data-dropdown-value"));
        }
        List<Element> panels = doc.select(".module-list.sort-list.tab-list.his-tab-list");
        List<String> from = new ArrayList<>();
        List<String> urlList = new ArrayList<>();
        int epCount = 0;
        for (int p = 0; p < panels.size(); p++) {
            Element panel = panels.get(p);
            int groupNum = p + 1;
            List<String> eps = new ArrayList<>();
            for (Element link : panel.select("a.module-play-list-link")) {
                String epName = link.text().trim();
                String href = link.attr("href");
                if (!href.contains("/play/")) continue;
                // epNum 必须取自 href（显示集数与 URL 集数可能不一致，如 bLmhhk 组2: -2-28 显示第06集）
                int m = href.indexOf("/play/");
                int s2 = href.indexOf('-', m + 6);
                int e2 = href.lastIndexOf(".html");
                if (s2 < 0 || e2 <= s2) continue;
                String tail = href.substring(s2 + 1, e2);
                int dash = tail.lastIndexOf('-');
                if (dash < 0) continue;
                String epNum = tail.substring(dash + 1);
                if (TextUtils.isEmpty(epNum)) epNum = String.valueOf(eps.size() + 1);
                eps.add(epName + "$" + id + "|" + groupNum + "|" + epNum);
            }
            if (!eps.isEmpty()) {
                from.add(p < sourceNames.size() ? sourceNames.get(p) : ("源" + groupNum));
                urlList.add(TextUtils.join("#", eps));
                epCount += eps.size();
            }
        }

        Vod vod = new Vod();
        vod.setVodId(id);
        vod.setVodName(TextUtils.isEmpty(name) ? ("看看鸭" + id) : name);
        vod.setVodPic(pic);
        vod.setVodContent(desc);
        vod.setTypeName("看看鸭");
        vod.setVodRemarks(epCount > 0 ? epCount + "集" : "");
        vod.setVodYear(year);
        vod.setVodActor(actor);
        vod.setVodPlayFrom(TextUtils.join("$$$", from));
        vod.setVodPlayUrl(TextUtils.join("$$$", urlList));
        return Result.string(vod);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        return searchContent(key, "1");
    }

    @Override
    public String searchContent(String key, boolean quick, String pg) throws Exception {
        return searchContent(key, pg);
    }

    private String searchContent(String key, String pg) throws Exception {
        int page = safeInt(pg, 1);
        if (page < 1) page = 1;
        // 站点搜索走 /search/{key}-------------{page}.html（key + 11 连字符 + 页码），
        // 之前的 /index.php?searchword= 会忽略关键词、返回站点首页数据（不同搜索词结果相同）
        String enc = URLEncoder.encode(key, "UTF-8");
        String url = BASE + "/search/" + enc + "-------------" + page + ".html";
        String html = get(url, BASE + "/");
        List<Vod> list = parseList(html);
        return Result.get().page(page, 0, 0, 0).vod(list).string();
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        String[] parts = id.split("\\|", 3);
        String detailId = parts[0];
        int group = safeInt(parts.length > 1 ? parts[1] : "", 1);
        int epNum = safeInt(parts.length > 2 ? parts[2] : "1", 1);
        String playUrl = BASE + "/play/" + detailId + "-" + group + "-" + epNum + ".html";
        String html = get(playUrl, BASE + "/");
        String m3u8 = extractM3u8(html);
        Map<String, String> playHeaders = new HashMap<>();
        playHeaders.put("User-Agent", UA);
        playHeaders.put("Referer", playUrl);
        return Result.get().url(m3u8).header(playHeaders).string();
    }

    private int safeInt(String s, int def) {
        try {
            return Integer.parseInt(s);
        } catch (Exception e) {
            return def;
        }
    }

    // 从 play 页面 player_aaaa 取 url 字段，POST api.php 解码得到 m3u8 URL（含签名 token，即时有效）
    private String extractM3u8(String html) throws Exception {
        JSONObject player = parsePlayerAaaa(html);
        if (player == null) return "";
        String urlBlob = player.optString("url");
        if (TextUtils.isEmpty(urlBlob)) return "";

        Map<String, String> params = new HashMap<>();
        params.put("vid", urlBlob);
        Map<String, String> h = new HashMap<>();
        h.put("User-Agent", UA);
        h.put("Content-Type", "application/x-www-form-urlencoded");
        h.put("Referer", BASE + "/kkyplayer/index.php");
        String resp = OkHttp.post(BASE + "/kkyplayer/api.php", params, h);
        JSONObject json = new JSONObject(resp);
        JSONObject data = json.optJSONObject("data");
        if (data == null) return "";
        int urlMode = data.optInt("urlmode", 2);
        String payload = data.optString("url");
        return urlMode == 2 ? decode2(payload) : decode1(payload);
    }

    private JSONObject parsePlayerAaaa(String html) {
        int i = html.indexOf("player_aaaa");
        if (i < 0) return null;
        int s = html.lastIndexOf("<script", i);
        int e = html.indexOf("</script>", i);
        if (s < 0 || e < 0) return null;
        String chunk = html.substring(s, e);
        int j = chunk.indexOf('{');
        int k = chunk.lastIndexOf('}');
        if (j < 0 || k < j) return null;
        try {
            return new JSONObject(chunk.substring(j, k + 1));
        } catch (Exception ex) {
            return null;
        }
    }

    // Decode2: base64decode -> 取 i%3==1 的字符 -> TABLE[(idx+59)%62] 替换
    private String decode2(String payload) {
        String padded = padBase64(payload);
        byte[] raw = Base64.decode(padded, Base64.DEFAULT);
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i < raw.length; i += 3) {
            int b = raw[i] & 0xFF;
            int idx = TABLE.indexOf((char) b);
            sb.append(idx < 0 ? (char) b : TABLE.charAt((idx + 59) % 62));
        }
        return sb.toString();
    }

    // Decode1: base64decode -> XOR md5("test") -> base64encode -> split('/') -> deString
    private String decode1(String payload) {
        try {
            byte[] raw = Base64.decode(padBase64(payload), Base64.DEFAULT);
            byte[] key = MD5_TEST.getBytes(StandardCharsets.US_ASCII);
            StringBuilder xored = new StringBuilder();
            for (int i = 0; i < raw.length; i++) {
                xored.append((char) (raw[i] ^ key[i % key.length]));
            }
            // 结果应是 base64 字符串（含 / 分隔的 JSON 段）
            String[] parts = xored.toString().split("/");
            if (parts.length < 2) return "";
            String m0 = new String(Base64.decode(padBase64(parts[0]), Base64.DEFAULT), StandardCharsets.UTF_8);
            String m1 = new String(Base64.decode(padBase64(parts[1]), Base64.DEFAULT), StandardCharsets.UTF_8);
            JSONObject map0 = new JSONObject(m0);
            JSONObject map1 = new JSONObject(m1);
            StringBuilder rest = new StringBuilder();
            for (int i = 2; i < parts.length; i++) {
                if (i > 2) rest.append('/');
                rest.append(parts[i]);
            }
            return deString(map0, map1, rest.toString());
        } catch (Exception ex) {
            return "";
        }
    }

    // deString: 对 rest 中每个字母，查 map1 再查 map0 替换；非字母保持原样
    private String deString(JSONObject map0, JSONObject map1, String rest) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < rest.length(); i++) {
            char ch = rest.charAt(i);
            if (ch >= 'A' && ch <= 'Z' || ch >= 'a' && ch <= 'z') {
                String v1 = map1.optString(String.valueOf(ch), String.valueOf(ch));
                String v0 = map0.optString(v1, v1);
                sb.append(v0);
            } else {
                sb.append(ch);
            }
        }
        return sb.toString();
    }

    private String padBase64(String s) {
        int rem = s.length() % 4;
        if (rem == 0) return s;
        StringBuilder sb = new StringBuilder(s);
        for (int i = 0; i < 4 - rem; i++) sb.append('=');
        return sb.toString();
    }

    // ==================== 列表解析 ====================

    private List<Vod> parseList(String html) {
        List<Vod> list = new ArrayList<>();
        Document doc = Jsoup.parse(html);
        Map<String, Boolean> seen = new LinkedHashMap<>();
        for (Element card : doc.select("a[href*=detail]")) {
            try {
                String href = card.attr("href");
                if (!href.matches("/detail/[A-Za-z0-9]+\\.html")) continue;
                String id = href.replaceAll("^/detail/([A-Za-z0-9]+)\\.html$", "$1");
                if (seen.containsKey(id)) continue;
                // 分类卡片标题在 a 的 title 属性；搜索卡片标题在内部 strong，a 上无 title
                String name = card.attr("title");
                if (TextUtils.isEmpty(name)) {
                    Element strong = card.selectFirst("strong");
                    name = strong != null ? strong.text().trim() : "";
                }
                if (TextUtils.isEmpty(name)) {
                    Element titleEl = card.selectFirst(".module-poster-item-title, .module-card-item-title");
                    name = titleEl != null ? titleEl.text().trim() : "";
                }
                if (TextUtils.isEmpty(name)) continue;
                seen.put(id, true);
                String pic = "";
                Element img = card.selectFirst("img[data-original]");
                if (img != null) pic = img.attr("data-original");
                String remark = "";
                Element note = card.selectFirst(".module-item-note");
                if (note != null) remark = note.text().trim();
                list.add(new Vod(id, name, pic, remark));
            } catch (Exception ignored) {
            }
        }
        return list;
    }
}
