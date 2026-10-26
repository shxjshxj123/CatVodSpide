.class Lorg/simpleframework/xml/stream/StreamReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "SourceFile"


# instance fields
.field private final element:Lcom/github/catvod/spider/merge/z/c;

.field private final location:Lcom/github/catvod/spider/merge/y/d;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/z/d;)V
    .registers 3

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/z/d;->d()Lcom/github/catvod/spider/merge/z/c;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Lcom/github/catvod/spider/merge/z/c;

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/z/d;->e()Lcom/github/catvod/spider/merge/y/d;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->location:Lcom/github/catvod/spider/merge/y/d;

    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/catvod/spider/merge/z/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Lcom/github/catvod/spider/merge/z/c;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/c;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLine()I
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->location:Lcom/github/catvod/spider/merge/y/d;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/y/d;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Lcom/github/catvod/spider/merge/z/c;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/c;->getName()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/x/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Lcom/github/catvod/spider/merge/z/c;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/c;->getName()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/x/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Lcom/github/catvod/spider/merge/z/c;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/c;->getName()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/x/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Lcom/github/catvod/spider/merge/z/c;

    return-object v0
.end method
