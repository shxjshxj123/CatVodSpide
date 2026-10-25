package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class Relang extends Spider {

    private final String url = "https://ceiling.dwalifqy.cc/";
    private HashMap<String, String> headers;

    // 站点硬编码的媒体加密 key/iv（JS 中 NUXT_PUBLIC_MEDIA_CRYPT_KEY/IV 未设置时的默认值）
    // 图片以 ASCII 码字节作为 AES-CBC 密钥
    private static final String MEDIA_KEY = "f5d965df75336270";
    private static final String MEDIA_IV = "97b60394abc2fbe1";

    private final ConcurrentHashMap<String, String> picCache = new ConcurrentHashMap<>();

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
        String[] tags = {"古装", "穿越", "民国", "都市", "校园", "复仇", "玄幻", "悬疑",
                "青春", "学生", "系统", "出轨", "人妻", "乱伦", "情色", "色情", "偷情",
                "AI短剧", "AI成人短剧", "成人", "成人短剧", "连载短剧", "末世"};
        for (String tag : tags) {
            classes.add(new Class("tag/" + tag, tag));
        }

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
        String decPic = decryptPic(pic);
        if (!TextUtils.isEmpty(decPic)) pic = decPic;

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
                String decPic = decryptPic(pic);
                list.add(new Vod(id, TextUtils.isEmpty(name) ? ("热浪短剧" + id) : name,
                        TextUtils.isEmpty(decPic) ? pic : decPic, remark));
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

    // 下载加密图片 -> AES-CBC 解密 -> 返回 data URI；失败返回空串
    private String decryptPic(String picUrl) {
        if (TextUtils.isEmpty(picUrl) || picUrl.startsWith("data:")) return picUrl;
        String cached = picCache.get(picUrl);
        if (cached != null) return cached;
        try {
            byte[] enc = downloadBytes(picUrl);
            if (enc == null || enc.length == 0) return "";
            // 若已是明文图片则直接返回
            if (enc.length > 3 && (enc[0] == 0xFF && enc[1] == 0xD8        // JPEG
                    || enc[0] == 0x89 && enc[1] == 'P')) {               // PNG
                return toDataUri(enc, enc[0] == 0xFF ? "image/jpeg" : "image/png");
            }
            byte[] key = toAsciiBytes(MEDIA_KEY);
            byte[] iv = toAsciiBytes(MEDIA_IV);
            SecretKeySpec keySpec = new SecretKeySpec(pad16(key), "AES");
            IvParameterSpec ivSpec = new IvParameterSpec(pad16(iv));
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
            byte[] dec = cipher.doFinal(enc);
            String mime = sniffMime(dec);
            String uri = toDataUri(dec, mime);
            picCache.put(picUrl, uri);
            return uri;
        } catch (Exception ignored) {
            return "";
        }
    }

    private byte[] downloadBytes(String picUrl) throws Exception {
        HttpURLConnection conn = (HttpURLConnection) new URL(picUrl).openConnection();
        conn.setRequestProperty("User-Agent", headers.get("User-Agent"));
        conn.setConnectTimeout(15000);
        conn.setReadTimeout(20000);
        int code = conn.getResponseCode();
        if (code != 200) return null;
        InputStream in = conn.getInputStream();
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
        in.close();
        conn.disconnect();
        return out.toByteArray();
    }

    // 将字符串每个字符的 ASCII 码作为字节（与 JS 端 charCodeAt 一致）
    private byte[] toAsciiBytes(String s) {
        byte[] out = new byte[s.length()];
        for (int i = 0; i < s.length(); i++) out[i] = (byte) (s.charAt(i) & 0xFF);
        return out;
    }

    // AES 需要 16/24/32 字节，不足 16 字节用 0 填充
    private byte[] pad16(byte[] in) {
        if (in.length == 16) return in;
        byte[] out = new byte[16];
        System.arraycopy(in, 0, out, 0, Math.min(in.length, 16));
        return out;
    }

    private String sniffMime(byte[] b) {
        if (b.length > 3 && b[0] == 0xFF && b[1] == 0xD8) return "image/jpeg";
        if (b.length > 4 && b[0] == 0x89 && b[1] == 'P') return "image/png";
        return "image/jpeg";
    }

    private String toDataUri(byte[] data, String mime) {
        return "data:" + mime + ";base64," + Base64.encodeToString(data, Base64.DEFAULT);
    }
}
