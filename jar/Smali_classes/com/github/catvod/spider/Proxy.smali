.class public Lcom/github/catvod/spider/Proxy;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# static fields
.field private static a:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    return-void
.end method

.method public static getUrl()Ljava/lang/String;
    .registers 4

    .line 1
    sget v0, Lcom/github/catvod/spider/Proxy;->a:I

    const-string v1, "http://127.0.0.1:"

    if-lez v0, :cond_7

    goto :goto_48

    :cond_7
    const/16 v0, 0x26fa

    :goto_9
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/proxy?do=ck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/k/b;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found local server port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    sput v0, Lcom/github/catvod/spider/Proxy;->a:I

    goto :goto_48

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2
    :cond_48
    :goto_48
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    sget v1, Lcom/github/catvod/spider/Proxy;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static proxy(Ljava/util/Map;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "do"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_66

    goto :goto_37

    :sswitch_17
    const-string v1, "ali"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v5, 0x2

    goto :goto_37

    :sswitch_22
    const-string v1, "ck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v5, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v1, "webdav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    packed-switch v5, :pswitch_data_74

    const/4 p0, 0x0

    return-object p0

    :pswitch_3c
    invoke-static {p0}, Lcom/github/catvod/spider/Ali;->proxy(Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_41
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    const-string v0, "text/plain; charset=utf-8"

    aput-object v0, p0, v3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "ok"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v0, p0, v2

    return-object p0

    :pswitch_60
    invoke-static {p0}, Lcom/github/catvod/spider/WebDAV;->vod(Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_66
    .sparse-switch
        -0x2f31f83b -> :sswitch_2d
        0xc68 -> :sswitch_22
        0x1799e -> :sswitch_17
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_60
        :pswitch_41
        :pswitch_3c
    .end packed-switch
.end method
