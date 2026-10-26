.class public abstract Lcom/github/catvod/spider/merge/H/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/github/catvod/spider/merge/H/w;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge/H/w;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/H/w;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge/H/X;->a:I

    return-void
.end method

.method public static a(Lcom/github/catvod/spider/merge/H/a;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/X;
    .registers 4

    if-nez p1, :cond_4

    sget-object p1, Lcom/github/catvod/spider/merge/G/D;->c:Lcom/github/catvod/spider/merge/G/y;

    :cond_4
    iget-object v0, p1, Lcom/github/catvod/spider/merge/G/D;->a:Lcom/github/catvod/spider/merge/G/D;

    if-eqz v0, :cond_2b

    sget-object v1, Lcom/github/catvod/spider/merge/G/D;->c:Lcom/github/catvod/spider/merge/G/y;

    if-ne p1, v1, :cond_d

    goto :goto_2b

    :cond_d
    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/H/X;->a(Lcom/github/catvod/spider/merge/H/a;Lcom/github/catvod/spider/merge/G/D;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v0

    iget-object p0, p0, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    iget p1, p1, Lcom/github/catvod/spider/merge/G/D;->b:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/H/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge/H/f0;

    iget-object p0, p0, Lcom/github/catvod/spider/merge/H/f0;->c:Lcom/github/catvod/spider/merge/H/m;

    iget p0, p0, Lcom/github/catvod/spider/merge/H/m;->b:I

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_2b
    sget-object p0, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    return-object p0
.end method

.method public static b(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/Y;Ljava/util/IdentityHashMap;)Lcom/github/catvod/spider/merge/H/X;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/Y;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            ">;)",
            "Lcom/github/catvod/spider/merge/H/X;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/X;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v0, :cond_10

    return-object v0

    .line 1
    :cond_10
    iget-object v0, p1, Lcom/github/catvod/spider/merge/H/Y;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v0

    new-array v0, v0, [Lcom/github/catvod/spider/merge/H/X;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_27
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_59

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/H/X;->c(I)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/github/catvod/spider/merge/H/X;->b(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/Y;Ljava/util/IdentityHashMap;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v4

    if-nez v3, :cond_3b

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/H/X;->c(I)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v6

    if-eq v4, v6, :cond_56

    :cond_3b
    if-nez v3, :cond_54

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v0

    new-array v0, v0, [Lcom/github/catvod/spider/merge/H/X;

    const/4 v3, 0x0

    :goto_44
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v6

    if-ge v3, v6, :cond_53

    invoke-virtual {p0, v3}, Lcom/github/catvod/spider/merge/H/X;->c(I)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v6

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_53
    const/4 v3, 0x1

    :cond_54
    aput-object v4, v0, v2

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_59
    if-nez v3, :cond_62

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge/H/Y;->a(Lcom/github/catvod/spider/merge/H/X;)Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {p2, p0, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_62
    array-length v2, v0

    if-nez v2, :cond_68

    sget-object v0, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    goto :goto_81

    :cond_68
    array-length v2, v0

    if-ne v2, v5, :cond_76

    aget-object v0, v0, v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object v0

    goto :goto_81

    :cond_76
    move-object v1, p0

    check-cast v1, Lcom/github/catvod/spider/merge/H/p;

    new-instance v2, Lcom/github/catvod/spider/merge/H/p;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/p;->d:[I

    invoke-direct {v2, v0, v1}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    move-object v0, v2

    :goto_81
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge/H/Y;->a(Lcom/github/catvod/spider/merge/H/X;)Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {p2, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static g(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/X;ZLcom/github/catvod/spider/merge/J/d;)Lcom/github/catvod/spider/merge/H/X;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Z",
            "Lcom/github/catvod/spider/merge/J/d<",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            "Lcom/github/catvod/spider/merge/H/X;",
            ">;)",
            "Lcom/github/catvod/spider/merge/H/X;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-eq v0, v1, :cond_272

    invoke-virtual/range {p0 .. p1}, Lcom/github/catvod/spider/merge/H/X;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_272

    :cond_12
    instance-of v4, v0, Lcom/github/catvod/spider/merge/H/n0;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_108

    instance-of v8, v1, Lcom/github/catvod/spider/merge/H/n0;

    if-eqz v8, :cond_108

    check-cast v0, Lcom/github/catvod/spider/merge/H/n0;

    check-cast v1, Lcom/github/catvod/spider/merge/H/n0;

    if-eqz v3, :cond_39

    .line 1
    invoke-virtual {v3, v0, v1}, Lcom/github/catvod/spider/merge/J/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v4, :cond_30

    :cond_2d
    :goto_2d
    move-object v0, v4

    goto/16 :goto_107

    :cond_30
    invoke-virtual {v3, v1, v0}, Lcom/github/catvod/spider/merge/J/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v4, :cond_39

    goto :goto_2d

    :cond_39
    const/4 v4, 0x0

    const/4 v8, 0x2

    .line 2
    sget-object v9, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    if-eqz v2, :cond_45

    if-ne v0, v9, :cond_42

    goto :goto_7c

    :cond_42
    if-ne v1, v9, :cond_7b

    goto :goto_7c

    :cond_45
    if-ne v0, v9, :cond_4a

    if-ne v1, v9, :cond_4a

    goto :goto_7c

    :cond_4a
    if-ne v0, v9, :cond_63

    new-array v9, v8, [I

    iget v10, v1, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v10, v9, v6

    aput v5, v9, v7

    new-array v5, v8, [Lcom/github/catvod/spider/merge/H/X;

    iget-object v10, v1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    aput-object v10, v5, v6

    aput-object v4, v5, v7

    new-instance v10, Lcom/github/catvod/spider/merge/H/p;

    invoke-direct {v10, v5, v9}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    :goto_61
    move-object v9, v10

    goto :goto_7c

    :cond_63
    if-ne v1, v9, :cond_7b

    new-array v9, v8, [I

    iget v10, v0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v10, v9, v6

    aput v5, v9, v7

    new-array v5, v8, [Lcom/github/catvod/spider/merge/H/X;

    iget-object v10, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    aput-object v10, v5, v6

    aput-object v4, v5, v7

    new-instance v10, Lcom/github/catvod/spider/merge/H/p;

    invoke-direct {v10, v5, v9}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    goto :goto_61

    :cond_7b
    move-object v9, v4

    :goto_7c
    if-eqz v9, :cond_86

    if-eqz v3, :cond_83

    .line 3
    invoke-virtual {v3, v0, v1, v9}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    move-object v0, v9

    goto/16 :goto_107

    :cond_86
    iget v5, v0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    iget v9, v1, Lcom/github/catvod/spider/merge/H/n0;->d:I

    if-ne v5, v9, :cond_ad

    iget-object v4, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    iget-object v5, v1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-static {v4, v5, v2, v3}, Lcom/github/catvod/spider/merge/H/X;->g(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/X;ZLcom/github/catvod/spider/merge/J/d;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v2

    iget-object v4, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    if-ne v2, v4, :cond_9a

    goto/16 :goto_107

    :cond_9a
    iget-object v4, v1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    if-ne v2, v4, :cond_a0

    move-object v0, v1

    goto :goto_107

    :cond_a0
    iget v4, v0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    invoke-static {v2, v4}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object v2

    if-eqz v3, :cond_ab

    invoke-virtual {v3, v0, v1, v2}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    move-object v0, v2

    goto :goto_107

    :cond_ad
    if-eq v0, v1, :cond_bb

    iget-object v2, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    if-eqz v2, :cond_bd

    iget-object v5, v1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge/H/X;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_bb
    iget-object v4, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    :cond_bd
    new-array v2, v8, [I

    if-eqz v4, :cond_e1

    iget v5, v0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v5, v2, v6

    iget v9, v1, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v9, v2, v7

    if-le v5, v9, :cond_cf

    aput v9, v2, v6

    aput v5, v2, v7

    :cond_cf
    new-array v5, v8, [Lcom/github/catvod/spider/merge/H/X;

    aput-object v4, v5, v6

    aput-object v4, v5, v7

    new-instance v4, Lcom/github/catvod/spider/merge/H/p;

    invoke-direct {v4, v5, v2}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    if-eqz v3, :cond_2d

    :goto_dc
    invoke-virtual {v3, v0, v1, v4}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    :cond_e1
    iget v4, v0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v4, v2, v6

    iget v5, v1, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v5, v2, v7

    new-array v9, v8, [Lcom/github/catvod/spider/merge/H/X;

    iget-object v10, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    aput-object v10, v9, v6

    iget-object v11, v1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    aput-object v11, v9, v7

    if-le v4, v5, :cond_ff

    aput v5, v2, v6

    aput v4, v2, v7

    new-array v9, v8, [Lcom/github/catvod/spider/merge/H/X;

    aput-object v11, v9, v6

    aput-object v10, v9, v7

    :cond_ff
    new-instance v4, Lcom/github/catvod/spider/merge/H/p;

    invoke-direct {v4, v9, v2}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    if-eqz v3, :cond_2d

    goto :goto_dc

    :goto_107
    return-object v0

    :cond_108
    if-eqz v2, :cond_114

    .line 4
    instance-of v8, v0, Lcom/github/catvod/spider/merge/H/w;

    if-eqz v8, :cond_10f

    return-object v0

    :cond_10f
    instance-of v8, v1, Lcom/github/catvod/spider/merge/H/w;

    if-eqz v8, :cond_114

    return-object v1

    :cond_114
    if-eqz v4, :cond_12a

    new-instance v4, Lcom/github/catvod/spider/merge/H/p;

    check-cast v0, Lcom/github/catvod/spider/merge/H/n0;

    new-array v8, v7, [Lcom/github/catvod/spider/merge/H/X;

    .line 5
    iget-object v9, v0, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    aput-object v9, v8, v6

    new-array v9, v7, [I

    iget v0, v0, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v0, v9, v6

    invoke-direct {v4, v8, v9}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    move-object v0, v4

    .line 6
    :cond_12a
    instance-of v4, v1, Lcom/github/catvod/spider/merge/H/n0;

    if-eqz v4, :cond_142

    new-instance v4, Lcom/github/catvod/spider/merge/H/p;

    check-cast v1, Lcom/github/catvod/spider/merge/H/n0;

    new-array v8, v7, [Lcom/github/catvod/spider/merge/H/X;

    .line 7
    iget-object v9, v1, Lcom/github/catvod/spider/merge/H/n0;->c:Lcom/github/catvod/spider/merge/H/X;

    aput-object v9, v8, v6

    new-array v9, v7, [I

    iget v1, v1, Lcom/github/catvod/spider/merge/H/n0;->d:I

    aput v1, v9, v6

    invoke-direct {v4, v8, v9}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    move-object v1, v4

    .line 8
    :cond_142
    check-cast v0, Lcom/github/catvod/spider/merge/H/p;

    check-cast v1, Lcom/github/catvod/spider/merge/H/p;

    if-eqz v3, :cond_15c

    .line 9
    invoke-virtual {v3, v0, v1}, Lcom/github/catvod/spider/merge/J/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v4, :cond_153

    :cond_150
    :goto_150
    move-object v0, v4

    goto/16 :goto_272

    :cond_153
    invoke-virtual {v3, v1, v0}, Lcom/github/catvod/spider/merge/J/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/X;

    if-eqz v4, :cond_15c

    goto :goto_150

    :cond_15c
    iget-object v4, v0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v8, v4

    iget-object v9, v1, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v10, v9

    add-int/2addr v8, v10

    new-array v8, v8, [I

    array-length v4, v4

    array-length v9, v9

    add-int/2addr v4, v9

    new-array v9, v4, [Lcom/github/catvod/spider/merge/H/X;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_16d
    iget-object v13, v0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v14, v13

    if-ge v10, v14, :cond_1d7

    iget-object v14, v1, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v15, v14

    if-ge v11, v15, :cond_1d7

    iget-object v15, v0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object v15, v15, v10

    iget-object v6, v1, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object v6, v6, v11

    aget v7, v13, v10

    aget v5, v14, v11

    if-ne v7, v5, :cond_1b5

    aget v5, v13, v10

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_192

    if-nez v15, :cond_192

    if-nez v6, :cond_192

    const/4 v13, 0x1

    goto :goto_193

    :cond_192
    const/4 v13, 0x0

    :goto_193
    if-eqz v15, :cond_19f

    if-eqz v6, :cond_19f

    invoke-virtual {v15, v6}, Lcom/github/catvod/spider/merge/H/X;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19f

    const/4 v14, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v14, 0x0

    :goto_1a0
    if-nez v13, :cond_1ae

    if-eqz v14, :cond_1a5

    goto :goto_1ae

    :cond_1a5
    invoke-static {v15, v6, v2, v3}, Lcom/github/catvod/spider/merge/H/X;->g(Lcom/github/catvod/spider/merge/H/X;Lcom/github/catvod/spider/merge/H/X;ZLcom/github/catvod/spider/merge/J/d;)Lcom/github/catvod/spider/merge/H/X;

    move-result-object v6

    aput-object v6, v9, v12

    aput v5, v8, v12

    goto :goto_1b2

    :cond_1ae
    :goto_1ae
    aput-object v15, v9, v12

    aput v5, v8, v12

    :goto_1b2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1cd

    :cond_1b5
    const v7, 0x7fffffff

    aget v5, v13, v10

    aget v7, v14, v11

    if-ge v5, v7, :cond_1c7

    aput-object v15, v9, v12

    aget v5, v13, v10

    aput v5, v8, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1cf

    :cond_1c7
    aput-object v6, v9, v12

    aget v5, v14, v11

    aput v5, v8, v12

    :goto_1cd
    add-int/lit8 v11, v11, 0x1

    :goto_1cf
    add-int/lit8 v12, v12, 0x1

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_16d

    :cond_1d7
    array-length v2, v13

    if-ge v10, v2, :cond_1ee

    :goto_1da
    iget-object v2, v0, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v5, v2

    if-ge v10, v5, :cond_202

    iget-object v5, v0, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object v5, v5, v10

    aput-object v5, v9, v12

    aget v2, v2, v10

    aput v2, v8, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1da

    :cond_1ee
    :goto_1ee
    iget-object v2, v1, Lcom/github/catvod/spider/merge/H/p;->d:[I

    array-length v5, v2

    if-ge v11, v5, :cond_202

    iget-object v5, v1, Lcom/github/catvod/spider/merge/H/p;->c:[Lcom/github/catvod/spider/merge/H/X;

    aget-object v5, v5, v11

    aput-object v5, v9, v12

    aget v2, v2, v11

    aput v2, v8, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1ee

    :cond_202
    if-ge v12, v4, :cond_224

    const/4 v2, 0x1

    if-ne v12, v2, :cond_217

    const/4 v2, 0x0

    aget-object v4, v9, v2

    aget v2, v8, v2

    invoke-static {v4, v2}, Lcom/github/catvod/spider/merge/H/n0;->i(Lcom/github/catvod/spider/merge/H/X;I)Lcom/github/catvod/spider/merge/H/n0;

    move-result-object v2

    if-eqz v3, :cond_215

    invoke-virtual {v3, v0, v1, v2}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_215
    move-object v0, v2

    goto :goto_272

    :cond_217
    const/4 v2, 0x0

    invoke-static {v9, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [Lcom/github/catvod/spider/merge/H/X;

    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    goto :goto_225

    :cond_224
    const/4 v2, 0x0

    :goto_225
    new-instance v4, Lcom/github/catvod/spider/merge/H/p;

    invoke-direct {v4, v9, v8}, Lcom/github/catvod/spider/merge/H/p;-><init>([Lcom/github/catvod/spider/merge/H/X;[I)V

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/H/p;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_236

    if-eqz v3, :cond_272

    invoke-virtual {v3, v0, v1, v0}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_272

    :cond_236
    invoke-virtual {v4, v1}, Lcom/github/catvod/spider/merge/H/p;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_243

    if-eqz v3, :cond_241

    invoke-virtual {v3, v0, v1, v1}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_241
    move-object v0, v1

    goto :goto_272

    .line 10
    :cond_243
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    :goto_249
    array-length v7, v9

    if-ge v6, v7, :cond_25a

    aget-object v7, v9, v6

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_257

    invoke-virtual {v5, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_257
    add-int/lit8 v6, v6, 0x1

    goto :goto_249

    :cond_25a
    const/4 v6, 0x0

    :goto_25b
    array-length v2, v9

    if-ge v6, v2, :cond_26b

    aget-object v2, v9, v6

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/X;

    aput-object v2, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_25b

    :cond_26b
    if-eqz v3, :cond_150

    .line 11
    invoke-virtual {v3, v0, v1, v4}, Lcom/github/catvod/spider/merge/J/d;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_150

    :cond_272
    :goto_272
    return-object v0
.end method


# virtual methods
.method public abstract c(I)Lcom/github/catvod/spider/merge/H/X;
.end method

.method public abstract d(I)I
.end method

.method public final e()Z
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge/H/X;->h()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge/H/X;->d(I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f()Z
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/H/X;->b:Lcom/github/catvod/spider/merge/H/w;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract h()I
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge/H/X;->a:I

    return v0
.end method
