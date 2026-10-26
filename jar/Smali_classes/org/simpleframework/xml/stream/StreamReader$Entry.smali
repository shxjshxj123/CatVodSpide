.class Lorg/simpleframework/xml/stream/StreamReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "SourceFile"


# instance fields
.field private final entry:Lcom/github/catvod/spider/merge/z/a;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/z/a;)V
    .registers 2

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventAttribute;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Lcom/github/catvod/spider/merge/z/a;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Lcom/github/catvod/spider/merge/z/a;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/a;->getName()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/x/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Lcom/github/catvod/spider/merge/z/a;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/a;->getName()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/x/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Lcom/github/catvod/spider/merge/z/a;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/a;->getName()Lcom/github/catvod/spider/merge/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/x/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Lcom/github/catvod/spider/merge/z/a;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Lcom/github/catvod/spider/merge/z/a;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/a;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReserved()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
