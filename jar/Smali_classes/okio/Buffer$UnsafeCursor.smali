.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {p0, v0}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .registers 11

    const/4 v0, 0x1

    if-lez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_64

    const/16 v1, 0x2000

    if-gt p1, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_54

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_48

    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_3c

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, p1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object p1

    iget v4, p1, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    iput v1, p1, Lokio/Segment;->limit:I

    int-to-long v5, v4

    add-long v7, v2, v5

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    invoke-virtual {p0, p1}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object p1, p1, Lokio/Segment;->data:[B

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v4, 0x2000

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    const-string v0, "minByteCount > Segment.SIZE: "

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/l/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    const-string v0, "minByteCount <= 0: "

    .line 3
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge/l/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSegment$okio()Lokio/Segment;
    .registers 2

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    return-object v0
.end method

.method public final next()I
    .registers 6

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-static {v2}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_2b

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    const-wide/16 v0, 0x0

    goto :goto_26

    :cond_1f
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_26
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no more bytes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .registers 16

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_ab

    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_9f

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v1

    if-gtz v6, :cond_64

    cmp-long v3, p1, v4

    if-ltz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_54

    sub-long v6, v1, p1

    :goto_1e
    cmp-long v3, v6, v4

    if-lez v3, :cond_46

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget v8, v3, Lokio/Segment;->limit:I

    iget v9, v3, Lokio/Segment;->pos:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    cmp-long v11, v9, v6

    if-gtz v11, :cond_42

    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    sub-long/2addr v6, v9

    goto :goto_1e

    :cond_42
    long-to-int v4, v6

    sub-int/2addr v8, v4

    iput v8, v3, Lokio/Segment;->limit:I

    :cond_46
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v3, -0x1

    iput v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_9b

    :cond_54
    const-string v0, "newSize < 0: "

    .line 1
    invoke-static {v0, p1, p2}, Lcom/github/catvod/spider/merge/u/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_64
    cmp-long v6, p1, v1

    if-lez v6, :cond_9b

    sub-long v6, p1, v1

    const/4 v8, 0x1

    :goto_6b
    cmp-long v9, v6, v4

    if-lez v9, :cond_9b

    invoke-virtual {v0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    iget v9, v3, Lokio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    iget v9, v3, Lokio/Segment;->limit:I

    add-int/2addr v9, v10

    iput v9, v3, Lokio/Segment;->limit:I

    int-to-long v11, v10

    sub-long/2addr v6, v11

    if-eqz v8, :cond_99

    invoke-virtual {p0, v3}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v8, v3, Lokio/Segment;->data:[B

    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v3, v3, Lokio/Segment;->limit:I

    sub-int v8, v3, v10

    iput v8, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v3, 0x0

    const/4 v8, 0x0

    :cond_99
    const/4 v3, 0x1

    goto :goto_6b

    :cond_9b
    :goto_9b
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->setSize$okio(J)V

    return-wide v1

    :cond_9f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ab
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b8

    :goto_b7
    throw p1

    :goto_b8
    goto :goto_b7
.end method

.method public final seek(J)I
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v3, :cond_f8

    const/4 v4, -0x1

    int-to-long v5, v4

    cmp-long v7, v1, v5

    if-ltz v7, :cond_d5

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gtz v7, :cond_d5

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_c8

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-nez v7, :cond_26

    goto/16 :goto_c8

    :cond_26
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    iget-object v8, v3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    move-result-object v9

    if-eqz v9, :cond_59

    iget-wide v9, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v11, v0, Lokio/Buffer$UnsafeCursor;->start:I

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    move-result-object v12

    invoke-static {v12}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget v12, v12, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    cmp-long v11, v9, v1

    if-lez v11, :cond_51

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    move-result-object v6

    move-object v15, v8

    move-object v8, v6

    move-wide v6, v9

    move-object v9, v15

    goto :goto_5a

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$UnsafeCursor;->getSegment$okio()Lokio/Segment;

    move-result-object v4

    move-wide v15, v9

    move-object v9, v4

    move-wide v4, v15

    goto :goto_5a

    :cond_59
    move-object v9, v8

    :goto_5a
    sub-long v10, v6, v1

    sub-long v12, v1, v4

    cmp-long v14, v10, v12

    if-lez v14, :cond_77

    :goto_62
    invoke-static {v9}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget v6, v9, Lokio/Segment;->limit:I

    iget v7, v9, Lokio/Segment;->pos:I

    sub-int v8, v6, v7

    int-to-long v10, v8

    add-long/2addr v10, v4

    cmp-long v8, v1, v10

    if-ltz v8, :cond_8d

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_62

    :cond_77
    :goto_77
    cmp-long v4, v6, v1

    if-lez v4, :cond_8b

    invoke-static {v8}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v8}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget v4, v8, Lokio/Segment;->limit:I

    iget v5, v8, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v6, v4

    goto :goto_77

    :cond_8b
    move-wide v4, v6

    move-object v9, v8

    :cond_8d
    iget-boolean v6, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v6, :cond_ae

    invoke-static {v9}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget-boolean v6, v9, Lokio/Segment;->shared:Z

    if-eqz v6, :cond_ae

    invoke-virtual {v9}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v6

    iget-object v7, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v7, v9, :cond_a2

    iput-object v6, v3, Lokio/Buffer;->head:Lokio/Segment;

    :cond_a2
    invoke-virtual {v9, v6}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v9

    iget-object v3, v9, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    :cond_ae
    invoke-virtual {v0, v9}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    invoke-static {v9}, Lcom/github/catvod/spider/merge/D/e;->b(Ljava/lang/Object;)V

    iget-object v3, v9, Lokio/Segment;->data:[B

    iput-object v3, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v3, v9, Lokio/Segment;->pos:I

    sub-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v3, v2

    iput v3, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v1, v9, Lokio/Segment;->limit:I

    iput v1, v0, Lokio/Buffer$UnsafeCursor;->end:I

    sub-int v4, v1, v3

    goto :goto_d4

    :cond_c8
    :goto_c8
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/Buffer$UnsafeCursor;->setSegment$okio(Lokio/Segment;)V

    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iput-object v3, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    iput v4, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v4, v0, Lokio/Buffer$UnsafeCursor;->end:I

    :goto_d4
    return v4

    :cond_d5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > size="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_105

    :goto_104
    throw v1

    :goto_105
    goto :goto_104
.end method

.method public final setSegment$okio(Lokio/Segment;)V
    .registers 2

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    return-void
.end method
