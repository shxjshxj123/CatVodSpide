.class public final Lcom/github/catvod/spider/merge/H/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/H/C;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/H/I;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/github/catvod/spider/merge/G/t;)V
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/H/I;->a:I

    iput v0, p1, Lcom/github/catvod/spider/merge/G/t;->o:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/H/I;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/github/catvod/spider/merge/H/I;->a:I

    check-cast p1, Lcom/github/catvod/spider/merge/H/I;

    iget p1, p1, Lcom/github/catvod/spider/merge/H/I;->a:I

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    iget v2, p0, Lcom/github/catvod/spider/merge/H/I;->a:I

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/I;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mode(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
