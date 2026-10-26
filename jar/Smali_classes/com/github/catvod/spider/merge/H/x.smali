.class public final Lcom/github/catvod/spider/merge/H/x;
.super Lcom/github/catvod/spider/merge/H/t0;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/t0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/github/catvod/spider/merge/H/x;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/H/m;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/H/t0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    iput p2, p0, Lcom/github/catvod/spider/merge/H/x;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final d(II)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/x;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "epsilon"

    return-object v0
.end method
