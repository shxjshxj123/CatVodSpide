.class Lorg/simpleframework/xml/stream/StreamReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "SourceFile"


# instance fields
.field private final text:Lcom/github/catvod/spider/merge/z/b;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/z/d;)V
    .registers 2

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/z/d;->f()Lcom/github/catvod/spider/merge/z/b;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Lcom/github/catvod/spider/merge/z/b;

    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Lcom/github/catvod/spider/merge/z/b;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Lcom/github/catvod/spider/merge/z/b;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge/z/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isText()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
