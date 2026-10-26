.class Lorg/simpleframework/xml/stream/PullProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field private final factory:Lcom/github/catvod/spider/merge/n0/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/merge/n0/b;->a()Lcom/github/catvod/spider/merge/n0/b;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lcom/github/catvod/spider/merge/n0/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/n0/b;->c()V

    return-void
.end method


# virtual methods
.method public provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lcom/github/catvod/spider/merge/n0/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/n0/b;->b()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_c
    new-instance p1, Lorg/simpleframework/xml/stream/PullReader;

    invoke-direct {p1, v0}, Lorg/simpleframework/xml/stream/PullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p1
.end method

.method public provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullProvider;->factory:Lcom/github/catvod/spider/merge/n0/b;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/n0/b;->b()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :cond_b
    new-instance p1, Lorg/simpleframework/xml/stream/PullReader;

    invoke-direct {p1, v0}, Lorg/simpleframework/xml/stream/PullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p1
.end method
