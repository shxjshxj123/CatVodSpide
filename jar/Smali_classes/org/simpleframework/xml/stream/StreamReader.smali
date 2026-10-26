.class Lorg/simpleframework/xml/stream/StreamReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private reader:Lcom/github/catvod/spider/merge/y/e;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/y/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Lcom/github/catvod/spider/merge/y/e;

    return-void
.end method

.method private attribute(Lcom/github/catvod/spider/merge/z/a;)Lorg/simpleframework/xml/stream/StreamReader$Entry;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;-><init>(Lcom/github/catvod/spider/merge/z/a;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .registers 5

    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/z/a;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/StreamReader;->attribute(Lcom/github/catvod/spider/merge/z/a;)Lorg/simpleframework/xml/stream/StreamReader$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;->isReserved()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1e
    return-object p1
.end method

.method private end()Lorg/simpleframework/xml/stream/StreamReader$End;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/StreamReader$End;-><init>(Lorg/simpleframework/xml/stream/StreamReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Lcom/github/catvod/spider/merge/y/e;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/y/e;->a()Lcom/github/catvod/spider/merge/z/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/d;->h()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/d;->c()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->start(Lcom/github/catvod/spider/merge/z/d;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/d;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->text(Lcom/github/catvod/spider/merge/z/d;)Lorg/simpleframework/xml/stream/StreamReader$Text;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->end()Lorg/simpleframework/xml/stream/StreamReader$End;

    move-result-object v0

    return-object v0

    :cond_2d
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    return-object v0

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method private start(Lcom/github/catvod/spider/merge/z/d;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;-><init>(Lcom/github/catvod/spider/merge/z/d;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object p1

    return-object p1

    :cond_10
    return-object v0
.end method

.method private text(Lcom/github/catvod/spider/merge/z/d;)Lorg/simpleframework/xml/stream/StreamReader$Text;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Text;-><init>(Lcom/github/catvod/spider/merge/z/d;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_c

    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :goto_c
    return-object v0
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
