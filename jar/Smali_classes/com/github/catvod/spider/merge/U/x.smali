.class final enum Lcom/github/catvod/spider/merge/U/x;
.super Lcom/github/catvod/spider/merge/U/B;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InBody"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge/U/B;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge/U/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Lcom/github/catvod/spider/merge/U/P;->a:I

    invoke-static {v3}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v3

    if-eqz v3, :cond_d64

    const-string v5, "html"

    const-string v6, "h6"

    const-string v7, "h5"

    const-string v8, "h4"

    const-string v9, "h3"

    const-string v10, "h2"

    const-string v11, "h1"

    const-string v12, "dt"

    const-string v13, "dd"

    const-string v14, "br"

    const-string v15, "body"

    const-string v4, "li"

    move-object/from16 v16, v11

    const-string v11, "form"

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x10

    const/16 v20, 0xf

    const/16 v21, 0xe

    const/16 v22, 0xd

    const/16 v23, 0xc

    const/16 v24, 0xb

    move-object/from16 v25, v10

    const-string v10, "span"

    move-object/from16 v26, v9

    const-string v9, "p"

    const/16 v27, 0xa

    move-object/from16 v28, v8

    const-string v8, "template"

    move-object/from16 v29, v7

    const/4 v7, 0x1

    if-eq v3, v7, :cond_41d

    const/4 v7, 0x2

    if-eq v3, v7, :cond_a1

    const/4 v7, 0x3

    if-eq v3, v7, :cond_9a

    const/4 v7, 0x4

    if-eq v3, v7, :cond_67

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5a

    goto :goto_9f

    :cond_5a
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->r0()I

    move-result v3

    if-lez v3, :cond_9f

    sget-object v3, Lcom/github/catvod/spider/merge/U/B;->r:Lcom/github/catvod/spider/merge/U/k;

    invoke-virtual {v2, v1, v3}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result v1

    return v1

    .line 1
    :cond_67
    check-cast v1, Lcom/github/catvod/spider/merge/U/I;

    .line 2
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/U/I;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/github/catvod/spider/merge/U/B;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 v1, 0x0

    return v1

    :cond_7c
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->t()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-static {v1}, Lcom/github/catvod/spider/merge/U/B;->a(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    goto :goto_9f

    :cond_8f
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->I(Lcom/github/catvod/spider/merge/U/I;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    goto :goto_9f

    .line 3
    :cond_9a
    check-cast v1, Lcom/github/catvod/spider/merge/U/J;

    .line 4
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->J(Lcom/github/catvod/spider/merge/U/J;)V

    :cond_9f
    :goto_9f
    const/4 v1, 0x1

    return v1

    :cond_a1
    const/4 v7, 0x4

    .line 5
    move-object v3, v1

    check-cast v3, Lcom/github/catvod/spider/merge/U/M;

    .line 6
    iget-object v7, v3, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v33

    sparse-switch v33, :sswitch_data_d6c

    packed-switch v33, :pswitch_data_d9a

    goto/16 :goto_181

    :sswitch_b6
    const-string v4, "sarcasm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c0

    goto/16 :goto_181

    :cond_c0
    const/16 v31, 0x10

    goto/16 :goto_183

    :sswitch_c4
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    goto/16 :goto_181

    :cond_cc
    const/16 v31, 0xf

    goto/16 :goto_183

    :sswitch_d0
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d8

    goto/16 :goto_181

    :cond_d8
    const/16 v31, 0xe

    goto/16 :goto_183

    :sswitch_dc
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e4

    goto/16 :goto_181

    :cond_e4
    const/16 v31, 0xd

    goto/16 :goto_183

    :sswitch_e8
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    goto/16 :goto_181

    :cond_f0
    const/16 v31, 0xc

    goto/16 :goto_183

    :sswitch_f4
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fc

    goto/16 :goto_181

    :cond_fc
    const/16 v31, 0xb

    goto/16 :goto_183

    :sswitch_100
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_108

    goto/16 :goto_181

    :cond_108
    const/16 v31, 0x4

    goto/16 :goto_183

    :sswitch_10c
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_114

    goto/16 :goto_181

    :cond_114
    const/16 v31, 0x3

    goto/16 :goto_183

    :sswitch_118
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_120

    goto/16 :goto_181

    :cond_120
    const/16 v31, 0x2

    goto/16 :goto_183

    :sswitch_124
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12c

    goto/16 :goto_181

    :cond_12c
    const/16 v31, 0x1

    goto :goto_183

    :sswitch_12f
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    goto :goto_181

    :cond_136
    const/16 v31, 0x0

    goto :goto_183

    :pswitch_139
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_140

    goto :goto_181

    :cond_140
    const/16 v31, 0xa

    goto :goto_183

    :pswitch_143
    move-object/from16 v4, v29

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14c

    goto :goto_181

    :cond_14c
    const/16 v4, 0x9

    const/16 v31, 0x9

    goto :goto_183

    :pswitch_151
    move-object/from16 v4, v28

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15a

    goto :goto_181

    :cond_15a
    const/16 v31, 0x8

    goto :goto_183

    :pswitch_15d
    move-object/from16 v4, v26

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_166

    goto :goto_181

    :cond_166
    const/16 v31, 0x7

    goto :goto_183

    :pswitch_169
    move-object/from16 v4, v25

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_172

    goto :goto_181

    :cond_172
    const/16 v31, 0x6

    goto :goto_183

    :pswitch_175
    move-object/from16 v4, v16

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17e

    goto :goto_181

    :cond_17e
    const/16 v31, 0x5

    goto :goto_183

    :goto_181
    const/16 v31, -0x1

    :goto_183
    packed-switch v31, :pswitch_data_daa

    sget-object v4, Lcom/github/catvod/spider/merge/U/A;->q:[Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3cd

    .line 8
    iget-object v3, v3, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 9
    iget-object v4, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_193
    const/16 v7, 0x8

    goto/16 :goto_288

    .line 10
    :cond_197
    :pswitch_197
    invoke-virtual/range {p0 .. p2}, Lcom/github/catvod/spider/merge/U/x;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result v4

    goto/16 :goto_41c

    :pswitch_19d
    invoke-virtual {v2, v15}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41b

    goto/16 :goto_270

    :pswitch_1a5
    invoke-virtual {v2, v8}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cf

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->x()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->n0()V

    if-eqz v1, :cond_24c

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v7, v3}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1bd

    goto/16 :goto_24c

    :cond_1bd
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/U/b;->v(Z)V

    .line 13
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ca

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_1ca
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->j0(Lcom/github/catvod/spider/merge/T/m;)Z

    goto/16 :goto_41b

    :cond_1cf
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v7, v3}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d8

    goto/16 :goto_24c

    :cond_1d8
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->v(Z)V

    .line 16
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3eb

    goto/16 :goto_3e8

    :pswitch_1e4
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v15, v3}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ec

    goto :goto_24c

    .line 18
    :cond_1ec
    invoke-virtual/range {p0 .. p2}, Lcom/github/catvod/spider/merge/U/x;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->s:Lcom/github/catvod/spider/merge/U/l;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_41b

    .line 19
    :pswitch_1f6
    sget-object v1, Lcom/github/catvod/spider/merge/U/b;->y:[Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ff

    goto :goto_24c

    .line 20
    :cond_1ff
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->u(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3eb

    goto/16 :goto_3e8

    :pswitch_20a
    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->i:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->D([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_213

    goto :goto_24c

    :cond_213
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->u(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21f

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    .line 21
    :cond_21f
    iget-object v3, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    :goto_227
    if-ltz v3, :cond_41b

    iget-object v4, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    iget-object v5, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_242

    goto/16 :goto_41b

    :cond_242
    add-int/lit8 v3, v3, -0x1

    goto :goto_227

    :pswitch_245
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v2, v7, v1}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_250

    .line 23
    :cond_24c
    :goto_24c
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_261

    :cond_250
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->u(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3eb

    goto/16 :goto_3e8

    :pswitch_25b
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {v2, v14}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    :goto_261
    const/4 v4, 0x0

    goto/16 :goto_41c

    :pswitch_264
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_276

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    :goto_270
    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v4

    goto/16 :goto_41c

    :cond_276
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->u(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3eb

    goto/16 :goto_3e8

    :pswitch_281
    sget-object v3, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    invoke-virtual {v2, v1, v3}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    goto/16 :goto_41b

    :goto_288
    if-ge v5, v7, :cond_41b

    .line 24
    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge/U/b;->w(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v6

    if-nez v6, :cond_296

    invoke-virtual/range {p0 .. p2}, Lcom/github/catvod/spider/merge/U/x;->e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z

    move-result v4

    goto/16 :goto_41c

    :cond_296
    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/U/b;->V(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v8

    if-nez v8, :cond_2a0

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_2f3

    :cond_2a0
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 25
    invoke-virtual {v2, v8, v9}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2af

    .line 26
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_261

    :cond_2af
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/j1;->a()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v8

    if-eq v8, v6, :cond_2b8

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_2b8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_2c0
    if-ge v12, v8, :cond_2e9

    const/16 v13, 0x40

    if-ge v12, v13, :cond_2e9

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/catvod/spider/merge/T/m;

    if-ne v13, v6, :cond_2dd

    add-int/lit8 v9, v12, -0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2, v13}, Lcom/github/catvod/spider/merge/U/b;->c0(Lcom/github/catvod/spider/merge/T/m;)I

    move-result v10

    move-object v11, v9

    const/4 v9, 0x1

    goto :goto_2e6

    :cond_2dd
    if-eqz v9, :cond_2e6

    invoke-virtual {v2, v13}, Lcom/github/catvod/spider/merge/U/b;->R(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v14

    if-eqz v14, :cond_2e6

    goto :goto_2ea

    :cond_2e6
    :goto_2e6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c0

    :cond_2e9
    const/4 v13, 0x0

    :goto_2ea
    if-nez v13, :cond_2f8

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    :goto_2f3
    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/U/b;->i0(Lcom/github/catvod/spider/merge/T/m;)V

    goto/16 :goto_41b

    :cond_2f8
    move-object v9, v13

    move-object v12, v9

    const/4 v8, 0x0

    :goto_2fb
    const/4 v14, 0x3

    if-ge v8, v14, :cond_35e

    invoke-virtual {v2, v9}, Lcom/github/catvod/spider/merge/U/b;->V(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v15

    if-eqz v15, :cond_308

    invoke-virtual {v2, v9}, Lcom/github/catvod/spider/merge/U/b;->j(Lcom/github/catvod/spider/merge/T/m;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v9

    :cond_308
    invoke-virtual {v2, v9}, Lcom/github/catvod/spider/merge/U/b;->Q(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v15

    if-nez v15, :cond_314

    invoke-virtual {v2, v9}, Lcom/github/catvod/spider/merge/U/b;->j0(Lcom/github/catvod/spider/merge/T/m;)Z

    move-object/from16 v16, v3

    goto :goto_357

    :cond_314
    if-ne v9, v6, :cond_317

    goto :goto_35e

    :cond_317
    new-instance v15, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge/T/m;->t()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lcom/github/catvod/spider/merge/U/E;->d:Lcom/github/catvod/spider/merge/U/E;

    invoke-virtual {v2, v7, v14}, Lcom/github/catvod/spider/merge/U/j1;->i(Ljava/lang/String;Lcom/github/catvod/spider/merge/U/E;)Lcom/github/catvod/spider/merge/U/G;

    move-result-object v7

    .line 27
    iget-object v14, v2, Lcom/github/catvod/spider/merge/U/j1;->f:Ljava/lang/String;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .line 28
    invoke-direct {v15, v7, v14, v3}, Lcom/github/catvod/spider/merge/T/m;-><init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    .line 29
    invoke-virtual {v2, v9, v15}, Lcom/github/catvod/spider/merge/U/b;->k0(Lcom/github/catvod/spider/merge/T/m;Lcom/github/catvod/spider/merge/T/m;)V

    .line 30
    iget-object v3, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_339

    const/4 v9, 0x1

    goto :goto_33a

    :cond_339
    const/4 v9, 0x0

    :goto_33a
    invoke-static {v9}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    invoke-virtual {v3, v7, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v12, v13, :cond_349

    .line 32
    invoke-virtual {v2, v15}, Lcom/github/catvod/spider/merge/U/b;->c0(Lcom/github/catvod/spider/merge/T/m;)I

    move-result v3

    const/4 v7, 0x1

    add-int/lit8 v10, v3, 0x1

    :cond_349
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v3

    if-eqz v3, :cond_352

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/s;->C()V

    :cond_352
    invoke-virtual {v15, v12}, Lcom/github/catvod/spider/merge/T/m;->M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;

    move-object v9, v15

    move-object v12, v9

    :goto_357
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    const/16 v7, 0x8

    goto :goto_2fb

    :cond_35e
    :goto_35e
    move-object/from16 v16, v3

    if-eqz v11, :cond_387

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/github/catvod/spider/merge/U/A;->r:[Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37b

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v3

    if-eqz v3, :cond_377

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/s;->C()V

    :cond_377
    invoke-virtual {v2, v12}, Lcom/github/catvod/spider/merge/U/b;->M(Lcom/github/catvod/spider/merge/T/s;)V

    goto :goto_387

    :cond_37b
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v3

    if-eqz v3, :cond_384

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge/T/s;->C()V

    :cond_384
    invoke-virtual {v11, v12}, Lcom/github/catvod/spider/merge/T/m;->M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;

    :cond_387
    :goto_387
    new-instance v3, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->t0()Lcom/github/catvod/spider/merge/U/G;

    move-result-object v7

    .line 33
    iget-object v8, v2, Lcom/github/catvod/spider/merge/U/j1;->f:Ljava/lang/String;

    const/4 v9, 0x0

    .line 34
    invoke-direct {v3, v7, v8, v9}, Lcom/github/catvod/spider/merge/T/m;-><init>(Lcom/github/catvod/spider/merge/U/G;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/c;)V

    .line 35
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge/T/c;->e(Lcom/github/catvod/spider/merge/T/c;)V

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/T/s;->i()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/github/catvod/spider/merge/T/m;->N(Ljava/util/Collection;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v13, v3}, Lcom/github/catvod/spider/merge/T/m;->M(Lcom/github/catvod/spider/merge/T/s;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/U/b;->i0(Lcom/github/catvod/spider/merge/T/m;)V

    invoke-virtual {v2, v3, v10}, Lcom/github/catvod/spider/merge/U/b;->g0(Lcom/github/catvod/spider/merge/T/m;I)V

    invoke-virtual {v2, v6}, Lcom/github/catvod/spider/merge/U/b;->j0(Lcom/github/catvod/spider/merge/T/m;)Z

    .line 36
    iget-object v6, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3bc

    const/4 v7, 0x1

    goto :goto_3bd

    :cond_3bc
    const/4 v7, 0x0

    :goto_3bd
    invoke-static {v7}, Lcom/github/catvod/spider/merge/R/c;->e(Z)V

    iget-object v7, v2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_193

    .line 37
    :cond_3cd
    sget-object v3, Lcom/github/catvod/spider/merge/U/A;->p:[Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3ef

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v7, v3}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3de

    goto/16 :goto_24c

    :cond_3de
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->v(Z)V

    .line 40
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3eb

    :goto_3e8
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_3eb
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_41b

    :cond_3ef
    sget-object v3, Lcom/github/catvod/spider/merge/U/A;->l:[Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_197

    const-string v1, "name"

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v2, v1, v3}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41b

    invoke-virtual {v2, v7, v3}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_408

    goto/16 :goto_24c

    :cond_408
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/b;->v(Z)V

    .line 43
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_415

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_415
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->l()V

    :cond_41b
    :goto_41b
    const/4 v4, 0x1

    :goto_41c
    return v4

    :cond_41d
    move-object/from16 v0, v16

    move-object/from16 v7, v28

    move-object/from16 v3, v29

    move-object/from16 v16, v8

    move-object/from16 v8, v26

    const/16 v26, 0x3

    move-object/from16 v41, v25

    move-object/from16 v25, v9

    move-object/from16 v9, v41

    .line 44
    move-object v2, v1

    check-cast v2, Lcom/github/catvod/spider/merge/U/N;

    .line 45
    iget-object v1, v2, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v28, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v29, v0

    const-string v0, "isindex"

    move-object/from16 v32, v9

    const-string v9, "svg"

    move-object/from16 v33, v8

    const-string v8, "img"

    move-object/from16 v34, v7

    const-string v7, "nobr"

    move-object/from16 v35, v3

    const-string v3, "hr"

    move-object/from16 v36, v6

    const-string v6, "option"

    move-object/from16 v37, v6

    const-string v6, "button"

    move-object/from16 v38, v6

    const-string v6, "a"

    move-object/from16 v39, v6

    const/16 v6, 0x61

    move-object/from16 v40, v14

    const/16 v14, 0x18

    if-eq v2, v6, :cond_8a4

    const/16 v6, 0x62

    if-eq v2, v6, :cond_890

    sparse-switch v2, :sswitch_data_dd0

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    packed-switch v2, :pswitch_data_e8a

    goto/16 :goto_89c

    :sswitch_477
    const-string v2, "noembed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_481

    goto/16 :goto_774

    :cond_481
    const/16 v2, 0x35

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x35

    goto/16 :goto_8b5

    :sswitch_48d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_495

    goto/16 :goto_7c2

    :cond_495
    const/16 v2, 0x34

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x34

    goto/16 :goto_8b5

    :sswitch_4a1
    const-string v2, "plaintext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4ab

    goto/16 :goto_7c2

    :cond_4ab
    const/16 v2, 0x33

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x33

    goto/16 :goto_8b5

    :sswitch_4b7
    const-string v2, "listing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c1

    goto/16 :goto_7c2

    :cond_4c1
    const/16 v2, 0x32

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x32

    goto/16 :goto_8b5

    :sswitch_4cd
    const-string v2, "table"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d7

    goto/16 :goto_7c2

    :cond_4d7
    const/16 v2, 0x31

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x31

    goto/16 :goto_8b5

    :sswitch_4e3
    const-string v2, "small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4ed

    goto/16 :goto_7c2

    :cond_4ed
    const/16 v2, 0x30

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x30

    goto/16 :goto_8b5

    :sswitch_4f9
    const-string v2, "input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_503

    goto/16 :goto_7c2

    :cond_503
    const/16 v2, 0x2f

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2f

    goto/16 :goto_8b5

    :sswitch_50f
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_519

    goto/16 :goto_7c2

    :cond_519
    const/16 v2, 0x2e

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2e

    goto/16 :goto_8b5

    :sswitch_525
    const-string v2, "embed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52f

    goto/16 :goto_774

    :cond_52f
    const/16 v2, 0x2d

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2d

    goto/16 :goto_8b5

    :sswitch_53b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_543

    goto/16 :goto_7c2

    :cond_543
    const/16 v2, 0x2c

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2c

    goto/16 :goto_8b5

    :sswitch_54f
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_557

    goto/16 :goto_7c2

    :cond_557
    const/16 v2, 0x2b

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2b

    goto/16 :goto_8b5

    :sswitch_563
    const-string v2, "math"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56d

    goto/16 :goto_7c2

    :cond_56d
    const/16 v2, 0x2a

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2a

    goto/16 :goto_8b5

    :sswitch_579
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_581

    goto/16 :goto_7c2

    :cond_581
    const/16 v2, 0x29

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x29

    goto/16 :goto_8b5

    :sswitch_58d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_595

    goto/16 :goto_7c2

    :cond_595
    const/16 v2, 0x28

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x28

    goto/16 :goto_8b5

    :sswitch_5a1
    const-string v2, "font"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5ab

    goto/16 :goto_7c2

    :cond_5ab
    const/16 v2, 0x27

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x27

    goto/16 :goto_8b5

    :sswitch_5b7
    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c1

    goto/16 :goto_7c2

    :cond_5c1
    const/16 v2, 0x26

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x26

    goto/16 :goto_8b5

    :sswitch_5cd
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d5

    goto/16 :goto_774

    :cond_5d5
    const/16 v2, 0x25

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x25

    goto/16 :goto_8b5

    :sswitch_5e1
    const-string v2, "area"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5eb

    goto/16 :goto_7c2

    :cond_5eb
    const/16 v2, 0x24

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x24

    goto/16 :goto_8b5

    :sswitch_5f7
    const-string v2, "xmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_601

    goto/16 :goto_7c2

    :cond_601
    const/16 v2, 0x23

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x23

    goto/16 :goto_8b5

    :sswitch_60d
    const-string v2, "wbr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_617

    goto/16 :goto_7c2

    :cond_617
    const/16 v2, 0x22

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x22

    goto/16 :goto_8b5

    :sswitch_623
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62b

    goto/16 :goto_7c2

    :cond_62b
    const/16 v2, 0x21

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x21

    goto/16 :goto_8b5

    :sswitch_637
    const-string v2, "pre"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_641

    goto/16 :goto_7c2

    :cond_641
    const/16 v2, 0x20

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x20

    goto/16 :goto_8b5

    :sswitch_64d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_655

    goto/16 :goto_7c2

    :cond_655
    const/16 v2, 0x1f

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x1f

    goto/16 :goto_8b5

    :sswitch_661
    const-string v2, "big"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66b

    goto/16 :goto_7c2

    :cond_66b
    const/16 v2, 0x1e

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x1e

    goto/16 :goto_8b5

    :sswitch_677
    const-string v2, "tt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_681

    goto/16 :goto_774

    :cond_681
    const/16 v2, 0x1d

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x1d

    goto/16 :goto_8b5

    :sswitch_68d
    const-string v2, "rt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_697

    goto/16 :goto_7c2

    :cond_697
    const/16 v2, 0x1c

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x1c

    goto/16 :goto_8b5

    :sswitch_6a3
    const-string v2, "rp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6ad

    goto/16 :goto_7c2

    :cond_6ad
    const/16 v2, 0x1b

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x1b

    goto/16 :goto_8b5

    :sswitch_6b9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c1

    goto/16 :goto_7c2

    :cond_6c1
    const/16 v2, 0x1a

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x1a

    goto/16 :goto_8b5

    :sswitch_6cd
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d5

    goto/16 :goto_7c2

    :cond_6d5
    const/16 v2, 0x19

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x19

    goto/16 :goto_8b5

    :sswitch_6e1
    const-string v2, "em"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6eb

    goto/16 :goto_7c2

    :cond_6eb
    const/16 v2, 0x12

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x12

    goto/16 :goto_8b5

    :sswitch_6f7
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6ff

    goto/16 :goto_7c2

    :cond_6ff
    const/16 v2, 0x11

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x11

    goto/16 :goto_8b5

    :sswitch_70b
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_713

    goto/16 :goto_7c2

    :cond_713
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x10

    goto/16 :goto_8b5

    :sswitch_71d
    move-object/from16 v2, v40

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_726

    goto :goto_774

    :cond_726
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0xf

    goto/16 :goto_8b5

    :sswitch_730
    const-string v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73a

    goto/16 :goto_7c2

    :cond_73a
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0xe

    goto/16 :goto_8b5

    :sswitch_744
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74e

    goto/16 :goto_7c2

    :cond_74e
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0xd

    goto/16 :goto_8b5

    :sswitch_758
    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_762

    goto/16 :goto_7c2

    :cond_762
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0xc

    goto/16 :goto_8b5

    :sswitch_76c
    const-string v2, "optgroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_775

    :goto_774
    goto :goto_7c2

    :cond_775
    const/16 v2, 0x9

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x9

    goto/16 :goto_8b5

    :sswitch_781
    const-string v2, "strong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78a

    goto :goto_7c2

    :cond_78a
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x8

    goto/16 :goto_8b5

    :sswitch_794
    const-string v2, "strike"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79d

    goto :goto_7c2

    :cond_79d
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x7

    goto/16 :goto_8b5

    :sswitch_7a7
    const-string v2, "select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b0

    goto :goto_7c2

    :cond_7b0
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x6

    goto/16 :goto_8b5

    :sswitch_7ba
    const-string v2, "textarea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c5

    :goto_7c2
    move-object/from16 v5, v37

    goto :goto_7fd

    :cond_7c5
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x5

    goto/16 :goto_8b5

    :sswitch_7cf
    move-object/from16 v5, v37

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d8

    goto :goto_7fd

    :cond_7d8
    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x4

    goto/16 :goto_8b5

    :sswitch_7e0
    move-object/from16 v5, v37

    const-string v2, "keygen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7eb

    goto :goto_7fd

    :cond_7eb
    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x3

    goto/16 :goto_8b5

    :sswitch_7f3
    move-object/from16 v5, v37

    const-string v2, "iframe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_801

    :goto_7fd
    move-object/from16 v6, v38

    goto/16 :goto_89c

    :cond_801
    move-object/from16 v6, v38

    move-object/from16 v2, v39

    const/16 v30, 0x2

    goto/16 :goto_8b5

    :sswitch_809
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_815

    goto/16 :goto_89c

    :cond_815
    move-object/from16 v2, v39

    const/16 v30, 0x1

    goto/16 :goto_8b5

    :sswitch_81b
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    const-string v2, "frameset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_829

    goto/16 :goto_89c

    :cond_829
    move-object/from16 v2, v39

    const/16 v30, 0x0

    goto/16 :goto_8b5

    :pswitch_82f
    move-object/from16 v2, v36

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_839

    goto/16 :goto_89c

    :cond_839
    move-object/from16 v2, v39

    const/16 v30, 0x18

    goto/16 :goto_8b5

    :pswitch_83f
    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_848

    goto :goto_89c

    :cond_848
    const/16 v2, 0x17

    move-object/from16 v2, v39

    const/16 v30, 0x17

    goto/16 :goto_8b5

    :pswitch_850
    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_859

    goto :goto_89c

    :cond_859
    const/16 v2, 0x16

    move-object/from16 v2, v39

    const/16 v30, 0x16

    goto :goto_8b5

    :pswitch_860
    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_869

    goto :goto_89c

    :cond_869
    const/16 v2, 0x15

    move-object/from16 v2, v39

    const/16 v30, 0x15

    goto :goto_8b5

    :pswitch_870
    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_879

    goto :goto_89c

    :cond_879
    const/16 v2, 0x14

    move-object/from16 v2, v39

    const/16 v30, 0x14

    goto :goto_8b5

    :pswitch_880
    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_889

    goto :goto_89c

    :cond_889
    const/16 v2, 0x13

    move-object/from16 v2, v39

    const/16 v30, 0x13

    goto :goto_8b5

    :cond_890
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89f

    :goto_89c
    move-object/from16 v2, v39

    goto :goto_8b0

    :cond_89f
    move-object/from16 v2, v39

    const/16 v30, 0xb

    goto :goto_8b5

    :cond_8a4
    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v2, v39

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b3

    :goto_8b0
    const/16 v30, -0x1

    goto :goto_8b5

    :cond_8b3
    const/16 v30, 0xa

    :goto_8b5
    move-object/from16 v10, p0

    move-object/from16 v12, p2

    packed-switch v30, :pswitch_data_e9a

    move-object/from16 v0, v25

    move-object/from16 v13, v28

    const/4 v2, 0x1

    invoke-static {v1}, Lcom/github/catvod/spider/merge/U/G;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d0c

    goto/16 :goto_d5e

    :pswitch_8c9
    move-object/from16 v13, v28

    goto/16 :goto_c93

    :pswitch_8cd
    move-object/from16 v13, v28

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->x()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v1

    if-eqz v1, :cond_8da

    goto/16 :goto_d0a

    :cond_8da
    invoke-virtual {v12, v11}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    const-string v1, "action"

    invoke-virtual {v13, v1}, Lcom/github/catvod/spider/merge/U/O;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8fe

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->x()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v2

    if-eqz v2, :cond_8fe

    invoke-virtual {v13, v1}, Lcom/github/catvod/spider/merge/U/O;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8fe

    iget-object v4, v13, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v4, v1}, Lcom/github/catvod/spider/merge/T/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/github/catvod/spider/merge/T/c;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/c;

    :cond_8fe
    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    const-string v1, "label"

    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    const-string v1, "prompt"

    invoke-virtual {v13, v1}, Lcom/github/catvod/spider/merge/U/O;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_917

    iget-object v1, v13, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    const-string v2, "prompt"

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/T/c;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_919

    :cond_917
    const-string v1, "This is a searchable index. Enter search keywords: "

    :goto_919
    new-instance v2, Lcom/github/catvod/spider/merge/U/I;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge/U/I;-><init>()V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge/U/I;->k(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/I;

    invoke-virtual {v12, v2}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    new-instance v1, Lcom/github/catvod/spider/merge/T/c;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge/T/c;-><init>()V

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/U/O;->u()Z

    move-result v2

    if-eqz v2, :cond_951

    iget-object v2, v13, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_935
    :goto_935
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_951

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/a;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/a;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/catvod/spider/merge/U/A;->n:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_935

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge/T/c;->v(Lcom/github/catvod/spider/merge/T/a;)Lcom/github/catvod/spider/merge/T/c;

    goto :goto_935

    :cond_951
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Lcom/github/catvod/spider/merge/T/c;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->g(Lcom/github/catvod/spider/merge/T/c;)Z

    const-string v0, "label"

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/U/j1;->h(Ljava/lang/String;)Z

    invoke-virtual {v12, v11}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto/16 :goto_ca8

    :pswitch_966
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_973

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    :cond_973
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    iget-object v0, v12, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    sget-object v1, Lcom/github/catvod/spider/merge/U/i1;->g:Lcom/github/catvod/spider/merge/U/f1;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    goto/16 :goto_ca8

    :pswitch_97f
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    .line 47
    iget-object v1, v12, Lcom/github/catvod/spider/merge/U/j1;->d:Lcom/github/catvod/spider/merge/T/h;

    .line 48
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/h;->F0()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_995

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_995

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    :cond_995
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->i:Lcom/github/catvod/spider/merge/U/z;

    goto/16 :goto_c74

    :pswitch_9a0
    move-object/from16 v13, v28

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/T/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca8

    goto/16 :goto_cb1

    :pswitch_9b9
    move-object/from16 v13, v28

    invoke-virtual {v12, v9}, Lcom/github/catvod/spider/merge/U/b;->y(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-nez v0, :cond_9ca

    invoke-virtual {v13, v8}, Lcom/github/catvod/spider/merge/U/O;->v(Ljava/lang/String;)Lcom/github/catvod/spider/merge/U/O;

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    move-result v4

    goto/16 :goto_d63

    :cond_9ca
    :goto_9ca
    const/4 v2, 0x1

    goto/16 :goto_d5e

    :pswitch_9cd
    move-object/from16 v13, v28

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {v12, v7, v0}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0d

    .line 50
    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {v12, v7}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto/16 :goto_c0a

    :pswitch_9e1
    move-object/from16 v13, v28

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    move-object/from16 v1, v16

    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f0

    goto/16 :goto_d0a

    .line 51
    :cond_9f0
    iget-object v0, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ca8

    .line 53
    iget-object v0, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/U/O;->u()Z

    move-result v1

    if-eqz v1, :cond_ca8

    iget-object v1, v13, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a0d
    :goto_a0d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/s;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a0d

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/github/catvod/spider/merge/T/c;->v(Lcom/github/catvod/spider/merge/T/a;)Lcom/github/catvod/spider/merge/T/c;

    goto :goto_a0d

    :pswitch_a2b
    move-object/from16 v1, v16

    move-object/from16 v0, v25

    move-object/from16 v13, v28

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->x()Lcom/github/catvod/spider/merge/T/p;

    move-result-object v2

    if-eqz v2, :cond_a42

    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a42

    :goto_a3d
    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    goto/16 :goto_d0a

    :cond_a42
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4b

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->q()V

    :cond_a4b
    const/4 v0, 0x1

    invoke-virtual {v12, v13, v0, v0}, Lcom/github/catvod/spider/merge/U/b;->L(Lcom/github/catvod/spider/merge/U/N;ZZ)Lcom/github/catvod/spider/merge/T/p;

    goto/16 :goto_ca8

    :pswitch_a51
    move-object/from16 v1, v16

    move-object/from16 v13, v28

    const/4 v0, 0x1

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    .line 55
    iget-object v2, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v0, :cond_d0a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_a78

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0a

    :cond_a78
    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a80

    goto/16 :goto_d0a

    :cond_a80
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    invoke-virtual {v13}, Lcom/github/catvod/spider/merge/U/O;->u()Z

    move-result v0

    if-eqz v0, :cond_ca8

    invoke-virtual {v12, v15}, Lcom/github/catvod/spider/merge/U/b;->y(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-eqz v0, :cond_ca8

    iget-object v1, v13, Lcom/github/catvod/spider/merge/U/O;->n:Lcom/github/catvod/spider/merge/T/c;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a96
    :goto_a96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge/T/s;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a96

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->e()Lcom/github/catvod/spider/merge/T/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/github/catvod/spider/merge/T/c;->v(Lcom/github/catvod/spider/merge/T/a;)Lcom/github/catvod/spider/merge/T/c;

    goto :goto_a96

    :pswitch_ab4
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac1

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    :cond_ac1
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    goto/16 :goto_c8f

    :pswitch_ac6
    move-object/from16 v13, v28

    :cond_ac8
    :goto_ac8
    const/4 v2, 0x1

    goto/16 :goto_d5b

    :pswitch_acb
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad8

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    :cond_ad8
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    iget-object v0, v12, Lcom/github/catvod/spider/merge/U/j1;->b:Lcom/github/catvod/spider/merge/U/a;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/a;->C(Ljava/lang/String;)Z

    goto/16 :goto_cb1

    :pswitch_ae4
    move-object/from16 v13, v28

    const-string v0, "ruby"

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v12, v0, v1}, Lcom/github/catvod/spider/merge/U/b;->C(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca8

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->v(Z)V

    .line 59
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9ca

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    .line 60
    iget-object v1, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_b04
    if-ltz v1, :cond_9ca

    iget-object v2, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1a

    goto/16 :goto_9ca

    :cond_b1a
    iget-object v2, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_b04

    :pswitch_b22
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    .line 62
    iget-object v1, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b32
    if-lez v2, :cond_b5e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b48

    invoke-virtual {v12, v4}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto :goto_b5e

    :cond_b48
    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/U/b;->R(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v5

    if-eqz v5, :cond_b5b

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/github/catvod/spider/merge/U/A;->j:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b5b

    goto :goto_b5e

    :cond_b5b
    add-int/lit8 v2, v2, -0x1

    goto :goto_b32

    :cond_b5e
    :goto_b5e
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9ca

    goto/16 :goto_be8

    :pswitch_b66
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c89

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto/16 :goto_c89

    :pswitch_b75
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b82

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    :cond_b82
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/j1;->a()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->i:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9ca

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->Z()Lcom/github/catvod/spider/merge/T/m;

    goto/16 :goto_9ca

    :pswitch_b9a
    move-object/from16 v0, v25

    move-object/from16 v13, v28

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    .line 64
    iget-object v1, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v2, v14, :cond_baf

    add-int/lit8 v4, v2, -0x18

    goto :goto_bb0

    :cond_baf
    const/4 v4, 0x0

    :goto_bb0
    if-lt v2, v4, :cond_be2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/catvod/spider/merge/U/A;->k:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bcc

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto :goto_be2

    :cond_bcc
    invoke-virtual {v12, v3}, Lcom/github/catvod/spider/merge/U/b;->R(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v5

    if-eqz v5, :cond_bdf

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/github/catvod/spider/merge/U/A;->j:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bdf

    goto :goto_be2

    :cond_bdf
    add-int/lit8 v2, v2, -0x1

    goto :goto_bb0

    :cond_be2
    :goto_be2
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9ca

    :goto_be8
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto/16 :goto_9ca

    :pswitch_bed
    move-object/from16 v13, v28

    invoke-virtual {v12, v2}, Lcom/github/catvod/spider/merge/U/b;->w(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-eqz v0, :cond_c0a

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {v12, v2}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    invoke-virtual {v12, v2}, Lcom/github/catvod/spider/merge/U/b;->y(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    if-eqz v0, :cond_c0a

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->i0(Lcom/github/catvod/spider/merge/T/m;)V

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->j0(Lcom/github/catvod/spider/merge/T/m;)Z

    goto :goto_c0a

    :pswitch_c08
    move-object/from16 v13, v28

    :cond_c0a
    :goto_c0a
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    :cond_c0d
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->e0(Lcom/github/catvod/spider/merge/T/m;)V

    goto/16 :goto_ca8

    :pswitch_c16
    move-object/from16 v13, v28

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    iget-boolean v0, v13, Lcom/github/catvod/spider/merge/U/O;->m:Z

    if-eqz v0, :cond_c28

    goto/16 :goto_ca8

    :cond_c28
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->q0()Lcom/github/catvod/spider/merge/U/B;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->i:Lcom/github/catvod/spider/merge/U/z;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c58

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->k:Lcom/github/catvod/spider/merge/U/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c58

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->m:Lcom/github/catvod/spider/merge/U/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c58

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->n:Lcom/github/catvod/spider/merge/U/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c58

    sget-object v1, Lcom/github/catvod/spider/merge/U/B;->o:Lcom/github/catvod/spider/merge/U/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c55

    goto :goto_c58

    :cond_c55
    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->p:Lcom/github/catvod/spider/merge/U/i;

    goto :goto_c74

    :cond_c58
    :goto_c58
    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->q:Lcom/github/catvod/spider/merge/U/j;

    goto :goto_c74

    :pswitch_c5b
    move-object/from16 v13, v28

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    .line 66
    iget-boolean v0, v13, Lcom/github/catvod/spider/merge/U/O;->m:Z

    if-nez v0, :cond_ca8

    .line 67
    iget-object v0, v12, Lcom/github/catvod/spider/merge/U/j1;->c:Lcom/github/catvod/spider/merge/U/S;

    sget-object v1, Lcom/github/catvod/spider/merge/U/i1;->c:Lcom/github/catvod/spider/merge/U/z0;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge/U/S;->v(Lcom/github/catvod/spider/merge/U/i1;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->S()V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->h:Lcom/github/catvod/spider/merge/U/y;

    :goto_c74
    const/4 v2, 0x1

    goto/16 :goto_d06

    :pswitch_c77
    move-object/from16 v13, v28

    invoke-virtual {v12, v5}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac8

    invoke-virtual {v12, v5}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto/16 :goto_ac8

    :pswitch_c84
    move-object/from16 v13, v28

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    :cond_c89
    :goto_c89
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_cb1

    :pswitch_c8d
    move-object/from16 v13, v28

    :goto_c8f
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    :goto_c93
    invoke-static {v13, v12}, Lcom/github/catvod/spider/merge/U/B;->b(Lcom/github/catvod/spider/merge/U/N;Lcom/github/catvod/spider/merge/U/b;)V

    goto :goto_ca8

    :pswitch_c97
    move-object/from16 v13, v28

    invoke-virtual {v12, v6}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cab

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    invoke-virtual {v12, v6}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->e(Lcom/github/catvod/spider/merge/U/P;)Z

    :cond_ca8
    :goto_ca8
    const/4 v4, 0x1

    goto/16 :goto_d63

    :cond_cab
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    :goto_cb1
    const/4 v0, 0x0

    :goto_cb2
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s(Z)V

    goto :goto_ca8

    :pswitch_cb6
    move-object/from16 v13, v28

    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    .line 68
    iget-object v0, v12, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d0a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_cdc

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cdc

    goto :goto_d0a

    :cond_cdc
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->t()Z

    move-result v1

    if-nez v1, :cond_ce3

    goto :goto_d0a

    :cond_ce3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/m;->l0()Lcom/github/catvod/spider/merge/T/m;

    move-result-object v3

    if-eqz v3, :cond_cf2

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/T/s;->C()V

    :cond_cf2
    :goto_cf2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_d01

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_cf2

    :cond_d01
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->t:Lcom/github/catvod/spider/merge/U/n;

    :goto_d06
    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->s0(Lcom/github/catvod/spider/merge/U/B;)V

    goto :goto_ca8

    :cond_d0a
    :goto_d0a
    const/4 v4, 0x0

    goto :goto_d63

    :cond_d0c
    sget-object v3, Lcom/github/catvod/spider/merge/U/A;->h:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d1e

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/b;->B(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5e

    invoke-virtual {v12, v0}, Lcom/github/catvod/spider/merge/U/j1;->f(Ljava/lang/String;)Z

    goto :goto_d5e

    :cond_d1e
    sget-object v0, Lcom/github/catvod/spider/merge/U/A;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    sget-object v0, Lcom/github/catvod/spider/merge/U/B;->d:Lcom/github/catvod/spider/merge/U/u;

    move-object/from16 v1, p1

    invoke-virtual {v12, v1, v0}, Lcom/github/catvod/spider/merge/U/b;->d0(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/B;)Z

    move-result v4

    goto :goto_d63

    :cond_d2f
    move-object v0, v1

    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->l:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d44

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->N()V

    const/4 v0, 0x0

    goto/16 :goto_cb2

    :cond_d44
    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->m:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d51

    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->K(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto/16 :goto_ca8

    :cond_d51
    sget-object v1, Lcom/github/catvod/spider/merge/U/A;->o:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/S/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5b

    goto/16 :goto_a3d

    :cond_d5b
    :goto_d5b
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/U/b;->h0()V

    :cond_d5e
    :goto_d5e
    invoke-virtual {v12, v13}, Lcom/github/catvod/spider/merge/U/b;->H(Lcom/github/catvod/spider/merge/U/N;)Lcom/github/catvod/spider/merge/T/m;

    goto/16 :goto_ca8

    :goto_d63
    return v4

    :cond_d64
    move-object v10, v0

    move-object v12, v2

    .line 70
    invoke-virtual {v12, v10}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_d6c
    .sparse-switch
        -0x4ec53386 -> :sswitch_12f
        0x70 -> :sswitch_124
        0xc50 -> :sswitch_118
        0xc80 -> :sswitch_10c
        0xc90 -> :sswitch_100
        0xd7d -> :sswitch_f4
        0x2e39a2 -> :sswitch_e8
        0x300cc4 -> :sswitch_dc
        0x3107ab -> :sswitch_d0
        0x35f74a -> :sswitch_c4
        0x6f67a51c -> :sswitch_b6
    .end sparse-switch

    :pswitch_data_d9a
    .packed-switch 0xcc9
        :pswitch_175
        :pswitch_169
        :pswitch_15d
        :pswitch_151
        :pswitch_143
        :pswitch_139
    .end packed-switch

    :pswitch_data_daa
    .packed-switch 0x0
        :pswitch_281
        :pswitch_264
        :pswitch_25b
        :pswitch_245
        :pswitch_245
        :pswitch_20a
        :pswitch_20a
        :pswitch_20a
        :pswitch_20a
        :pswitch_20a
        :pswitch_20a
        :pswitch_1f6
        :pswitch_1e4
        :pswitch_1a5
        :pswitch_19d
        :pswitch_197
        :pswitch_197
    .end packed-switch

    :sswitch_data_dd0
    .sparse-switch
        -0x620c002b -> :sswitch_81b
        -0x521dd8ce -> :sswitch_809
        -0x47007d5c -> :sswitch_7f3
        -0x43a19f6f -> :sswitch_7e0
        -0x3c35778b -> :sswitch_7cf
        -0x3bcc48c6 -> :sswitch_7ba
        -0x3600cb04 -> :sswitch_7a7
        -0x352aa04e -> :sswitch_794
        -0x352a8969 -> :sswitch_781
        -0x4d08054 -> :sswitch_76c
        0x69 -> :sswitch_758
        0x73 -> :sswitch_744
        0x75 -> :sswitch_730
        0xc50 -> :sswitch_71d
        0xc80 -> :sswitch_70b
        0xc90 -> :sswitch_6f7
        0xca8 -> :sswitch_6e1
        0xd0a -> :sswitch_6cd
        0xd7d -> :sswitch_6b9
        0xe3e -> :sswitch_6a3
        0xe42 -> :sswitch_68d
        0xe80 -> :sswitch_677
        0x17d00 -> :sswitch_661
        0x197c3 -> :sswitch_64d
        0x1b2a3 -> :sswitch_637
        0x1be64 -> :sswitch_623
        0x1cb07 -> :sswitch_60d
        0x1d01b -> :sswitch_5f7
        0x2dd08d -> :sswitch_5e1
        0x2e39a2 -> :sswitch_5cd
        0x2eaded -> :sswitch_5b7
        0x300c4f -> :sswitch_5a1
        0x300cc4 -> :sswitch_58d
        0x3107ab -> :sswitch_579
        0x330708 -> :sswitch_563
        0x33add1 -> :sswitch_54f
        0x35f74a -> :sswitch_53b
        0x5c24ed9 -> :sswitch_525
        0x5faa95b -> :sswitch_50f
        0x5fb57ca -> :sswitch_4f9
        0x6879507 -> :sswitch_4e3
        0x6903bce -> :sswitch_4cd
        0xad8ba84 -> :sswitch_4b7
        0x759d29f7 -> :sswitch_4a1
        0x7ca6c5e8 -> :sswitch_48d
        0x7e19b1b8 -> :sswitch_477
    .end sparse-switch

    :pswitch_data_e8a
    .packed-switch 0xcc9
        :pswitch_880
        :pswitch_870
        :pswitch_860
        :pswitch_850
        :pswitch_83f
        :pswitch_82f
    .end packed-switch

    :pswitch_data_e9a
    .packed-switch 0x0
        :pswitch_cb6
        :pswitch_c97
        :pswitch_c8d
        :pswitch_c84
        :pswitch_c77
        :pswitch_c5b
        :pswitch_c16
        :pswitch_c08
        :pswitch_c08
        :pswitch_c77
        :pswitch_bed
        :pswitch_c08
        :pswitch_c08
        :pswitch_c08
        :pswitch_c08
        :pswitch_c84
        :pswitch_b9a
        :pswitch_b9a
        :pswitch_c08
        :pswitch_b75
        :pswitch_b75
        :pswitch_b75
        :pswitch_b75
        :pswitch_b75
        :pswitch_b75
        :pswitch_b66
        :pswitch_b22
        :pswitch_ae4
        :pswitch_ae4
        :pswitch_c08
        :pswitch_c08
        :pswitch_c84
        :pswitch_acb
        :pswitch_ac6
        :pswitch_c84
        :pswitch_ab4
        :pswitch_c84
        :pswitch_a51
        :pswitch_c08
        :pswitch_c08
        :pswitch_a2b
        :pswitch_9e1
        :pswitch_ac6
        :pswitch_9cd
        :pswitch_ac6
        :pswitch_c84
        :pswitch_9b9
        :pswitch_9a0
        :pswitch_c08
        :pswitch_97f
        :pswitch_acb
        :pswitch_966
        :pswitch_8cd
        :pswitch_8c9
    .end packed-switch
.end method

.method final e(Lcom/github/catvod/spider/merge/U/P;Lcom/github/catvod/spider/merge/U/b;)Z
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge/U/M;

    .line 2
    iget-object p1, p1, Lcom/github/catvod/spider/merge/U/O;->e:Ljava/lang/String;

    .line 3
    iget-object v0, p2, Lcom/github/catvod/spider/merge/U/j1;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->y(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1a
    if-ltz v1, :cond_49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/T/m;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/T/m;->j0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->u(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/j1;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    :cond_38
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge/U/b;->a0(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/m;

    goto :goto_49

    :cond_3c
    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge/U/b;->R(Lcom/github/catvod/spider/merge/T/m;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge/U/b;->r(Lcom/github/catvod/spider/merge/U/B;)V

    return v2

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_49
    :goto_49
    return v3
.end method
