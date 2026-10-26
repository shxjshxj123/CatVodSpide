.class public final Lcom/github/catvod/spider/merge/G/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/CharBuffer;

.field private d:Ljava/nio/IntBuffer;

.field private e:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    const/4 p1, -0x1

    iput p1, p0, Lcom/github/catvod/spider/merge/G/f;->e:I

    return-void
.end method

.method private b(Ljava/nio/CharBuffer;)V
    .registers 9

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iget-object v4, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    iget-object v5, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    :goto_29
    if-ge v2, v3, :cond_8e

    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_3a

    aput-char v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_3a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    :goto_6c
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_6c

    :cond_82
    const/4 v1, 0x3

    iput v1, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    .line 2
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/G/f;->c(Ljava/nio/CharBuffer;)V

    return-void

    :cond_8e
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private c(Ljava/nio/CharBuffer;)V
    .registers 11

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    iget-object v4, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v4

    iget-object v5, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    :goto_29
    const/4 v4, -0x1

    const v6, 0xffff

    if-ge v2, v3, :cond_6c

    aget-char v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    iget v8, p0, Lcom/github/catvod/spider/merge/G/f;->e:I

    if-eq v8, v4, :cond_5a

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_47

    iget v6, p0, Lcom/github/catvod/spider/merge/G/f;->e:I

    int-to-char v6, v6

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    aput v6, v1, v5

    goto :goto_57

    :cond_47
    iget v8, p0, Lcom/github/catvod/spider/merge/G/f;->e:I

    aput v8, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_54

    goto :goto_60

    :cond_54
    and-int/2addr v6, v7

    aput v6, v1, v5

    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    :cond_5a
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_65

    :goto_60
    and-int v4, v7, v6

    :goto_62
    iput v4, p0, Lcom/github/catvod/spider/merge/G/f;->e:I

    goto :goto_29

    :cond_65
    and-int v4, v7, v6

    aput v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_6c
    iget v0, p0, Lcom/github/catvod/spider/merge/G/f;->e:I

    if-eq v0, v4, :cond_75

    and-int/2addr v0, v6

    aput v0, v1, v5

    add-int/lit8 v5, v5, 0x1

    :cond_75
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static e(I)I
    .registers 5

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final a(Ljava/nio/CharBuffer;)V
    .registers 10

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 1
    iget v1, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    invoke-static {v1}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_5b

    if-eq v1, v3, :cond_37

    if-eq v1, v2, :cond_13

    goto :goto_7e

    :cond_13
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_7e

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/github/catvod/spider/merge/G/f;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    goto :goto_7e

    :cond_37
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_7e

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/github/catvod/spider/merge/G/f;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    goto :goto_7e

    :cond_5b
    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_7e

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/github/catvod/spider/merge/G/f;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    .line 2
    :cond_7e
    :goto_7e
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 3
    iget v0, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    invoke-static {v0}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_9c

    if-eq v0, v3, :cond_97

    if-eq v0, v2, :cond_92

    goto/16 :goto_17d

    :cond_92
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/G/f;->c(Ljava/nio/CharBuffer;)V

    goto/16 :goto_17d

    :cond_97
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/G/f;->b(Ljava/nio/CharBuffer;)V

    goto/16 :goto_17d

    .line 4
    :cond_9c
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v5, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    :goto_c5
    if-ge v3, v4, :cond_16b

    aget-char v5, v0, v3

    const/16 v7, 0xff

    if-gt v5, v7, :cond_d7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_c5

    :cond_d7
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12d

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 5
    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    div-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_10f
    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_123

    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/2addr v3, v7

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_10f

    :cond_123
    iput v2, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    iput-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    .line 6
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/G/f;->b(Ljava/nio/CharBuffer;)V

    goto :goto_17d

    :cond_12d
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    :goto_14d
    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_160

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_14d

    :cond_160
    const/4 v2, 0x3

    iput v2, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    iput-object v1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    .line 8
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/G/f;->c(Ljava/nio/CharBuffer;)V

    goto :goto_17d

    :cond_16b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_17d
    return-void

    .line 9
    :cond_17e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_187

    :goto_186
    throw p1

    :goto_187
    goto :goto_186
.end method

.method public final d()Lcom/github/catvod/spider/merge/G/g;
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    invoke-static {v0}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_20

    :cond_f
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_20

    :cond_15
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_20

    :cond_1b
    iget-object v0, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_20
    new-instance v0, Lcom/github/catvod/spider/merge/G/g;

    iget v1, p0, Lcom/github/catvod/spider/merge/G/f;->a:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge/G/f;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/github/catvod/spider/merge/G/f;->c:Ljava/nio/CharBuffer;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/G/f;->d:Ljava/nio/IntBuffer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/catvod/spider/merge/G/g;-><init>(ILjava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method
