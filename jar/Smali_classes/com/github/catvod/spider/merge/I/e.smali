.class public final Lcom/github/catvod/spider/merge/I/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/github/catvod/spider/merge/H/f;

.field public c:[Lcom/github/catvod/spider/merge/I/e;

.field public d:Z

.field public e:I

.field public f:Lcom/github/catvod/spider/merge/H/D;

.field public g:Z

.field public h:[Lcom/github/catvod/spider/merge/I/d;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/I/e;->a:I

    new-instance v0, Lcom/github/catvod/spider/merge/H/f;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/I/e;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge/H/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/I/e;->a:I

    new-instance v0, Lcom/github/catvod/spider/merge/H/f;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge/H/f;-><init>(Z)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge/I/e;->d:Z

    iput-object p1, p0, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/github/catvod/spider/merge/I/e;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge/I/e;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge/H/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/f;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/R/c;->b(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/catvod/spider/merge/I/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge/I/e;->d:Z

    if-eqz v1, :cond_2e

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/I/e;->h:[Lcom/github/catvod/spider/merge/I/d;

    if-eqz v1, :cond_29

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_29
    iget v1, p0, Lcom/github/catvod/spider/merge/I/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
