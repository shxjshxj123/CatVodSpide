.class public final Lcom/github/catvod/spider/merge/H/k0;
.super Lcom/github/catvod/spider/merge/H/l0;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/H/l0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/H/k0;->b:I

    iput v0, p0, Lcom/github/catvod/spider/merge/H/k0;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/H/k0;->d:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/merge/H/l0;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/H/k0;->b:I

    iput p2, p0, Lcom/github/catvod/spider/merge/H/k0;->c:I

    iput-boolean p3, p0, Lcom/github/catvod/spider/merge/H/k0;->d:Z

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/github/catvod/spider/merge/H/k0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/H/k0;

    iget v2, p0, Lcom/github/catvod/spider/merge/H/k0;->b:I

    iget v3, p1, Lcom/github/catvod/spider/merge/H/k0;->b:I

    if-ne v2, v3, :cond_1f

    iget v2, p0, Lcom/github/catvod/spider/merge/H/k0;->c:I

    iget v3, p1, Lcom/github/catvod/spider/merge/H/k0;->c:I

    if-ne v2, v3, :cond_1f

    iget-boolean v2, p0, Lcom/github/catvod/spider/merge/H/k0;->d:Z

    iget-boolean p1, p1, Lcom/github/catvod/spider/merge/H/k0;->d:Z

    if-ne v2, p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/H/k0;->b:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/H/k0;->c:I

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/H/k0;->d:Z

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "{"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge/H/k0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/k0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
