.class public final Lcom/github/catvod/spider/merge/H/j0;
.super Lcom/github/catvod/spider/merge/H/l0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge/H/l0;",
        "Ljava/lang/Comparable<",
        "Lcom/github/catvod/spider/merge/H/j0;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/H/l0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/H/l0;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    return-void
.end method


# virtual methods
.method public final c(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/D;",
            ")Z"
        }
    .end annotation

    iget p2, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/G/C;->h(I)Z

    move-result p1

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/github/catvod/spider/merge/H/j0;

    iget v0, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    iget p1, p1, Lcom/github/catvod/spider/merge/H/j0;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lcom/github/catvod/spider/merge/G/C;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/l0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/G/C<",
            "**>;",
            "Lcom/github/catvod/spider/merge/G/D;",
            ")",
            "Lcom/github/catvod/spider/merge/H/l0;"
        }
    .end annotation

    iget p2, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/G/C;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/github/catvod/spider/merge/H/j0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/H/j0;

    iget v2, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    iget p1, p1, Lcom/github/catvod/spider/merge/H/j0;->b:I

    if-ne v2, p1, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "{"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge/H/j0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">=prec}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
