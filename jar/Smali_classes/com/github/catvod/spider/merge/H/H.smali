.class public final Lcom/github/catvod/spider/merge/H/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge/H/C;


# instance fields
.field private final a:I

.field private final b:Lcom/github/catvod/spider/merge/H/C;


# direct methods
.method public constructor <init>(ILcom/github/catvod/spider/merge/H/C;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/H/H;->a:I

    iput-object p2, p0, Lcom/github/catvod/spider/merge/H/H;->b:Lcom/github/catvod/spider/merge/H/C;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/github/catvod/spider/merge/G/t;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/H;->b:Lcom/github/catvod/spider/merge/H/C;

    invoke-interface {v0, p1}, Lcom/github/catvod/spider/merge/H/C;->b(Lcom/github/catvod/spider/merge/G/t;)V

    return-void
.end method

.method public final c()Lcom/github/catvod/spider/merge/H/C;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/H;->b:Lcom/github/catvod/spider/merge/H/C;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/H;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge/H/H;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/H/H;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/H;->a:I

    iget v3, p1, Lcom/github/catvod/spider/merge/H/H;->a:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/H;->b:Lcom/github/catvod/spider/merge/H/C;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/H;->b:Lcom/github/catvod/spider/merge/H/C;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/H/H;->a:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/H/H;->b:Lcom/github/catvod/spider/merge/H/C;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->l(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method
