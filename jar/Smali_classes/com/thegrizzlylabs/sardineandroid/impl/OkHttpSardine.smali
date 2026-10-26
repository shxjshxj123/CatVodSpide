.class public Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/thegrizzlylabs/sardineandroid/Sardine;


# instance fields
.field private client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private addCustomProperties(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Prop;",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/x/a;

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1c
    return-void
.end method

.method private addLockTokenToHeaders(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> (<"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "If"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method private execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Request;",
            "Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;->handleResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private execute(Lokhttp3/Request;)V
    .registers 3

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method

.method private put(Ljava/lang/String;Lokhttp3/RequestBody;)V
    .registers 4

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->put(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/Headers;)V

    return-void
.end method

.method private put(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/Headers;)V
    .registers 5

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;)V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->copy(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "COPY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DESTINATION"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p3, :cond_23

    const-string p2, "T"

    goto :goto_25

    :cond_23
    const-string p2, "F"

    :goto_25
    const-string p3, "OVERWRITE"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;)V

    return-void
.end method

.method public createDirectory(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "MKCOL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;)V

    return-void
.end method

.method public disableCompression()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public enableCompression()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "Depth"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "PROPFIND"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ExistsResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ExistsResponseHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    invoke-static {p2}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->get(Ljava/lang/String;Lokhttp3/Headers;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lokhttp3/Headers;)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/InputStreamResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/InputStreamResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method public getAcl(Ljava/lang/String;)Lcom/thegrizzlylabs/sardineandroid/DavAcl;
    .registers 5

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Owner;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Owner;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setOwner(Lcom/thegrizzlylabs/sardineandroid/model/Owner;)V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Group;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setGroup(Lcom/thegrizzlylabs/sardineandroid/model/Group;)V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Acl;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Acl;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setAcl(Lcom/thegrizzlylabs/sardineandroid/model/Acl;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    const-string v1, "text/xml"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Depth"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "PROPFIND"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 p1, 0x0

    return-object p1

    :cond_65
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/DavAcl;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    invoke-direct {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavAcl;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    return-object v0
.end method

.method public getPrincipalCollectionSet(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setPrincipalCollectionSet(Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    const-string v1, "text/xml"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Depth"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "PROPFIND"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 p1, 0x0

    return-object p1

    :cond_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_78
    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v3

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getPrincipalCollectionSet()Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;

    move-result-object v3

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getPrincipalCollectionSet()Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;->getHref()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getPrincipalCollectionSet()Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/PrincipalCollectionSet;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_b2
    return-object v0
.end method

.method public getPrincipals(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    const-string v1, "text/xml"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Depth"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "PROPFIND"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 p1, 0x0

    return-object p1

    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_56

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getPropstat()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_70
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v4

    if-eqz v4, :cond_70

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object v4

    if-eqz v4, :cond_70

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getResourcetype()Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    move-result-object v4

    invoke-virtual {v4}, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;->getPrincipal()Lcom/thegrizzlylabs/sardineandroid/model/Principal;

    move-result-object v4

    if-eqz v4, :cond_70

    new-instance v4, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;

    sget-object v5, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;->HREF:Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getHref()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Propstat;->getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getDisplayname()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/thegrizzlylabs/sardineandroid/DavPrincipal;-><init>(Lcom/thegrizzlylabs/sardineandroid/DavPrincipal$PrincipalType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_b1
    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)Lcom/thegrizzlylabs/sardineandroid/DavQuota;
    .registers 5

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setQuotaAvailableBytes(Lcom/thegrizzlylabs/sardineandroid/model/QuotaAvailableBytes;)V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->setQuotaUsedBytes(Lcom/thegrizzlylabs/sardineandroid/model/QuotaUsedBytes;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    const-string v1, "text/xml"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Depth"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "PROPFIND"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 p1, 0x0

    return-object p1

    :cond_5d
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/DavQuota;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    invoke-direct {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/DavQuota;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ignoreCookies()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-direct {p0, v1, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->addCustomProperties(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;IZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_14

    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {p3}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;-><init>()V

    invoke-virtual {p3, v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setAllprop(Lcom/thegrizzlylabs/sardineandroid/model/Allprop;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public lock(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->lock(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lock(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Lockinfo;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Lockinfo;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;-><init>()V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Exclusive;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Exclusive;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;->setExclusive(Lcom/thegrizzlylabs/sardineandroid/model/Exclusive;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Lockinfo;->setLockscope(Lcom/thegrizzlylabs/sardineandroid/model/Lockscope;)V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Locktype;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Locktype;-><init>()V

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Write;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Write;-><init>()V

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Locktype;->setWrite(Lcom/thegrizzlylabs/sardineandroid/model/Write;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Lockinfo;->setLocktype(Lcom/thegrizzlylabs/sardineandroid/model/Locktype;)V

    const-string v1, "text/xml"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "LOCK"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-lez p2, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Timeout"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_5a
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/LockResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/LockResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->move(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->move(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "MOVE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DESTINATION"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    if-eqz p3, :cond_27

    const-string p3, "T"

    goto :goto_29

    :cond_27
    const-string p3, "F"

    :goto_29
    const-string v1, "OVERWRITE"

    invoke-virtual {v0, v1, p3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    if-eqz p4, :cond_33

    invoke-direct {p0, v0, p2, p4}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->addLockTokenToHeaders(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;)V

    return-void
.end method

.method public patch(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propertyupdate;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propertyupdate;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Set;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Set;-><init>()V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propertyupdate;->getRemoveOrSet()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-virtual {v2}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v2}, Lcom/thegrizzlylabs/sardineandroid/model/Set;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/model/Remove;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/model/Remove;-><init>()V

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propertyupdate;->getRemoveOrSet()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_39
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/x/a;

    invoke-static {v3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_4d
    invoke-virtual {p2, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Remove;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    const-string p2, "text/xml"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p3, "PROPPATCH"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public patch(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/github/catvod/spider/merge/x/a;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/github/catvod/spider/merge/x/a;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/x/a;

    invoke-static {v2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Lcom/github/catvod/spider/merge/x/a;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_30
    invoke-virtual {p0, p1, v0, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->patch(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/thegrizzlylabs/sardineandroid/model/Propfind;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    const-string v0, "text/xml"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-gez p2, :cond_1c

    const-string p2, "infinity"

    goto :goto_20

    :cond_1c
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_20
    const-string v0, "Depth"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "PROPFIND"

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public propfind(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/x/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-direct {p0, v1, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->addCustomProperties(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    :goto_8
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance p3, Lokhttp3/Headers$Builder;

    invoke-direct {p3}, Lokhttp3/Headers$Builder;-><init>()V

    if-eqz p4, :cond_1a

    const-string p4, "Expect"

    const-string v0, "100-Continue"

    invoke-virtual {p3, p4, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_1a
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_23

    invoke-direct {p0, p3, p1, p5}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->addLockTokenToHeaders(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-virtual {p3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->put(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/Headers;)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->put(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 4

    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    :goto_8
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->put(Ljava/lang/String;Lokhttp3/RequestBody;)V

    return-void
.end method

.method public refreshLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "LOCK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> (<"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "If"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/LockResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/LockResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public report(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/report/SardineReport;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lcom/thegrizzlylabs/sardineandroid/report/SardineReport<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "text/xml"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p3}, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;->toXml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-gez p2, :cond_1c

    const-string p2, "infinity"

    goto :goto_20

    :cond_1c
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_20
    const-string v1, "Depth"

    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "REPORT"

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-virtual {p3, p1}, Lcom/thegrizzlylabs/sardineandroid/report/SardineReport;->fromMultistatus(Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/SearchRequest;

    invoke-direct {v0, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/model/SearchRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "text/xml"

    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p3, "SEARCH"

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public setAcl(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavAce;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Acl;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Acl;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Acl;->setAce(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/DavAce;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->getInherited()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_11

    :cond_2a
    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/DavAce;->toModel()Lcom/thegrizzlylabs/sardineandroid/model/Ace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Acl;->getAce()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_36
    const-string p2, "text/xml"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "ACL"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->setCredentials(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-eqz p3, :cond_11

    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;

    invoke-direct {p3, p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;-><init>(Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_19

    :cond_11
    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/impl/BasicAuthenticator;

    invoke-direct {p3, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/BasicAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    :goto_19
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setCustomProps(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toQName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toQName(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "UNLOCK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Lock-Token"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/VoidResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method
