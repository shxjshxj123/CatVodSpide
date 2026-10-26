.class public final Lcom/github/catvod/spider/merge/J/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:[Lcom/github/catvod/spider/merge/J/j;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3e9

    new-array v0, v0, [Lcom/github/catvod/spider/merge/J/j;

    sput-object v0, Lcom/github/catvod/spider/merge/J/j;->c:[Lcom/github/catvod/spider/merge/J/j;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/J/j;->a:I

    iput p2, p0, Lcom/github/catvod/spider/merge/J/j;->b:I

    return-void
.end method

.method public static b(II)Lcom/github/catvod/spider/merge/J/j;
    .registers 3

    if-ne p0, p1, :cond_19

    if-ltz p0, :cond_19

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_9

    goto :goto_19

    :cond_9
    sget-object p1, Lcom/github/catvod/spider/merge/J/j;->c:[Lcom/github/catvod/spider/merge/J/j;

    aget-object v0, p1, p0

    if-nez v0, :cond_16

    new-instance v0, Lcom/github/catvod/spider/merge/J/j;

    invoke-direct {v0, p0, p0}, Lcom/github/catvod/spider/merge/J/j;-><init>(II)V

    aput-object v0, p1, p0

    :cond_16
    aget-object p0, p1, p0

    return-object p0

    :cond_19
    :goto_19
    new-instance v0, Lcom/github/catvod/spider/merge/J/j;

    invoke-direct {v0, p0, p1}, Lcom/github/catvod/spider/merge/J/j;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge/J/j;)Z
    .registers 7

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_e

    iget v4, p0, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-ge v4, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_1a

    .line 2
    iget p1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-le v0, p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method public final c(Lcom/github/catvod/spider/merge/J/j;)Lcom/github/catvod/spider/merge/J/j;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v1, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget p1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/J/j;->b(II)Lcom/github/catvod/spider/merge/J/j;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    instance-of v1, p1, Lcom/github/catvod/spider/merge/J/j;

    if-nez v1, :cond_8

    goto :goto_17

    :cond_8
    check-cast p1, Lcom/github/catvod/spider/merge/J/j;

    iget v1, p0, Lcom/github/catvod/spider/merge/J/j;->a:I

    iget v2, p1, Lcom/github/catvod/spider/merge/J/j;->a:I

    if-ne v1, v2, :cond_17

    iget v1, p0, Lcom/github/catvod/spider/merge/J/j;->b:I

    iget p1, p1, Lcom/github/catvod/spider/merge/J/j;->b:I

    if-ne v1, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    :goto_17
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge/J/j;->a:I

    const/16 v1, 0x2c9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/github/catvod/spider/merge/J/j;->b:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/github/catvod/spider/merge/J/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/J/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
