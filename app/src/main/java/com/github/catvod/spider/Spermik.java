package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Spermik extends Spider {

    private final String url = "https://www.spermik.com/";
    private HashMap<String, String> headers;

    @Override
    public void init(Context context, String extend) {
        headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36");
        headers.put("Referer", url);
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Class> classes = new ArrayList<>();
        classes.add(new Class("/xndj/1.html", "重生"));
        classes.add(new Class("/xndj/2.html", "穿越"));
        classes.add(new Class("/xndj/3.html", "爽剧"));
        classes.add(new Class("/xndj/4.html", "言情"));
        classes.add(new Class("/xndj/5.html", "都市"));
        classes.add(new Class("/xndj/6.html", "古装"));
        classes.add(new Class("/xndj/7.html", "悬疑"));
        classes.add(new Class("/xndj/8.html", "剧情"));

        List<Vod> list = new ArrayList<>();
        Document doc = fetch("/");
        for (Element li : doc.select("li.stui-vodlist__item")) {
            Vod vod = parseItem(li);
            if (vod != null) list.add(vod);
        }
        return Result.string(classes, list);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        List<Vod> list = new ArrayList<>();
        String target = tid.endsWith(".html") ? tid : "/xndj/" + tid + ".html";
        if (pg == null || pg.isEmpty() || "1".equals(pg)) {
            // 首页 URL 不带页码后缀
        } else {
            target = target.replaceAll("\\.html$", "") + "-" + pg + ".html";
        }
        Document doc = fetch(target);
        for (Element li : doc.select("li.stui-vodlist__item")) {
            Vod vod = parseItem(li);
            if (vod != null) list.add(vod);
        }
        return Result.get().page().vod(list).string();
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        String id = ids.get(0);
        String vodId = id.replaceFirst("^/xiniuduanju/", "").replaceFirst("\\.html$", "");
        Document doc = fetch("/xiniuduanju/" + vodId + ".html");

        Vod vod = new Vod();
        vod.setVodId("/xiniuduanju/" + vodId + ".html");
        Element titleEl = doc.selectFirst("h3.title");
        vod.setVodName(titleEl == null ? "" : titleEl.text().trim());
        Element picMeta = doc.selectFirst("meta[property=og:image]");
        vod.setVodPic(picMeta == null ? "" : picMeta.attr("content"));
        vod.setTypeName(attr(doc, "meta[property=og:video:class]"));
        vod.setVodArea(attr(doc, "meta[property=og:video:area]"));
        vod.setVodDirector(attr(doc, "meta[property=og:video:director]"));
        vod.setVodActor(attr(doc, "meta[property=og:video:actor]"));

        Element yearEl = doc.select("p.data").stream()
                .filter(el -> el.text().contains("年份："))
                .findFirst().orElse(null);
        if (yearEl != null) {
            vod.setVodYear(yearEl.text().replace("年份：", "").trim());
        }

        Element descEl = doc.selectFirst(".stui-content__desc");
        if (descEl != null) vod.setVodContent(descEl.text().trim());

        vod.setVodPlayFrom("犀牛短剧");
        vod.setVodPlayUrl("播放$" + vodId);
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
        List<Vod> list = new ArrayList<>();
        String target = "/search.php?searchword=" + URLEncoder.encode(key, "UTF-8") + "&page=" + pg;
        Document doc = fetch(target);
        for (Element li : doc.select("li.stui-vodlist__item")) {
            Vod vod = parseItem(li);
            if (vod != null) list.add(vod);
        }
        return Result.get().page().vod(list).string();
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        String vodId = id.replaceFirst("^/xiniuduanju/", "").replaceFirst("\\.html$", "");
        Document doc = fetch("/play/" + vodId + "-0-0.html");
        Element iframe = doc.selectFirst("mip-iframe[src*=player]");
        String src = iframe == null ? "" : iframe.attr("src");
        String m3u8 = "";
        if (src.contains("url=")) {
            m3u8 = src.substring(src.indexOf("url=") + 4);
        }
        if (TextUtils.isEmpty(m3u8)) {
            java.util.regex.Matcher m = java.util.regex.Pattern.compile("url=([^\"]+\\.(?:m3u8|mp4))").matcher(src);
            if (m.find()) m3u8 = m.group(1);
        }
        HashMap<String, String> playHeaders = new HashMap<>();
        playHeaders.put("User-Agent", headers.get("User-Agent"));
        playHeaders.put("Referer", url);
        return Result.get().parse().url(m3u8).header(playHeaders).string();
    }

    private String attr(Document doc, String selector) {
        Element el = doc.selectFirst(selector);
        return el == null ? "" : el.attr("content");
    }

    private Document fetch(String path) throws Exception {
        String target = path.startsWith("http") ? path : url + path.substring(1);
        return Jsoup.parse(OkHttp.string(target, headers));
    }

    private Vod parseItem(Element li) {
        Element thumb = li.selectFirst("a.stui-vodlist__thumb");
        if (thumb == null) return null;
        String id = thumb.attr("href");
        String name = thumb.attr("title");
        if (TextUtils.isEmpty(name)) {
            Element titleLink = li.selectFirst("h4.stui-vodlist__title a");
            name = titleLink == null ? "" : titleLink.text().trim();
        }
        if (TextUtils.isEmpty(name)) return null;
        Element imgEl = li.selectFirst("mip-img");
        String pic = imgEl == null ? "" : imgEl.attr("src");
        Element markEl = li.selectFirst("span.pic-text");
        String mark = markEl == null ? "" : markEl.text().trim();
        return new Vod(id, name, pic, mark);
    }
}
