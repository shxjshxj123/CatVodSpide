.class public final Lcom/github/catvod/spider/merge/H/q;
.super Lcom/github/catvod/spider/merge/H/t0;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/t0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    iput p2, p0, Lcom/github/catvod/spider/merge/H/q;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public final c()Lcom/github/catvod/spider/merge/J/k;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/H/q;->b:I

    new-instance v1, Lcom/github/catvod/spider/merge/J/k;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    return-object v1
.end method

.method public final d(II)Z
    .registers 3

    iget p2, p0, Lcom/github/catvod/spider/merge/H/q;->b:I

    if-ne p2, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/q;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
