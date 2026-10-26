.class public Lcom/github/catvod/spider/merge/H/m0;
.super Lcom/github/catvod/spider/merge/H/t0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/github/catvod/spider/merge/J/k;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/J/k;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/t0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    if-nez p2, :cond_10

    .line 1
    new-instance p2, Lcom/github/catvod/spider/merge/J/k;

    const/4 p1, 0x0

    new-array v0, p1, [I

    invoke-direct {p2, v0}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    .line 2
    :cond_10
    iput-object p2, p0, Lcom/github/catvod/spider/merge/H/m0;->b:Lcom/github/catvod/spider/merge/J/k;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public final c()Lcom/github/catvod/spider/merge/J/k;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/m0;->b:Lcom/github/catvod/spider/merge/J/k;

    return-object v0
.end method

.method public d(II)Z
    .registers 3

    iget-object p2, p0, Lcom/github/catvod/spider/merge/H/m0;->b:Lcom/github/catvod/spider/merge/J/k;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/J/k;->d(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/m0;->b:Lcom/github/catvod/spider/merge/J/k;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/J/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
