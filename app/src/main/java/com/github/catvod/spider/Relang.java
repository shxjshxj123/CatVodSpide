package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Relang extends Spider {

    private final String url = "https://ceiling.dwalifqy.cc/";
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
        classes.add(new Class("explore", "热门精选"));
        classes.add(new Class("rank", "排行榜"));
        classes.add(new Class("tag/热浪短剧", "热浪短剧"));
        classes.add(new Class("tag/古装", "古装"));
        classes.add(new Class("tag/穿越", "穿越"));
        classes.add(new Class("tag/民国", "民国"));

        List<Vod> list = new ArrayList<>();
        String html = fetch(url + "explore-drama/");
        JSONArray flat = parseFlat(extractNuxtData(html));
        if (flat != null) addVods(list, flat);
        return Result.string(classes, list);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        String target;
        if ("rank".equals(tid)) target = url + "rank-drama/?page=" + pg;
        else if (tid.startsWith("tag/")) target = url + "tag/" + tid.substring(4) + "/?page=" + pg;
        else target = url + "explore-drama/?page=" + pg;

        List<Vod> list = new ArrayList<>();
        JSONArray flat = parseFlat(extractNuxtData(fetch(target)));
        if (flat != null) addVods(list, flat);
        return Result.get().page().vod(list).string();
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        String id = ids.get(0).replaceAll("[^0-9]", "");
        String target = url + "drama-detail/" + id + "/";
        String html = fetch(target);
        JSONArray flat = parseFlat(extractNuxtData(html));

        String name = "";
        String pic = "";
        String desc = "";
        int epCount = 0;

        if (flat != null) {
            name = resolveKey(flat, "title");
            pic = resolveKey(flat, "cover");
            if (TextUtils.isEmpty(pic)) pic = resolveKey(flat, "share_cover");
            desc = resolveKey(flat, "description");
            epCount = resolveKeyInt(flat, "episodes");
            if (epCount == 0) epCount = 1;
        }

        List<String> episodes = new ArrayList<>();
        for (int ep = 1; ep <= epCount; ep++) {
            episodes.add("第" + ep + "集$" + id + "|" + ep);
        }

        Vod vod = new Vod();
        vod.setVodId(id);
        vod.setVodName(TextUtils.isEmpty(name) ? ("热浪短剧" + id) : name);
        vod.setVodPic(pic);
        vod.setVodContent(desc);
        vod.setTypeName("热浪短剧");
        vod.setVodRemarks(epCount + "集");
        vod.setVodPlayFrom("热浪短剧");
        vod.setVodPlayUrl(TextUtils.join("#", episodes));
        return Result.string(vod);
    }

    private int resolveKeyInt(JSONArray flat, String key) {
        for (int i = 0; i < flat.length(); i++) {
            try {
                Object o = flat.get(i);
                if (!(o instanceof JSONObject)) continue;
                JSONObject obj = (JSONObject) o;
                if (!obj.has(key)) continue;
                Object val = obj.opt(key);
                if (val instanceof JSONArray) return ((JSONArray) val).length();
                if (val instanceof Integer) {
                    int idx = (Integer) val;
                    if (idx >= 0 && idx < flat.length() && flat.get(idx) instanceof JSONArray) {
                        return ((JSONArray) flat.get(idx)).length();
                    }
                    return 0;
                }
            } catch (Exception ignored) {
            }
        }
        return 0;
    }

    private String extractEpisodeM3u8(String epUrl, String vid) throws Exception {
        String epHtml = fetch(epUrl);
        JSONArray epFlat = parseFlat(extractNuxtData(epHtml));
        if (epFlat != null) {
            String m3u8 = resolveKey(epFlat, "video_url");
            if (!TextUtils.isEmpty(m3u8)) return m3u8;
        }
        return extractM3u8(epHtml);
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
        String target = url + "search/?word=" + key + "&page=" + pg;
        JSONArray flat = parseFlat(extractNuxtData(fetch(target)));
        if (flat != null) addVods(list, flat);
        return Result.get().page().vod(list).string();
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        String[] parts = id.split("\\|");
        String vodId = parts[0];
        int epNum = parts.length > 1 ? parseInt(parts[1]) : 1;
        String epUrl = epNum == 1
                ? url + "drama/video/" + vodId + "/"
                : url + "drama/video/" + vodId + "/ep-" + epNum + "/";
        String m3u8 = extractEpisodeM3u8(epUrl, vodId);
        HashMap<String, String> playHeaders = new HashMap<>();
        playHeaders.put("User-Agent", headers.get("User-Agent"));
        playHeaders.put("Referer", url);
        return Result.get().url(m3u8).header(playHeaders).string();
    }

    private int parseInt(String s) {
        try {
            return Integer.parseInt(s);
        } catch (Exception e) {
            return 1;
        }
    }

    private void addVods(List<Vod> list, JSONArray flat) {
        for (int i = 0; i < flat.length(); i++) {
            try {
                Object o = flat.get(i);
                if (!(o instanceof JSONObject)) continue;
                JSONObject item = (JSONObject) o;
                if (!item.has("video_id")) continue;
                String id = resolveRef(flat, item.opt("video_id"));
                if (TextUtils.isEmpty(id)) continue;
                String name = resolveRef(flat, item.opt("title"));
                String pic = resolveRef(flat, item.opt("cover"));
                String remark = resolveRef(flat, item.opt("serialize_status_text"));
                list.add(new Vod(id, TextUtils.isEmpty(name) ? ("热浪短剧" + id) : name, pic, remark));
            } catch (Exception ignored) {
            }
        }
    }

    private String resolveKey(JSONArray flat, String key) {
        for (int i = 0; i < flat.length(); i++) {
            try {
                Object o = flat.get(i);
                if (!(o instanceof JSONObject)) continue;
                JSONObject obj = (JSONObject) o;
                if (!obj.has(key)) continue;
                return resolveRef(flat, obj.opt(key));
            } catch (Exception ignored) {
            }
        }
        return "";
    }

    private String resolveRef(JSONArray flat, Object val) {
        try {
            Object cur = val;
            int depth = 0;
            while (cur instanceof Integer && depth < 5) {
                int idx = (Integer) cur;
                if (idx < 0 || idx >= flat.length()) break;
                cur = flat.get(idx);
                depth++;
            }
            if (cur instanceof String) return ((String) cur).replace("\\u002F", "/");
            if (cur instanceof Number) return cur.toString();
        } catch (Exception ignored) {
        }
        return "";
    }

    private JSONArray parseFlat(String nuxt) {
        if (TextUtils.isEmpty(nuxt)) return null;
        try {
            return new JSONArray(nuxt);
        } catch (Exception e) {
            return null;
        }
    }

    private String fetch(String path) throws Exception {
        return OkHttp.string(path, headers);
    }

    private String extractNuxtData(String html) {
        int start = html.indexOf("id=\"__NUXT_DATA__\">");
        if (start < 0) return "";
        start += "id=\"__NUXT_DATA__\">".length();
        int end = html.indexOf("</script>", start);
        if (end < 0) end = html.length();
        return html.substring(start, end).trim();
    }

    private String extractM3u8(String html) {
        int i = html.indexOf(".m3u8");
        if (i < 0) return "";
        int s = i;
        int e = i;
        while (s > 0 && html.charAt(s) != '"' && html.charAt(s) != '(' && html.charAt(s) != '{') s--;
        while (e < html.length() && html.charAt(e) != '"' && html.charAt(e) != ')' && html.charAt(e) != ',' && html.charAt(e) != '}') e++;
        if (s == i) return "";
        return html.substring(s, e + (html.charAt(e) == '"' ? 1 : 0)).replaceAll("\"", "").replace("\\u002F", "/").trim();
    }
}
