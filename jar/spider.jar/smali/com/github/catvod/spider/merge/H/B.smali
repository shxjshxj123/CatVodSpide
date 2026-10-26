.class public final Lcom/github/catvod/spider/merge/H/B;
.super Lcom/github/catvod/spider/merge/H/l;
.source "SourceFile"


# instance fields
.field protected final d:Lcom/github/catvod/spider/merge/G/t;

.field protected e:I

.field protected f:I

.field protected g:I

.field public final h:[Lcom/github/catvod/spider/merge/I/b;

.field protected i:I

.field protected final j:Lcom/github/catvod/spider/merge/H/A;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/G/t;Lcom/github/catvod/spider/merge/H/a;[Lcom/github/catvod/spider/merge/I/b;Lcom/github/catvod/spider/merge/H/Y;)V
    .registers 5

    invoke-direct {p0, p2, p4}, Lcom/github/catvod/spider/merge/H/l;-><init>(Lcom/github/catvod/spider/merge/H/a;Lcom/github/catvod/spider/merge/H/Y;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/github/catvod/spider/merge/H/B;->e:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/github/catvod/spider/merge/H/B;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/github/catvod/spider/merge/H/B;->g:I

    iput p2, p0, Lcom/github/catvod/spider/merge/H/B;->i:I

    new-instance p2, Lcom/github/catvod/spider/merge/H/A;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge/H/A;-><init>()V

    iput-object p2, p0, Lcom/github/catvod/spider/merge/H/B;->j:Lcom/github/catvod/spider/merge/H/A;

    iput-object p3, p0, Lcom/github/catvod/spider/merge/H/B;->h:[Lcom/github/catvod/spider/merge/I/b;

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/B;->d:Lcom/github/catvod/spider/merge/G/t;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/B;->j:Lcom/github/catvod/spider/merge/H/A;

    const/4 v1, -0x1

    .line 1
    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->a:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/github/catvod/spider/merge/H/A;->b:I

    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->c:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/github/catvod/spider/merge/H/A;->d:Lcom/github/catvod/spider/merge/I/e;

    .line 2
    iput v1, p0, Lcom/github/catvod/spider/merge/H/B;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge/H/B;->f:I

    iput v2, p0, Lcom/github/catvod/spider/merge/H/B;->g:I

    iput v2, p0, Lcom/github/catvod/spider/merge/H/B;->i:I

    return-void
.end method

.method protected final b(Lcom/github/catvod/spider/merge/I/e;ILcom/github/catvod/spider/merge/I/e;)V
    .registers 5

    if-ltz p2, :cond_1d

    const/16 v0, 0x7f

    if-le p2, v0, :cond_7

    goto :goto_1d

    :cond_7
    monitor-enter p1

    :try_start_8
    iget-object v0, p1, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    if-nez v0, :cond_12

    const/16 v0, 0x80

    new-array v0, v0, [Lcom/github/catvod/spider/merge/I/e;

    iput-object v0, p1, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    :cond_12
    iget-object v0, p1, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    add-int/lit8 p2, p2, 0x0

    aput-object p3, v0, p2

    monitor-exit p1

    return-void

    :catchall_1a
    move-exception p2

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw p2

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected final c(Lcom/github/catvod/spider/merge/H/f;)Lcom/github/catvod/spider/merge/I/e;
    .registers 8

    new-instance v0, Lcom/github/catvod/spider/merge/I/e;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge/I/e;-><init>(Lcom/github/catvod/spider/merge/H/f;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/b;

    iget-object v4, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v4, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v4, :cond_9

    goto :goto_1e

    :cond_1d
    move-object v2, v3

    :goto_1e
    const/4 v1, 0x1

    if-eqz v2, :cond_38

    iput-boolean v1, v0, Lcom/github/catvod/spider/merge/I/e;->d:Z

    move-object v4, v2

    check-cast v4, Lcom/github/catvod/spider/merge/H/z;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/z;->e()Lcom/github/catvod/spider/merge/H/D;

    move-result-object v4

    iput-object v4, v0, Lcom/github/catvod/spider/merge/I/e;->f:Lcom/github/catvod/spider/merge/H/D;

    iget-object v4, p0, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/a;->g:[I

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v2, v2, Lcom/github/catvod/spider/merge/H/m;->c:I

    aget v2, v4, v2

    iput v2, v0, Lcom/github/catvod/spider/merge/I/e;->e:I

    :cond_38
    iget-object v2, p0, Lcom/github/catvod/spider/merge/H/B;->h:[Lcom/github/catvod/spider/merge/I/b;

    iget v4, p0, Lcom/github/catvod/spider/merge/H/B;->i:I

    aget-object v2, v2, v4

    iget-object v4, v2, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_41
    iget-object v5, v2, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge/I/e;

    if-eqz v5, :cond_4d

    monitor-exit v4

    return-object v5

    :cond_4d
    iget-object v5, v2, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iput v5, v0, Lcom/github/catvod/spider/merge/I/e;->a:I

    .line 1
    iput-boolean v1, p1, Lcom/github/catvod/spider/merge/H/f;->a:Z

    iput-object v3, p1, Lcom/github/catvod/spider/merge/H/f;->b:Lcom/github/catvod/spider/merge/H/e;

    .line 2
    iput-object p1, v0, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    iget-object p1, v2, Lcom/github/catvod/spider/merge/I/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    return-object v0

    :catchall_62
    move-exception p1

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_41 .. :try_end_64} :catchall_62

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method protected final d(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/f;ZZZ)Z
    .registers 22

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v2, v1, Lcom/github/catvod/spider/merge/H/e0;

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_85

    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/X;->e()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1e

    :cond_1b
    move/from16 v11, p4

    goto :goto_35

    :cond_1e
    :goto_1e
    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v1, :cond_81

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_81

    :cond_29
    new-instance v1, Lcom/github/catvod/spider/merge/H/z;

    iget-object v2, v0, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    sget-object v4, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    invoke-direct {v1, v0, v2, v4}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;)V

    .line 1
    invoke-virtual {v10, v1, v12}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    .line 2
    :goto_35
    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v1

    if-nez v1, :cond_80

    move v5, v11

    const/4 v11, 0x0

    :goto_41
    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v1

    if-ge v11, v1, :cond_7f

    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_7c

    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge/H/X;->c(I)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v1

    iget-object v2, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v3, v11}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/m;

    new-instance v3, Lcom/github/catvod/spider/merge/H/z;

    invoke-direct {v3, v0, v2, v1}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/github/catvod/spider/merge/H/B;->d(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/f;ZZZ)Z

    move-result v5

    :cond_7c
    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    :cond_7f
    move v11, v5

    :cond_80
    return v11

    .line 3
    :cond_81
    :goto_81
    invoke-virtual {v10, v0, v12}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    return v11

    .line 4
    :cond_85
    iget-boolean v1, v1, Lcom/github/catvod/spider/merge/H/m;->d:Z

    if-nez v1, :cond_94

    if-eqz p4, :cond_91

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/H/z;->f()Z

    move-result v1

    if-nez v1, :cond_94

    .line 6
    :cond_91
    invoke-virtual {v10, v0, v12}, Lcom/github/catvod/spider/merge/H/f;->a(Lcom/github/catvod/spider/merge/H/b;Lcom/github/catvod/spider/merge/J/d;)V

    .line 7
    :cond_94
    iget-object v13, v0, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    move/from16 v5, p4

    const/4 v14, 0x0

    :goto_99
    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v1

    if-ge v14, v1, :cond_16d

    invoke-virtual {v13, v14}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/t0;->a()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_165

    packed-switch v2, :pswitch_data_16e

    goto/16 :goto_150

    :pswitch_b0
    iget-object v2, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v2, :cond_c4

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/H/X;->e()Z

    move-result v2

    if-eqz v2, :cond_bb

    goto :goto_c4

    :cond_bb
    new-instance v2, Lcom/github/catvod/spider/merge/H/z;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;)V

    goto/16 :goto_14e

    :cond_c4
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/H/z;->e()Lcom/github/catvod/spider/merge/H/D;

    move-result-object v2

    iget-object v3, v8, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/a;->h:[Lcom/github/catvod/spider/merge/H/C;

    move-object v4, v1

    check-cast v4, Lcom/github/catvod/spider/merge/H/o;

    iget v4, v4, Lcom/github/catvod/spider/merge/H/o;->c:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/H/D;->a(Lcom/github/catvod/spider/merge/H/D;Lcom/github/catvod/spider/merge/H/C;)Lcom/github/catvod/spider/merge/H/D;

    move-result-object v2

    new-instance v3, Lcom/github/catvod/spider/merge/H/z;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v3, v0, v1, v2}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/D;)V

    goto/16 :goto_151

    :pswitch_e0
    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/H/W;

    iput-boolean v11, v10, Lcom/github/catvod/spider/merge/H/f;->f:Z

    .line 9
    iget-object v2, v8, Lcom/github/catvod/spider/merge/H/B;->d:Lcom/github/catvod/spider/merge/G/t;

    if-nez v2, :cond_ea

    goto :goto_10a

    :cond_ea
    if-nez p5, :cond_ed

    goto :goto_10a

    :cond_ed
    iget v2, v8, Lcom/github/catvod/spider/merge/H/B;->g:I

    iget v3, v8, Lcom/github/catvod/spider/merge/H/B;->f:I

    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->c()I

    :try_start_f8
    invoke-virtual/range {p0 .. p1}, Lcom/github/catvod/spider/merge/H/B;->e(Lcom/github/catvod/spider/merge/G/d;)V

    iget-object v6, v8, Lcom/github/catvod/spider/merge/H/B;->d:Lcom/github/catvod/spider/merge/G/t;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_100
    .catchall {:try_start_f8 .. :try_end_100} :catchall_112

    iput v2, v8, Lcom/github/catvod/spider/merge/H/B;->g:I

    iput v3, v8, Lcom/github/catvod/spider/merge/H/B;->f:I

    invoke-interface {v9, v4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    .line 10
    :goto_10a
    new-instance v2, Lcom/github/catvod/spider/merge/H/z;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;)V

    goto :goto_14e

    :catchall_112
    move-exception v0

    .line 11
    iput v2, v8, Lcom/github/catvod/spider/merge/H/B;->g:I

    iput v3, v8, Lcom/github/catvod/spider/merge/H/B;->f:I

    invoke-interface {v9, v4}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    throw v0

    .line 12
    :pswitch_11e
    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/H/f0;

    iget-object v3, v0, Lcom/github/catvod/spider/merge/H/b;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/f0;->c:Lcom/github/catvod/spider/merge/H/m;

    iget v2, v2, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v3, v2}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object v2

    new-instance v3, Lcom/github/catvod/spider/merge/H/z;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v3, v0, v1, v2}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;)V

    goto :goto_151

    :pswitch_133
    if-eqz p6, :cond_150

    const/4 v2, -0x1

    const v3, 0x10ffff

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge/H/t0;->d(II)Z

    move-result v2

    if-eqz v2, :cond_150

    new-instance v2, Lcom/github/catvod/spider/merge/H/z;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;)V

    goto :goto_14e

    :pswitch_147
    new-instance v2, Lcom/github/catvod/spider/merge/H/z;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;)V

    :goto_14e
    move-object v3, v2

    goto :goto_151

    :cond_150
    :goto_150
    move-object v3, v12

    :goto_151
    if-eqz v3, :cond_161

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    .line 13
    invoke-virtual/range {v1 .. v7}, Lcom/github/catvod/spider/merge/H/B;->d(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/f;ZZZ)Z

    move-result v1

    move v5, v1

    :cond_161
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_99

    .line 14
    :cond_165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Precedence predicates are not supported in lexers."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16d
    return v5

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_147
        :pswitch_133
        :pswitch_11e
        :pswitch_e0
        :pswitch_133
        :pswitch_b0
        :pswitch_133
    .end packed-switch
.end method

.method public final e(Lcom/github/catvod/spider/merge/G/d;)V
    .registers 5

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    iget v1, p0, Lcom/github/catvod/spider/merge/H/B;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/github/catvod/spider/merge/H/B;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge/H/B;->g:I

    goto :goto_17

    :cond_12
    iget v1, p0, Lcom/github/catvod/spider/merge/H/B;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/github/catvod/spider/merge/H/B;->g:I

    :goto_17
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->i()V

    return-void
.end method

.method protected final f(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/I/e;)I
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/github/catvod/spider/merge/I/e;->d:Z

    if-eqz v1, :cond_1c

    iget-object v1, v7, Lcom/github/catvod/spider/merge/H/B;->j:Lcom/github/catvod/spider/merge/H/A;

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v2

    iput v2, v1, Lcom/github/catvod/spider/merge/H/A;->a:I

    iget v2, v7, Lcom/github/catvod/spider/merge/H/B;->f:I

    iput v2, v1, Lcom/github/catvod/spider/merge/H/A;->b:I

    iget v2, v7, Lcom/github/catvod/spider/merge/H/B;->g:I

    iput v2, v1, Lcom/github/catvod/spider/merge/H/A;->c:I

    iput-object v0, v1, Lcom/github/catvod/spider/merge/H/A;->d:Lcom/github/catvod/spider/merge/I/e;

    :cond_1c
    const/4 v9, 0x1

    .line 2
    invoke-interface {v8, v9}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v1

    move-object v10, v0

    move v11, v1

    .line 3
    :goto_23
    iget-object v0, v10, Lcom/github/catvod/spider/merge/I/e;->c:[Lcom/github/catvod/spider/merge/I/e;

    if-eqz v0, :cond_33

    if-ltz v11, :cond_33

    const/16 v1, 0x7f

    if-le v11, v1, :cond_2e

    goto :goto_33

    :cond_2e
    add-int/lit8 v1, v11, 0x0

    aget-object v0, v0, v1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x0

    :goto_34
    const/4 v13, -0x1

    if-nez v0, :cond_ff

    .line 4
    new-instance v14, Lcom/github/catvod/spider/merge/H/Q;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/Q;-><init>()V

    iget-object v0, v10, Lcom/github/catvod/spider/merge/I/e;->b:Lcom/github/catvod/spider/merge/H/f;

    .line 5
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/f;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v5, 0x0

    :goto_43
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/catvod/spider/merge/H/b;

    iget v0, v4, Lcom/github/catvod/spider/merge/H/b;->b:I

    if-ne v0, v5, :cond_57

    const/16 v16, 0x1

    goto :goto_59

    :cond_57
    const/16 v16, 0x0

    :goto_59
    if-eqz v16, :cond_66

    move-object v0, v4

    check-cast v0, Lcom/github/catvod/spider/merge/H/z;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/z;->f()Z

    move-result v0

    if-eqz v0, :cond_66

    goto/16 :goto_d3

    :cond_66
    iget-object v0, v4, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v3

    const/4 v2, 0x0

    :goto_6d
    if-ge v2, v3, :cond_d3

    iget-object v0, v4, Lcom/github/catvod/spider/merge/H/b;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v0

    const v1, 0x10ffff

    .line 6
    invoke-virtual {v0, v11, v1}, Lcom/github/catvod/spider/merge/H/t0;->d(II)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v0, v0, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    goto :goto_82

    :cond_81
    const/4 v0, 0x0

    :goto_82
    if-eqz v0, :cond_c1

    .line 7
    move-object v1, v4

    check-cast v1, Lcom/github/catvod/spider/merge/H/z;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/z;->e()Lcom/github/catvod/spider/merge/H/D;

    move-result-object v6

    if-eqz v6, :cond_99

    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v17

    iget v12, v7, Lcom/github/catvod/spider/merge/H/B;->e:I

    sub-int v12, v17, v12

    invoke-virtual {v6, v12}, Lcom/github/catvod/spider/merge/H/D;->c(I)Lcom/github/catvod/spider/merge/H/D;

    move-result-object v6

    :cond_99
    if-ne v11, v13, :cond_9d

    const/4 v12, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v12, 0x0

    :goto_9e
    new-instance v9, Lcom/github/catvod/spider/merge/H/z;

    invoke-direct {v9, v1, v0, v6}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/D;)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v2

    move-object v2, v9

    move v9, v3

    move-object v3, v14

    move-object v13, v4

    move/from16 v4, v16

    move/from16 v19, v5

    move v5, v6

    move/from16 v20, v9

    const/4 v9, 0x0

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/github/catvod/spider/merge/H/B;->d(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/f;ZZZ)Z

    move-result v0

    if-eqz v0, :cond_c9

    iget v0, v13, Lcom/github/catvod/spider/merge/H/b;->b:I

    move v5, v0

    goto :goto_d8

    :cond_c1
    move/from16 v18, v2

    move/from16 v20, v3

    move-object v13, v4

    move/from16 v19, v5

    const/4 v9, 0x0

    :cond_c9
    add-int/lit8 v2, v18, 0x1

    move-object v4, v13

    move/from16 v5, v19

    move/from16 v3, v20

    const/4 v9, 0x1

    const/4 v13, -0x1

    goto :goto_6d

    :cond_d3
    :goto_d3
    move/from16 v19, v5

    const/4 v9, 0x0

    move/from16 v5, v19

    :goto_d8
    const/4 v9, 0x1

    const/4 v13, -0x1

    goto/16 :goto_43

    :cond_dc
    const/4 v9, 0x0

    .line 8
    invoke-virtual {v14}, Lcom/github/catvod/spider/merge/H/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-boolean v0, v14, Lcom/github/catvod/spider/merge/H/f;->f:Z

    if-nez v0, :cond_ec

    sget-object v0, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    invoke-virtual {v7, v10, v11, v0}, Lcom/github/catvod/spider/merge/H/B;->b(Lcom/github/catvod/spider/merge/I/e;ILcom/github/catvod/spider/merge/I/e;)V

    :cond_ec
    sget-object v0, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    goto :goto_ff

    .line 9
    :cond_ef
    iget-boolean v0, v14, Lcom/github/catvod/spider/merge/H/f;->f:Z

    iput-boolean v9, v14, Lcom/github/catvod/spider/merge/H/f;->f:Z

    invoke-virtual {v7, v14}, Lcom/github/catvod/spider/merge/H/B;->c(Lcom/github/catvod/spider/merge/H/f;)Lcom/github/catvod/spider/merge/I/e;

    move-result-object v1

    if-eqz v0, :cond_fa

    goto :goto_fd

    :cond_fa
    invoke-virtual {v7, v10, v11, v1}, Lcom/github/catvod/spider/merge/H/B;->b(Lcom/github/catvod/spider/merge/I/e;ILcom/github/catvod/spider/merge/I/e;)V

    :goto_fd
    move-object v10, v1

    goto :goto_100

    :cond_ff
    :goto_ff
    move-object v10, v0

    .line 10
    :goto_100
    sget-object v0, Lcom/github/catvod/spider/merge/H/l;->c:Lcom/github/catvod/spider/merge/I/e;

    if-ne v10, v0, :cond_105

    goto :goto_124

    :cond_105
    const/4 v0, -0x1

    if-eq v11, v0, :cond_10b

    invoke-virtual/range {p0 .. p1}, Lcom/github/catvod/spider/merge/H/B;->e(Lcom/github/catvod/spider/merge/G/d;)V

    :cond_10b
    iget-boolean v0, v10, Lcom/github/catvod/spider/merge/I/e;->d:Z

    if-eqz v0, :cond_160

    iget-object v0, v7, Lcom/github/catvod/spider/merge/H/B;->j:Lcom/github/catvod/spider/merge/H/A;

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v1

    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->a:I

    iget v1, v7, Lcom/github/catvod/spider/merge/H/B;->f:I

    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->b:I

    iget v1, v7, Lcom/github/catvod/spider/merge/H/B;->g:I

    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->c:I

    iput-object v10, v0, Lcom/github/catvod/spider/merge/H/A;->d:Lcom/github/catvod/spider/merge/I/e;

    const/4 v0, -0x1

    if-ne v11, v0, :cond_160

    .line 12
    :goto_124
    iget-object v0, v7, Lcom/github/catvod/spider/merge/H/B;->j:Lcom/github/catvod/spider/merge/H/A;

    .line 13
    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/A;->d:Lcom/github/catvod/spider/merge/I/e;

    if-eqz v1, :cond_149

    iget-object v1, v1, Lcom/github/catvod/spider/merge/I/e;->f:Lcom/github/catvod/spider/merge/H/D;

    iget v2, v7, Lcom/github/catvod/spider/merge/H/B;->e:I

    iget v3, v0, Lcom/github/catvod/spider/merge/H/A;->a:I

    iget v4, v0, Lcom/github/catvod/spider/merge/H/A;->b:I

    iget v5, v0, Lcom/github/catvod/spider/merge/H/A;->c:I

    .line 14
    invoke-interface {v8, v3}, Lcom/github/catvod/spider/merge/G/s;->e(I)V

    iput v4, v7, Lcom/github/catvod/spider/merge/H/B;->f:I

    iput v5, v7, Lcom/github/catvod/spider/merge/H/B;->g:I

    if-eqz v1, :cond_144

    iget-object v3, v7, Lcom/github/catvod/spider/merge/H/B;->d:Lcom/github/catvod/spider/merge/G/t;

    if-eqz v3, :cond_144

    invoke-virtual {v1, v3, v8, v2}, Lcom/github/catvod/spider/merge/H/D;->b(Lcom/github/catvod/spider/merge/G/t;Lcom/github/catvod/spider/merge/G/d;I)V

    .line 15
    :cond_144
    iget-object v0, v0, Lcom/github/catvod/spider/merge/H/A;->d:Lcom/github/catvod/spider/merge/I/e;

    iget v13, v0, Lcom/github/catvod/spider/merge/I/e;->e:I

    goto :goto_155

    :cond_149
    const/4 v0, -0x1

    if-ne v11, v0, :cond_156

    invoke-interface/range {p1 .. p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v1

    iget v2, v7, Lcom/github/catvod/spider/merge/H/B;->e:I

    if-ne v1, v2, :cond_156

    const/4 v13, -0x1

    :goto_155
    return v13

    :cond_156
    new-instance v0, Lcom/github/catvod/spider/merge/G/u;

    iget-object v1, v7, Lcom/github/catvod/spider/merge/H/B;->d:Lcom/github/catvod/spider/merge/G/t;

    iget v2, v7, Lcom/github/catvod/spider/merge/H/B;->e:I

    invoke-direct {v0, v1, v8, v2}, Lcom/github/catvod/spider/merge/G/u;-><init>(Lcom/github/catvod/spider/merge/G/t;Lcom/github/catvod/spider/merge/G/d;I)V

    throw v0

    :cond_160
    const/4 v0, 0x1

    .line 16
    invoke-interface {v8, v0}, Lcom/github/catvod/spider/merge/G/s;->g(I)I

    move-result v11

    const/4 v9, 0x1

    goto/16 :goto_23
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/B;->g:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/B;->f:I

    return v0
.end method

.method public final i(Lcom/github/catvod/spider/merge/G/d;I)I
    .registers 6

    iput p2, p0, Lcom/github/catvod/spider/merge/H/B;->i:I

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->c()I

    :try_start_5
    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->h()I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge/H/B;->e:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/B;->j:Lcom/github/catvod/spider/merge/H/A;

    const/4 v1, -0x1

    .line 1
    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->a:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/github/catvod/spider/merge/H/A;->b:I

    iput v1, v0, Lcom/github/catvod/spider/merge/H/A;->c:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/catvod/spider/merge/H/A;->d:Lcom/github/catvod/spider/merge/I/e;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/B;->h:[Lcom/github/catvod/spider/merge/I/b;

    aget-object p2, v0, p2

    iget-object v0, p2, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    if-nez v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/H/B;->j(Lcom/github/catvod/spider/merge/G/d;)I

    move-result p2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_32

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    return p2

    :cond_28
    :try_start_28
    iget-object p2, p2, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge/H/B;->f(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/I/e;)I

    move-result p2
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_32

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    return p2

    :catchall_32
    move-exception p2

    invoke-interface {p1}, Lcom/github/catvod/spider/merge/G/s;->a()V

    throw p2
.end method

.method protected final j(Lcom/github/catvod/spider/merge/G/d;)I
    .registers 14

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/l;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v0, v0, Lcom/github/catvod/spider/merge/H/a;->i:Ljava/util/ArrayList;

    iget v1, p0, Lcom/github/catvod/spider/merge/H/B;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/m;

    .line 1
    sget-object v1, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    new-instance v9, Lcom/github/catvod/spider/merge/H/Q;

    invoke-direct {v9}, Lcom/github/catvod/spider/merge/H/Q;-><init>()V

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v3

    iget-object v3, v3, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    new-instance v4, Lcom/github/catvod/spider/merge/H/z;

    add-int/lit8 v11, v2, 0x1

    invoke-direct {v4, v3, v11, v1}, Lcom/github/catvod/spider/merge/H/z;-><init>(Lcom/github/catvod/spider/merge/H/m;ILcom/github/catvod/spider/merge/H/X;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/github/catvod/spider/merge/H/B;->d(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/H/z;Lcom/github/catvod/spider/merge/H/f;ZZZ)Z

    move v2, v11

    goto :goto_15

    .line 2
    :cond_33
    iget-boolean v0, v9, Lcom/github/catvod/spider/merge/H/f;->f:Z

    iput-boolean v10, v9, Lcom/github/catvod/spider/merge/H/f;->f:Z

    invoke-virtual {p0, v9}, Lcom/github/catvod/spider/merge/H/B;->c(Lcom/github/catvod/spider/merge/H/f;)Lcom/github/catvod/spider/merge/I/e;

    move-result-object v1

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/github/catvod/spider/merge/H/B;->h:[Lcom/github/catvod/spider/merge/I/b;

    iget v2, p0, Lcom/github/catvod/spider/merge/H/B;->i:I

    aget-object v0, v0, v2

    iput-object v1, v0, Lcom/github/catvod/spider/merge/I/b;->b:Lcom/github/catvod/spider/merge/I/e;

    :cond_45
    invoke-virtual {p0, p1, v1}, Lcom/github/catvod/spider/merge/H/B;->f(Lcom/github/catvod/spider/merge/G/d;Lcom/github/catvod/spider/merge/I/e;)I

    move-result p1

    return p1
.end method
