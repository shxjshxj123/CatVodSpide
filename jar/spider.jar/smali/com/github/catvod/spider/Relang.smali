.class public Lcom/github/catvod/spider/Relang;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/Relang;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Ljava/util/List;Lorg/json/JSONArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/c/i;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    const-string v0, "video_id"

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_76

    :try_start_9
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_12

    goto :goto_73

    :cond_12
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_73

    :cond_1b
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/github/catvod/spider/Relang;->h(Lorg/json/JSONArray;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_73

    :cond_2a
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/github/catvod/spider/Relang;->h(Lorg/json/JSONArray;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cover"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lcom/github/catvod/spider/Relang;->h(Lorg/json/JSONArray;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "serialize_status_text"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/github/catvod/spider/Relang;->h(Lorg/json/JSONArray;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5}, Lcom/github/catvod/spider/Relang;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/github/catvod/spider/merge/c/i;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u70ed\u6d6a\u77ed\u5267"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_65
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6c

    goto :goto_6d

    :cond_6c
    move-object v5, v6

    :goto_6d
    invoke-direct {v7, v3, v4, v5, v2}, Lcom/github/catvod/spider/merge/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_73

    :catch_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_76
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c9

    const-string v3, "data:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_c9

    :cond_16
    iget-object v3, v0, Lcom/github/catvod/spider/Relang;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_21

    return-object v3

    :cond_21
    :try_start_21
    invoke-direct/range {p0 .. p1}, Lcom/github/catvod/spider/Relang;->c(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_c8

    array-length v4, v3

    if-nez v4, :cond_2c

    goto/16 :goto_c8

    :cond_2c
    array-length v4, v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_c8

    const-string v5, "image/jpeg"

    const-string v6, "image/png"

    const/16 v7, 0x50

    const/16 v8, 0xd8

    const/16 v9, 0x89

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/16 v12, 0xff

    const/4 v13, 0x0

    if-le v4, v10, :cond_59

    :try_start_3e
    aget-byte v4, v3, v13

    if-ne v4, v12, :cond_46

    aget-byte v4, v3, v11

    if-eq v4, v8, :cond_4e

    :cond_46
    aget-byte v4, v3, v13

    if-ne v4, v9, :cond_59

    aget-byte v4, v3, v11

    if-ne v4, v7, :cond_59

    :cond_4e
    aget-byte v1, v3, v13

    if-ne v1, v12, :cond_53

    goto :goto_54

    :cond_53
    move-object v5, v6

    :goto_54
    invoke-direct {v0, v3, v5}, Lcom/github/catvod/spider/Relang;->k([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_59
    const-string v4, "f5d965df75336270"

    invoke-direct {v0, v4}, Lcom/github/catvod/spider/Relang;->j(Ljava/lang/String;)[B

    move-result-object v4

    const-string v14, "97b60394abc2fbe1"

    invoke-direct {v0, v14}, Lcom/github/catvod/spider/Relang;->j(Ljava/lang/String;)[B

    move-result-object v14

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    .line 1
    array-length v7, v4

    const/16 v9, 0x10

    if-ne v7, v9, :cond_6d

    goto :goto_78

    :cond_6d
    new-array v7, v9, [B

    array-length v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v13, v7, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v7

    :goto_78
    const-string v7, "AES"

    .line 2
    invoke-direct {v15, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 3
    array-length v7, v14

    if-ne v7, v9, :cond_83

    goto :goto_8e

    :cond_83
    new-array v7, v9, [B

    array-length v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v14, v13, v7, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v14, v7

    .line 4
    :goto_8e
    invoke-direct {v4, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v15, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v7, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 5
    array-length v4, v3

    if-le v4, v10, :cond_ad

    aget-byte v4, v3, v13

    if-ne v4, v12, :cond_ad

    aget-byte v4, v3, v11

    const/16 v7, 0xd8

    if-ne v4, v7, :cond_ad

    goto :goto_be

    :cond_ad
    array-length v4, v3

    const/4 v7, 0x4

    if-le v4, v7, :cond_be

    aget-byte v4, v3, v13

    const/16 v7, 0x89

    if-ne v4, v7, :cond_be

    aget-byte v4, v3, v11

    const/16 v7, 0x50

    if-ne v4, v7, :cond_be

    move-object v5, v6

    .line 6
    :cond_be
    :goto_be
    invoke-direct {v0, v3, v5}, Lcom/github/catvod/spider/Relang;->k([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/github/catvod/spider/Relang;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_c7} :catch_c8

    return-object v3

    :catch_c8
    :cond_c8
    :goto_c8
    return-object v2

    :cond_c9
    :goto_c9
    return-object v1
.end method

.method private c(Ljava/lang/String;)[B
    .registers 7

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/github/catvod/spider/Relang;->a:Ljava/util/HashMap;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a98

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2c

    const/4 p1, 0x0

    return-object p1

    :cond_2c
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_39
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_44

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_39

    :cond_44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "id=\"__NUXT_DATA__\">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_b

    const-string p1, ""

    return-object p1

    :cond_b
    add-int/lit8 v0, v0, 0x13

    const-string v1, "</script>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/Relang;->a:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    return-object v1
.end method

.method private g(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_10

    goto :goto_22

    :cond_10
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_22

    :cond_19
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/github/catvod/spider/Relang;->h(Lorg/json/JSONArray;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const-string p1, ""

    return-object p1
.end method

.method private h(Lorg/json/JSONArray;Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1f

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1f

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_18

    goto :goto_1f

    :cond_18
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    :goto_1f
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2e

    check-cast p2, Ljava/lang/String;

    const-string p1, "\\u002F"

    const-string v0, "/"

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    instance-of p1, p2, Ljava/lang/Number;

    if-eqz p1, :cond_37

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    return-object p1

    :catch_37
    :cond_37
    const-string p1, ""

    return-object p1
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://ceiling.dwalifqy.cc/search/?word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/Relang;->a(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 1
    :cond_2f
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 p2, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, v1, p2}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 3
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-object v0
.end method

.method private k([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";base64,"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p3, "rank"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://ceiling.dwalifqy.cc/rank-drama/?page="

    goto :goto_3a

    :cond_10
    const-string p3, "tag/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_33

    const-string p3, "https://ceiling.dwalifqy.cc/tag/"

    .line 1
    invoke-static {p3}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 p4, 0x4

    .line 2
    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/?page="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://ceiling.dwalifqy.cc/explore-drama/?page="

    :goto_3a
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5a

    invoke-direct {p0, p2, p1}, Lcom/github/catvod/spider/Relang;->a(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 3
    :cond_5a
    new-instance p1, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p1, p3, p3, p4, p3}, Lcom/github/catvod/spider/merge/c/f;->g(IIII)Lcom/github/catvod/spider/merge/c/f;

    .line 5
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/c/f;->s(Ljava/util/List;)Lcom/github/catvod/spider/merge/c/f;

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://ceiling.dwalifqy.cc/drama-detail/"

    const-string v3, "/"

    .line 1
    invoke-static {v1, p1, v3}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Relang;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Relang;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Relang;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_96

    const-string v2, "title"

    invoke-direct {p0, v1, v2}, Lcom/github/catvod/spider/Relang;->g(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "cover"

    invoke-direct {p0, v1, v4}, Lcom/github/catvod/spider/Relang;->g(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v4, "share_cover"

    invoke-direct {p0, v1, v4}, Lcom/github/catvod/spider/Relang;->g(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3e
    const-string v5, "description"

    invoke-direct {p0, v1, v5}, Lcom/github/catvod/spider/Relang;->g(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "episodes"

    const/4 v7, 0x0

    .line 3
    :goto_47
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_90

    :try_start_4d
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lorg/json/JSONObject;

    if-nez v9, :cond_56

    goto :goto_8d

    :cond_56
    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5f

    goto :goto_8d

    :cond_5f
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lorg/json/JSONArray;

    if-eqz v9, :cond_68

    goto :goto_86

    :cond_68
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_8d

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_90

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_90

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lorg/json/JSONArray;

    if-eqz v9, :cond_90

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    :goto_86
    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_8c} :catch_8d

    goto :goto_90

    :catch_8d
    :cond_8d
    :goto_8d
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_90
    :goto_90
    if-nez v0, :cond_93

    const/4 v0, 0x1

    :cond_93
    move-object v1, v2

    move-object v2, v4

    goto :goto_98

    :cond_96
    move-object v1, v2

    move-object v5, v1

    .line 4
    :goto_98
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/Relang;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a3

    move-object v2, v4

    :cond_a3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_a8
    if-gt v3, v0, :cond_d1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7b2c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\u96c6$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    :cond_d1
    new-instance v3, Lcom/github/catvod/spider/merge/c/i;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge/c/i;-><init>()V

    invoke-virtual {v3, p1}, Lcom/github/catvod/spider/merge/c/i;->h(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "\u70ed\u6d6a\u77ed\u5267"

    if-eqz v6, :cond_e5

    .line 5
    invoke-static {v7, p1}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_e5
    invoke-virtual {v3, v1}, Lcom/github/catvod/spider/merge/c/i;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/github/catvod/spider/merge/c/i;->j(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge/c/i;->f(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/github/catvod/spider/merge/c/i;->c(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/github/catvod/spider/merge/c/i;->m(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/github/catvod/spider/merge/c/i;->k(Ljava/lang/String;)V

    const-string p1, "#"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/github/catvod/spider/merge/c/i;->l(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/github/catvod/spider/merge/c/f;->i(Lcom/github/catvod/spider/merge/c/i;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 9

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "explore"

    const-string v2, "\u70ed\u95e8\u7cbe\u9009"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/catvod/spider/merge/c/a;

    const-string v1, "rank"

    const-string v2, "\u6392\u884c\u699c"

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x17

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u53e4\u88c5"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "\u7a7f\u8d8a"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v5, "\u6c11\u56fd"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "\u90fd\u5e02"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "\u6821\u56ed"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "\u590d\u4ec7"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "\u7384\u5e7b"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "\u60ac\u7591"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "\u9752\u6625"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "\u5b66\u751f"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "\u7cfb\u7edf"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "\u51fa\u8f68"

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-string v5, "\u4eba\u59bb"

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-string v5, "\u4e71\u4f26"

    aput-object v5, v1, v2

    const/16 v2, 0xe

    const-string v5, "\u60c5\u8272"

    aput-object v5, v1, v2

    const/16 v2, 0xf

    const-string v5, "\u8272\u60c5"

    aput-object v5, v1, v2

    const/16 v2, 0x10

    const-string v5, "\u5077\u60c5"

    aput-object v5, v1, v2

    const/16 v2, 0x11

    const-string v5, "AI\u77ed\u5267"

    aput-object v5, v1, v2

    const/16 v2, 0x12

    const-string v5, "AI\u6210\u4eba\u77ed\u5267"

    aput-object v5, v1, v2

    const/16 v2, 0x13

    const-string v5, "\u6210\u4eba"

    aput-object v5, v1, v2

    const/16 v2, 0x14

    const-string v5, "\u6210\u4eba\u77ed\u5267"

    aput-object v5, v1, v2

    const/16 v2, 0x15

    const-string v5, "\u8fde\u8f7d\u77ed\u5267"

    aput-object v5, v1, v2

    const/16 v2, 0x16

    const-string v5, "\u672b\u4e16"

    aput-object v5, v1, v2

    :goto_a4
    if-ge v4, v0, :cond_b9

    aget-object v2, v1, v4

    new-instance v5, Lcom/github/catvod/spider/merge/c/a;

    const-string v6, "tag/"

    .line 5
    invoke-static {v6, v2}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-direct {v5, v6, v2, v3}, Lcom/github/catvod/spider/merge/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    :cond_b9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "https://ceiling.dwalifqy.cc/explore-drama/"

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Relang;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Relang;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/Relang;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_d1

    invoke-direct {p0, v0, v1}, Lcom/github/catvod/spider/Relang;->a(Ljava/util/List;Lorg/json/JSONArray;)V

    :cond_d1
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/c/f;->l(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/Relang;->a:Ljava/util/HashMap;

    const-string p2, "User-Agent"

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/github/catvod/spider/Relang;->a:Ljava/util/HashMap;

    const-string p2, "Referer"

    const-string v0, "https://ceiling.dwalifqy.cc/"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "\\|"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p3, p1, p2

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    aget-object p1, p1, v1

    .line 1
    :try_start_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    :cond_14
    const/4 p1, 0x1

    :goto_15
    const-string v0, "https://ceiling.dwalifqy.cc/drama/video/"

    const-string v2, "/"

    if-ne p1, v1, :cond_20

    .line 2
    invoke-static {v0, p3, v2}, Lcom/github/catvod/spider/merge/b/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3a

    .line 3
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/ep-"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_3a
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/Relang;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/github/catvod/spider/Relang;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_56

    const-string v0, "video_url"

    invoke-direct {p0, p3, v0}, Lcom/github/catvod/spider/Relang;->g(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_c7

    :cond_56
    const-string p3, ".m3u8"

    .line 5
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const-string v0, ""

    if-gez p3, :cond_61

    goto :goto_a9

    :cond_61
    move v1, p3

    :goto_62
    const/16 v3, 0x22

    if-lez v1, :cond_7f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_7f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-eq v4, v5, :cond_7f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_7f

    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    :cond_7f
    move v4, p3

    :goto_80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_a7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_a7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_a7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_a7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_a7

    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    :cond_a7
    if-ne v1, p3, :cond_ab

    :goto_a9
    move-object p3, v0

    goto :goto_c7

    :cond_ab
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v3, :cond_b2

    const/4 p2, 0x1

    :cond_b2
    add-int/2addr v4, p2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\u002F"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6
    :goto_c7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/github/catvod/spider/Relang;->a:Ljava/util/HashMap;

    const-string v0, "User-Agent"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Referer"

    const-string v0, "https://ceiling.dwalifqy.cc/"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Lcom/github/catvod/spider/merge/c/f;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/c/f;-><init>()V

    .line 8
    invoke-virtual {p2, p3}, Lcom/github/catvod/spider/merge/c/f;->q(Ljava/lang/String;)Lcom/github/catvod/spider/merge/c/f;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/c/f;->c(Ljava/util/Map;)Lcom/github/catvod/spider/merge/c/f;

    .line 9
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string p2, "1"

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/Relang;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public searchContent(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/github/catvod/spider/Relang;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
