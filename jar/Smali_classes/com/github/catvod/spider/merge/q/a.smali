.class final Lcom/github/catvod/spider/merge/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[C

.field final c:I

.field final d:I

.field final e:I

.field private final f:[B

.field private final g:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge/q/a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/github/catvod/spider/merge/q/a;->b:[C

    :try_start_a
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/r/b;->b(ILjava/math/RoundingMode;)I

    move-result p1

    iput p1, p0, Lcom/github/catvod/spider/merge/q/a;->c:I
    :try_end_13
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_13} :catch_88

    invoke-static {p1}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :try_start_1d
    div-int/2addr v1, v0

    iput v1, p0, Lcom/github/catvod/spider/merge/q/a;->d:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/github/catvod/spider/merge/q/a;->e:I
    :try_end_23
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_23} :catch_6a

    const/16 p1, 0x80

    new-array v0, p1, [B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4e

    aget-char v4, p2, v3

    if-ge v4, p1, :cond_37

    const/4 v6, 0x1

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    :goto_38
    const-string v7, "Non-ASCII character: %s"

    invoke-static {v6, v7, v4}, Lcom/github/catvod/spider/merge/o/m;->d(ZLjava/lang/String;C)V

    aget-byte v6, v0, v4

    if-ne v6, v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    :goto_43
    const-string v6, "Duplicate character: %s"

    invoke-static {v5, v6, v4}, Lcom/github/catvod/spider/merge/o/m;->d(ZLjava/lang/String;C)V

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_4e
    iput-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->f:[B

    iget p1, p0, Lcom/github/catvod/spider/merge/q/a;->d:I

    new-array p1, p1, [Z

    :goto_54
    iget p2, p0, Lcom/github/catvod/spider/merge/q/a;->e:I

    if-ge v2, p2, :cond_67

    mul-int/lit8 p2, v2, 0x8

    iget v0, p0, Lcom/github/catvod/spider/merge/q/a;->c:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v0, v1}, Lcom/github/catvod/spider/merge/r/b;->a(IILjava/math/RoundingMode;)I

    move-result p2

    aput-boolean v5, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_67
    iput-object p1, p0, Lcom/github/catvod/spider/merge/q/a;->g:[Z

    return-void

    :catch_6a
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal alphabet "

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_7f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_84

    :cond_7f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_84
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_88
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p2, p2

    const/16 v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal alphabet length "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a4

    :goto_a3
    throw v0

    :goto_a4
    goto :goto_a3
.end method

.method static synthetic a(Lcom/github/catvod/spider/merge/q/a;)[C
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge/q/a;->b:[C

    return-object p0
.end method


# virtual methods
.method final b(C)I
    .registers 6

    const-string v0, "Unrecognized character: 0x"

    const/16 v1, 0x7f

    if-le p1, v1, :cond_24

    new-instance v1, Lcom/github/catvod/spider/merge/q/d;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_20
    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/q/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    iget-object v2, p0, Lcom/github/catvod/spider/merge/q/a;->f:[B

    aget-byte v2, v2, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_69

    const/16 v2, 0x20

    if-le p1, v2, :cond_4b

    if-ne p1, v1, :cond_32

    goto :goto_4b

    :cond_32
    new-instance v0, Lcom/github/catvod/spider/merge/q/d;

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unrecognized character: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/q/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    :goto_4b
    new-instance v1, Lcom/github/catvod/spider/merge/q/d;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    :cond_60
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_65
    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge/q/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    return v2
.end method

.method final c(I)C
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->b:[C

    aget-char p1, v0, p1

    return p1
.end method

.method final d(I)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->g:[Z

    iget v1, p0, Lcom/github/catvod/spider/merge/q/a;->d:I

    rem-int/2addr p1, v1

    aget-boolean p1, v0, p1

    return p1
.end method

.method public final e(C)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->f:[B

    array-length v1, v0

    if-ge p1, v1, :cond_c

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/github/catvod/spider/merge/q/a;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/github/catvod/spider/merge/q/a;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->b:[C

    iget-object p1, p1, Lcom/github/catvod/spider/merge/q/a;->b:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->b:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/q/a;->a:Ljava/lang/String;

    return-object v0
.end method
