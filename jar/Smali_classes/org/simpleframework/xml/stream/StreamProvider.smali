.class Lorg/simpleframework/xml/stream/StreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field private final factory:Lcom/github/catvod/spider/merge/y/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/merge/y/f;->c()Lcom/github/catvod/spider/merge/y/f;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamProvider;->factory:Lcom/github/catvod/spider/merge/y/f;

    return-void
.end method

.method private provide(Lcom/github/catvod/spider/merge/y/e;)Lorg/simpleframework/xml/stream/EventReader;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader;-><init>(Lcom/github/catvod/spider/merge/y/e;)V

    return-object v0
.end method


# virtual methods
.method public provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;
    .registers 2

    iget-object p1, p0, Lorg/simpleframework/xml/stream/StreamProvider;->factory:Lcom/github/catvod/spider/merge/y/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/y/f;->b()Lcom/github/catvod/spider/merge/y/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/StreamProvider;->provide(Lcom/github/catvod/spider/merge/y/e;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object p1

    return-object p1
.end method

.method public provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .registers 2

    iget-object p1, p0, Lorg/simpleframework/xml/stream/StreamProvider;->factory:Lcom/github/catvod/spider/merge/y/f;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/y/f;->a()Lcom/github/catvod/spider/merge/y/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/StreamProvider;->provide(Lcom/github/catvod/spider/merge/y/e;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object p1

    return-object p1
.end method
