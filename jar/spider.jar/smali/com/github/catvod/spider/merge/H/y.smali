.class public final Lcom/github/catvod/spider/merge/H/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/github/catvod/spider/merge/H/a;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge/H/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge/H/y;->a:Lcom/github/catvod/spider/merge/H/a;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/J/k;Ljava/util/Set;Ljava/util/BitSet;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/m;",
            "Lcom/github/catvod/spider/merge/H/m;",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/J/k;",
            "Ljava/util/Set<",
            "Lcom/github/catvod/spider/merge/H/b;",
            ">;",
            "Ljava/util/BitSet;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    new-instance v1, Lcom/github/catvod/spider/merge/H/b;

    .line 1
    sget-object v2, Lcom/github/catvod/spider/merge/H/l0;->a:Lcom/github/catvod/spider/merge/H/k0;

    const/4 v11, 0x0

    invoke-direct {v1, v8, v11, v0, v2}, Lcom/github/catvod/spider/merge/H/b;-><init>(Lcom/github/catvod/spider/merge/H/m;ILcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/l0;)V

    move-object/from16 v12, p4

    .line 2
    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v8, :cond_2f

    if-nez v0, :cond_25

    invoke-virtual {v9, v2}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    return-void

    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v9, v1}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    return-void

    :cond_2f
    instance-of v3, v8, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v3, :cond_8a

    if-nez v0, :cond_39

    invoke-virtual {v9, v2}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    return-void

    :cond_39
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v9, v1}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    return-void

    :cond_43
    sget-object v1, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    if-eq v0, v1, :cond_8a

    iget v1, v8, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    :try_start_4d
    iget v1, v8, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->clear(I)V

    :goto_52
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v1

    if-ge v11, v1, :cond_79

    iget-object v1, v7, Lcom/github/catvod/spider/merge/H/y;->a:Lcom/github/catvod/spider/merge/H/a;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v0, v11}, Lcom/github/catvod/spider/merge/H/X;->c(I)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/github/catvod/spider/merge/H/y;->a(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/J/k;Ljava/util/Set;Ljava/util/BitSet;)V
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_81

    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    :cond_79
    if-eqz v13, :cond_80

    iget v0, v8, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V

    :cond_80
    return-void

    :catchall_81
    move-exception v0

    if-eqz v13, :cond_89

    iget v1, v8, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    :cond_89
    throw v0

    :cond_8a
    invoke-virtual/range {p1 .. p1}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v13

    const/4 v14, 0x0

    :goto_8f
    if-ge v14, v13, :cond_143

    invoke-virtual {v8, v14}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/github/catvod/spider/merge/H/f0;

    if-ne v2, v3, :cond_dd

    move-object v15, v1

    check-cast v15, Lcom/github/catvod/spider/merge/H/f0;

    iget-object v2, v15, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v2, v2, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_ac

    goto/16 :goto_13f

    :cond_ac
    iget-object v2, v15, Lcom/github/catvod/spider/merge/H/f0;->c:Lcom/github/catvod/spider/merge/H/m;

    iget v2, v2, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object v3

    :try_start_b4
    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/H/f0;

    iget-object v2, v2, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v2, v2, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/github/catvod/spider/merge/H/y;->a(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/J/k;Ljava/util/Set;Ljava/util/BitSet;)V
    :try_end_cb
    .catchall {:try_start_b4 .. :try_end_cb} :catchall_d4

    iget-object v1, v15, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v1, v1, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->clear(I)V

    goto/16 :goto_13f

    :catchall_d4
    move-exception v0

    iget-object v1, v15, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v1, v1, Lcom/github/catvod/spider/merge/H/m;->c:I

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->clear(I)V

    throw v0

    :cond_dd
    instance-of v2, v1, Lcom/github/catvod/spider/merge/H/n;

    if-eqz v2, :cond_e2

    goto :goto_e8

    :cond_e2
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/t0;->b()Z

    move-result v2

    if-eqz v2, :cond_f8

    :goto_e8
    iget-object v2, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/github/catvod/spider/merge/H/y;->a(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/J/k;Ljava/util/Set;Ljava/util/BitSet;)V

    goto :goto_13f

    :cond_f8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/github/catvod/spider/merge/H/u0;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_10d

    iget-object v1, v7, Lcom/github/catvod/spider/merge/H/y;->a:Lcom/github/catvod/spider/merge/H/a;

    iget v1, v1, Lcom/github/catvod/spider/merge/H/a;->f:I

    invoke-static {v4, v1}, Lcom/github/catvod/spider/merge/J/k;->g(II)Lcom/github/catvod/spider/merge/J/k;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/github/catvod/spider/merge/J/k;->c(Lcom/github/catvod/spider/merge/J/g;)Lcom/github/catvod/spider/merge/J/k;

    goto :goto_13f

    :cond_10d
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/t0;->c()Lcom/github/catvod/spider/merge/J/k;

    move-result-object v2

    if-eqz v2, :cond_13f

    instance-of v1, v1, Lcom/github/catvod/spider/merge/H/P;

    if-eqz v1, :cond_13c

    iget-object v1, v7, Lcom/github/catvod/spider/merge/H/y;->a:Lcom/github/catvod/spider/merge/H/a;

    iget v1, v1, Lcom/github/catvod/spider/merge/H/a;->f:I

    invoke-static {v4, v1}, Lcom/github/catvod/spider/merge/J/k;->g(II)Lcom/github/catvod/spider/merge/J/k;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/J/k;->f()Z

    move-result v3

    if-eqz v3, :cond_127

    const/4 v2, 0x0

    goto :goto_13c

    .line 4
    :cond_127
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/J/k;->f()Z

    move-result v3

    if-eqz v3, :cond_138

    new-instance v2, Lcom/github/catvod/spider/merge/J/k;

    new-array v3, v11, [I

    .line 5
    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/J/k;->c(Lcom/github/catvod/spider/merge/J/g;)Lcom/github/catvod/spider/merge/J/k;

    goto :goto_13c

    .line 6
    :cond_138
    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge/J/k;->k(Lcom/github/catvod/spider/merge/J/k;Lcom/github/catvod/spider/merge/J/k;)Lcom/github/catvod/spider/merge/J/k;

    move-result-object v2

    .line 7
    :cond_13c
    :goto_13c
    invoke-virtual {v9, v2}, Lcom/github/catvod/spider/merge/J/k;->c(Lcom/github/catvod/spider/merge/J/g;)Lcom/github/catvod/spider/merge/J/k;

    :cond_13f
    :goto_13f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8f

    :cond_143
    return-void
.end method
