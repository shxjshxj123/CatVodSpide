.class public Lcom/thegrizzlylabs/sardineandroid/DavQuota;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final quotaAvailableBytes:J

.field private final quotaUsedBytes:J


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavQuota;->getAvailable(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavQuota;->quotaAvailableBytes:J

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavQuota;->getUsed(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavQuota;->quotaUsedBytes:J

    return-void
.end method

.method private getAvailable(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J
    .registers 6

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_10

    return-wide v1

    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_14

    :cond_27
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getQuotaAvailableBytes()Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_14

    :cond_2e
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getQuotaAvailableBytes()Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_14

    :cond_3d
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getQuotaAvailableBytes()Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;->getContent()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_55
    return-wide v1
.end method

.method private getUsed(Lcom/thegrizzlylabs/sardineandroid/model/Response;)J
    .registers 6

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_d

    return-wide v1

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_11

    :cond_24
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getQuotaUsedBytes()Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_11

    :cond_2b
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getQuotaUsedBytes()Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_11

    :cond_3a
    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getQuotaUsedBytes()Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;->getContent()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_52
    return-wide v1
.end method


# virtual methods
.method public getQuotaAvailableBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavQuota;->quotaAvailableBytes:J

    return-wide v0
.end method

.method public getQuotaUsedBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavQuota;->quotaUsedBytes:J

    return-wide v0
.end method
