.class public abstract Lcom/github/catvod/spider/merge/X/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g(B)Z
    .registers 3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x41

    if-lt p1, v0, :cond_15

    const/16 v0, 0x5a

    if-le p1, v0, :cond_e

    const/16 v0, 0x61

    if-lt p1, v0, :cond_15

    :cond_e
    const/16 v0, 0x7a

    if-le p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method


# virtual methods
.method public final a([BI)Ljava/nio/ByteBuffer;
    .registers 11

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    add-int/2addr p2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v2, p2, :cond_3a

    aget-byte v5, p1, v2

    const/16 v6, 0x3e

    const/4 v7, 0x1

    if-ne v5, v6, :cond_14

    const/4 v3, 0x0

    goto :goto_19

    :cond_14
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_19

    const/4 v3, 0x1

    :cond_19
    :goto_19
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    :goto_1f
    if-eqz v7, :cond_37

    invoke-direct {p0, v5}, Lcom/github/catvod/spider/merge/X/b;->g(B)Z

    move-result v5

    if-eqz v5, :cond_37

    if-le v2, v4, :cond_35

    if-nez v3, :cond_35

    sub-int v5, v2, v4

    invoke-virtual {v0, p1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_35
    add-int/lit8 v4, v2, 0x1

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3a
    if-nez v3, :cond_42

    if-le v2, v4, :cond_42

    sub-int/2addr v2, v4

    invoke-virtual {v0, p1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_42
    return-object v0
.end method

.method public final b([BI)Ljava/nio/ByteBuffer;
    .registers 11

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    add-int/2addr p2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v2, p2, :cond_36

    aget-byte v5, p1, v2

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-nez v6, :cond_14

    const/4 v6, 0x1

    goto :goto_15

    :cond_14
    const/4 v6, 0x0

    :goto_15
    if-nez v6, :cond_19

    const/4 v3, 0x1

    goto :goto_33

    :cond_19
    invoke-direct {p0, v5}, Lcom/github/catvod/spider/merge/X/b;->g(B)Z

    move-result v5

    if-eqz v5, :cond_33

    if-eqz v3, :cond_31

    if-le v2, v4, :cond_31

    sub-int v3, v2, v4

    invoke-virtual {v0, p1, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v2, 0x1

    const/4 v3, 0x0

    goto :goto_33

    :cond_31
    add-int/lit8 v4, v2, 0x1

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_36
    if-eqz v3, :cond_3e

    if-le v2, v4, :cond_3e

    sub-int/2addr v2, v4

    invoke-virtual {v0, p1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3e
    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()F
.end method

.method public abstract e()I
.end method

.method public abstract f([BI)I
.end method

.method public abstract h()V
.end method
