.class public final Lcom/github/catvod/spider/merge/H/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/UUID;

.field private static final c:Ljava/util/UUID;

.field private static final d:Ljava/util/UUID;

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/UUID;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge/H/g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "33761B2D-78BB-4A43-8B0B-4F5BEE8AACF3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "1DA0C57D-6C06-438A-9B27-10BCB3CE0F61"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/github/catvod/spider/merge/H/k;->b:Ljava/util/UUID;

    const-string v2, "AADB8D7E-AEEF-4415-AD2B-8204D6CF042E"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lcom/github/catvod/spider/merge/H/k;->c:Ljava/util/UUID;

    const-string v3, "59627784-3BE5-417A-B9EB-8131A7286089"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    sput-object v3, Lcom/github/catvod/spider/merge/H/k;->d:Ljava/util/UUID;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/github/catvod/spider/merge/H/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-object v3, Lcom/github/catvod/spider/merge/H/k;->f:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/merge/H/g;->a()Lcom/github/catvod/spider/merge/H/g;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge/H/k;->a:Lcom/github/catvod/spider/merge/H/g;

    return-void
.end method

.method private c([CILjava/util/List;Lcom/github/catvod/spider/merge/H/j;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge/J/k;",
            ">;",
            "Lcom/github/catvod/spider/merge/H/j;",
            ")I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-char p2, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p2, :cond_44

    aget-char v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    new-instance v4, Lcom/github/catvod/spider/merge/J/k;

    new-array v5, v1, [I

    invoke-direct {v4, v5}, Lcom/github/catvod/spider/merge/J/k;-><init>([I)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v0, 0x1

    aget-char v0, p1, v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_25

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/github/catvod/spider/merge/J/k;->a(I)V

    :cond_25
    move v0, v5

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v3, :cond_41

    invoke-interface {p4, p1, v0}, Lcom/github/catvod/spider/merge/H/j;->a([CI)I

    move-result v6

    invoke-interface {p4}, Lcom/github/catvod/spider/merge/H/j;->size()I

    move-result v7

    add-int/2addr v0, v7

    invoke-interface {p4, p1, v0}, Lcom/github/catvod/spider/merge/H/j;->a([CI)I

    move-result v7

    invoke-interface {p4}, Lcom/github/catvod/spider/merge/H/j;->size()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v4, v6, v7}, Lcom/github/catvod/spider/merge/J/k;->b(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    return v0
.end method

.method protected static d(Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 4

    sget-object v0, Lcom/github/catvod/spider/merge/H/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x0

    if-gez p0, :cond_a

    return v1

    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lt p1, p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method protected static e([CI)J
    .registers 6

    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    aget-char v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v2

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method protected final a(Z)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([C)Lcom/github/catvod/spider/merge/H/a;
    .registers 20

    move-object/from16 v0, p0

    const-class v1, Lcom/github/catvod/spider/merge/H/a;

    invoke-virtual/range {p1 .. p1}, [C->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_c
    array-length v5, v2

    const/4 v6, 0x2

    if-ge v4, v5, :cond_19

    aget-char v5, v2, v4

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    aget-char v5, v2, v4

    const/4 v7, 0x3

    if-ne v5, v7, :cond_515

    .line 1
    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/H/k;->e([CI)J

    move-result-wide v7

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge/H/k;->e([CI)J

    move-result-wide v9

    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v9, v10, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    const/16 v7, 0x9

    .line 2
    sget-object v8, Lcom/github/catvod/spider/merge/H/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f3

    sget-object v1, Lcom/github/catvod/spider/merge/H/k;->b:Ljava/util/UUID;

    invoke-static {v1, v5}, Lcom/github/catvod/spider/merge/H/k;->d(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v1

    sget-object v8, Lcom/github/catvod/spider/merge/H/k;->c:Ljava/util/UUID;

    invoke-static {v8, v5}, Lcom/github/catvod/spider/merge/H/k;->d(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v8

    .line 3
    invoke-static {v6}, Lcom/github/catvod/spider/merge/o/a;->b(I)[I

    move-result-object v6

    const/16 v9, 0xa

    .line 4
    aget-char v7, v2, v7

    aget v6, v6, v7

    const/16 v7, 0xb

    aget-char v9, v2, v9

    new-instance v10, Lcom/github/catvod/spider/merge/H/a;

    invoke-direct {v10, v6, v9}, Lcom/github/catvod/spider/merge/H/a;-><init>(II)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aget-char v7, v2, v7

    const/16 v11, 0xc

    const/4 v12, 0x0

    const/16 v13, 0xc

    :goto_67
    const v14, 0xffff

    if-ge v12, v7, :cond_126

    add-int/lit8 v16, v13, 0x1

    aget-char v13, v2, v13

    const/4 v15, 0x0

    if-nez v13, :cond_7a

    invoke-virtual {v10, v15}, Lcom/github/catvod/spider/merge/H/a;->a(Lcom/github/catvod/spider/merge/H/m;)V

    move/from16 v13, v16

    goto/16 :goto_11f

    :cond_7a
    add-int/lit8 v17, v16, 0x1

    aget-char v15, v2, v16

    if-ne v15, v14, :cond_81

    const/4 v15, -0x1

    :cond_81
    packed-switch v13, :pswitch_data_540

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "The specified state type %d is not valid."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_9d
    new-instance v14, Lcom/github/catvod/spider/merge/H/O;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/O;-><init>()V

    goto :goto_e4

    :pswitch_a3
    new-instance v14, Lcom/github/catvod/spider/merge/H/U;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/U;-><init>()V

    goto :goto_e4

    :pswitch_a9
    new-instance v14, Lcom/github/catvod/spider/merge/H/p0;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/p0;-><init>()V

    goto :goto_e4

    :pswitch_af
    new-instance v14, Lcom/github/catvod/spider/merge/H/q0;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/q0;-><init>()V

    goto :goto_e4

    :pswitch_b5
    new-instance v14, Lcom/github/catvod/spider/merge/H/t;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/t;-><init>()V

    goto :goto_e4

    :pswitch_bb
    new-instance v14, Lcom/github/catvod/spider/merge/H/e0;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/e0;-><init>()V

    goto :goto_e4

    :pswitch_c1
    new-instance v14, Lcom/github/catvod/spider/merge/H/r0;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/r0;-><init>()V

    goto :goto_e4

    :pswitch_c7
    new-instance v14, Lcom/github/catvod/spider/merge/H/o0;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/o0;-><init>()V

    goto :goto_e4

    :pswitch_cd
    new-instance v14, Lcom/github/catvod/spider/merge/H/T;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/T;-><init>()V

    goto :goto_e4

    :pswitch_d3
    new-instance v14, Lcom/github/catvod/spider/merge/H/r;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/r;-><init>()V

    goto :goto_e4

    :pswitch_d9
    new-instance v14, Lcom/github/catvod/spider/merge/H/d0;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/d0;-><init>()V

    goto :goto_e4

    :pswitch_df
    new-instance v14, Lcom/github/catvod/spider/merge/H/s;

    invoke-direct {v14}, Lcom/github/catvod/spider/merge/H/s;-><init>()V

    :goto_e4
    iput v15, v14, Lcom/github/catvod/spider/merge/H/m;->c:I

    move-object v15, v14

    goto :goto_e9

    :pswitch_e8
    const/4 v15, 0x0

    :goto_e9
    if-ne v13, v11, :cond_101

    add-int/lit8 v13, v17, 0x1

    .line 6
    aget-char v14, v2, v17

    new-instance v11, Lcom/github/catvod/spider/merge/J/m;

    move-object v4, v15

    check-cast v4, Lcom/github/catvod/spider/merge/H/O;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v11, v4, v14}, Lcom/github/catvod/spider/merge/J/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v13

    goto :goto_11a

    :cond_101
    instance-of v4, v15, Lcom/github/catvod/spider/merge/H/u;

    if-eqz v4, :cond_11a

    add-int/lit8 v4, v17, 0x1

    aget-char v11, v2, v17

    new-instance v13, Lcom/github/catvod/spider/merge/J/m;

    move-object v14, v15

    check-cast v14, Lcom/github/catvod/spider/merge/H/u;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v13, v14, v11}, Lcom/github/catvod/spider/merge/J/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v4

    :cond_11a
    :goto_11a
    invoke-virtual {v10, v15}, Lcom/github/catvod/spider/merge/H/a;->a(Lcom/github/catvod/spider/merge/H/m;)V

    move/from16 v13, v17

    :goto_11f
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/16 v11, 0xc

    goto/16 :goto_67

    :cond_126
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/J/m;

    iget-object v7, v6, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    check-cast v7, Lcom/github/catvod/spider/merge/H/O;

    iget-object v11, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/H/m;

    iput-object v6, v7, Lcom/github/catvod/spider/merge/H/O;->g:Lcom/github/catvod/spider/merge/H/m;

    goto :goto_12a

    :cond_14d
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_151
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_174

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/J/m;

    iget-object v7, v6, Lcom/github/catvod/spider/merge/J/m;->a:Ljava/lang/Object;

    check-cast v7, Lcom/github/catvod/spider/merge/H/u;

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/github/catvod/spider/merge/J/m;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/H/t;

    iput-object v6, v7, Lcom/github/catvod/spider/merge/H/u;->i:Lcom/github/catvod/spider/merge/H/t;

    goto :goto_151

    :cond_174
    add-int/lit8 v4, v13, 0x1

    aget-char v6, v2, v13

    const/4 v7, 0x0

    :goto_179
    if-ge v7, v6, :cond_18d

    add-int/lit8 v9, v4, 0x1

    aget-char v4, v2, v4

    iget-object v11, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/v;

    iput-boolean v3, v4, Lcom/github/catvod/spider/merge/H/v;->h:Z

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_179

    :cond_18d
    if-eqz v1, :cond_1a9

    add-int/lit8 v1, v4, 0x1

    aget-char v4, v2, v4

    const/4 v6, 0x0

    :goto_194
    if-ge v6, v4, :cond_1a8

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v2, v1

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/d0;

    iput-boolean v3, v1, Lcom/github/catvod/spider/merge/H/d0;->h:Z

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_194

    :cond_1a8
    move v4, v1

    :cond_1a9
    add-int/lit8 v1, v4, 0x1

    aget-char v4, v2, v4

    iget v6, v10, Lcom/github/catvod/spider/merge/H/a;->e:I

    if-ne v6, v3, :cond_1b5

    new-array v6, v4, [I

    iput-object v6, v10, Lcom/github/catvod/spider/merge/H/a;->g:[I

    :cond_1b5
    new-array v6, v4, [Lcom/github/catvod/spider/merge/H/d0;

    iput-object v6, v10, Lcom/github/catvod/spider/merge/H/a;->c:[Lcom/github/catvod/spider/merge/H/d0;

    const/4 v6, 0x0

    :goto_1ba
    if-ge v6, v4, :cond_1eb

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v2, v1

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/d0;

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->c:[Lcom/github/catvod/spider/merge/H/d0;

    aput-object v1, v9, v6

    iget v1, v10, Lcom/github/catvod/spider/merge/H/a;->e:I

    if-ne v1, v3, :cond_1e7

    add-int/lit8 v1, v7, 0x1

    aget-char v7, v2, v7

    if-ne v7, v14, :cond_1d7

    const/4 v7, -0x1

    :cond_1d7
    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->g:[I

    aput v7, v9, v6

    sget-object v7, Lcom/github/catvod/spider/merge/H/k;->c:Ljava/util/UUID;

    invoke-static {v7, v5}, Lcom/github/catvod/spider/merge/H/k;->d(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_1e8

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v2, v1

    :cond_1e7
    move v1, v7

    :cond_1e8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ba

    :cond_1eb
    new-array v4, v4, [Lcom/github/catvod/spider/merge/H/e0;

    iput-object v4, v10, Lcom/github/catvod/spider/merge/H/a;->d:[Lcom/github/catvod/spider/merge/H/e0;

    iget-object v4, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_216

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge/H/m;

    instance-of v7, v6, Lcom/github/catvod/spider/merge/H/e0;

    if-nez v7, :cond_206

    goto :goto_1f5

    :cond_206
    move-object v7, v6

    check-cast v7, Lcom/github/catvod/spider/merge/H/e0;

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->d:[Lcom/github/catvod/spider/merge/H/e0;

    iget v6, v6, Lcom/github/catvod/spider/merge/H/m;->c:I

    aput-object v7, v9, v6

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->c:[Lcom/github/catvod/spider/merge/H/d0;

    aget-object v6, v9, v6

    iput-object v7, v6, Lcom/github/catvod/spider/merge/H/d0;->g:Lcom/github/catvod/spider/merge/H/e0;

    goto :goto_1f5

    :cond_216
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v2, v1

    const/4 v6, 0x0

    :goto_21b
    if-ge v6, v1, :cond_232

    add-int/lit8 v7, v4, 0x1

    aget-char v4, v2, v4

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->i:Ljava/util/ArrayList;

    iget-object v11, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/r0;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_21b

    :cond_232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v6, Lcom/github/catvod/spider/merge/H/h;

    invoke-direct {v6}, Lcom/github/catvod/spider/merge/H/h;-><init>()V

    .line 8
    invoke-direct {v0, v2, v4, v1, v6}, Lcom/github/catvod/spider/merge/H/k;->c([CILjava/util/List;Lcom/github/catvod/spider/merge/H/j;)I

    move-result v4

    sget-object v6, Lcom/github/catvod/spider/merge/H/k;->d:Ljava/util/UUID;

    invoke-static {v6, v5}, Lcom/github/catvod/spider/merge/H/k;->d(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_251

    .line 9
    new-instance v5, Lcom/github/catvod/spider/merge/H/i;

    invoke-direct {v5}, Lcom/github/catvod/spider/merge/H/i;-><init>()V

    .line 10
    invoke-direct {v0, v2, v4, v1, v5}, Lcom/github/catvod/spider/merge/H/k;->c([CILjava/util/List;Lcom/github/catvod/spider/merge/H/j;)I

    move-result v4

    :cond_251
    add-int/lit8 v5, v4, 0x1

    aget-char v4, v2, v4

    const/4 v6, 0x0

    :goto_256
    if-ge v6, v4, :cond_2f9

    aget-char v7, v2, v5

    add-int/lit8 v9, v5, 0x1

    aget-char v9, v2, v9

    add-int/lit8 v11, v5, 0x2

    aget-char v11, v2, v11

    add-int/lit8 v12, v5, 0x3

    aget-char v12, v2, v12

    add-int/lit8 v13, v5, 0x4

    aget-char v13, v2, v13

    add-int/lit8 v15, v5, 0x5

    aget-char v15, v2, v15

    .line 11
    iget-object v14, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/catvod/spider/merge/H/m;

    packed-switch v11, :pswitch_data_55e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified transition type is not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_281
    new-instance v11, Lcom/github/catvod/spider/merge/H/V;

    invoke-direct {v11, v9, v12}, Lcom/github/catvod/spider/merge/H/V;-><init>(Lcom/github/catvod/spider/merge/H/m;I)V

    goto :goto_2d0

    :pswitch_287
    new-instance v11, Lcom/github/catvod/spider/merge/H/u0;

    invoke-direct {v11, v9}, Lcom/github/catvod/spider/merge/H/u0;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    goto :goto_2d0

    :pswitch_28d
    new-instance v11, Lcom/github/catvod/spider/merge/H/P;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge/J/k;

    invoke-direct {v11, v9, v12}, Lcom/github/catvod/spider/merge/H/P;-><init>(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/J/k;)V

    goto :goto_2d0

    :pswitch_299
    new-instance v11, Lcom/github/catvod/spider/merge/H/m0;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge/J/k;

    invoke-direct {v11, v9, v12}, Lcom/github/catvod/spider/merge/H/m0;-><init>(Lcom/github/catvod/spider/merge/H/m;Lcom/github/catvod/spider/merge/J/k;)V

    goto :goto_2d0

    :pswitch_2a5
    new-instance v11, Lcom/github/catvod/spider/merge/H/o;

    invoke-direct {v11, v9, v12, v13}, Lcom/github/catvod/spider/merge/H/o;-><init>(Lcom/github/catvod/spider/merge/H/m;II)V

    goto :goto_2d0

    :pswitch_2ab
    new-instance v11, Lcom/github/catvod/spider/merge/H/q;

    if-eqz v15, :cond_2b4

    const/4 v13, -0x1

    invoke-direct {v11, v9, v13}, Lcom/github/catvod/spider/merge/H/q;-><init>(Lcom/github/catvod/spider/merge/H/m;I)V

    goto :goto_2d0

    :cond_2b4
    invoke-direct {v11, v9, v12}, Lcom/github/catvod/spider/merge/H/q;-><init>(Lcom/github/catvod/spider/merge/H/m;I)V

    goto :goto_2d0

    :pswitch_2b8
    new-instance v11, Lcom/github/catvod/spider/merge/H/W;

    if-eqz v15, :cond_2be

    const/4 v14, 0x1

    goto :goto_2bf

    :cond_2be
    const/4 v14, 0x0

    :goto_2bf
    invoke-direct {v11, v9, v12, v13, v14}, Lcom/github/catvod/spider/merge/H/W;-><init>(Lcom/github/catvod/spider/merge/H/m;IIZ)V

    goto :goto_2d0

    :pswitch_2c3
    new-instance v11, Lcom/github/catvod/spider/merge/H/f0;

    iget-object v13, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge/H/d0;

    invoke-direct {v11, v12, v15, v9}, Lcom/github/catvod/spider/merge/H/f0;-><init>(Lcom/github/catvod/spider/merge/H/d0;ILcom/github/catvod/spider/merge/H/m;)V

    :goto_2d0
    const/4 v14, -0x1

    goto :goto_2e5

    :pswitch_2d2
    new-instance v11, Lcom/github/catvod/spider/merge/H/c0;

    const/4 v14, -0x1

    if-eqz v15, :cond_2db

    invoke-direct {v11, v9, v14, v13}, Lcom/github/catvod/spider/merge/H/c0;-><init>(Lcom/github/catvod/spider/merge/H/m;II)V

    goto :goto_2e5

    :cond_2db
    invoke-direct {v11, v9, v12, v13}, Lcom/github/catvod/spider/merge/H/c0;-><init>(Lcom/github/catvod/spider/merge/H/m;II)V

    goto :goto_2e5

    :pswitch_2df
    const/4 v14, -0x1

    new-instance v11, Lcom/github/catvod/spider/merge/H/x;

    invoke-direct {v11, v9}, Lcom/github/catvod/spider/merge/H/x;-><init>(Lcom/github/catvod/spider/merge/H/m;)V

    .line 12
    :goto_2e5
    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v7, v11}, Lcom/github/catvod/spider/merge/H/m;->a(Lcom/github/catvod/spider/merge/H/t0;)V

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v6, 0x1

    const v14, 0xffff

    goto/16 :goto_256

    :cond_2f9
    const/4 v14, -0x1

    iget-object v1, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_300
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_345

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/m;

    const/4 v6, 0x0

    :goto_30d
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v7

    if-ge v6, v7, :cond_300

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v7

    instance-of v9, v7, Lcom/github/catvod/spider/merge/H/f0;

    if-nez v9, :cond_31c

    goto :goto_342

    :cond_31c
    check-cast v7, Lcom/github/catvod/spider/merge/H/f0;

    iget-object v9, v10, Lcom/github/catvod/spider/merge/H/a;->c:[Lcom/github/catvod/spider/merge/H/d0;

    iget-object v11, v7, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v13, v11, Lcom/github/catvod/spider/merge/H/m;->c:I

    aget-object v9, v9, v13

    iget-boolean v9, v9, Lcom/github/catvod/spider/merge/H/d0;->h:Z

    if-eqz v9, :cond_32f

    iget v9, v7, Lcom/github/catvod/spider/merge/H/f0;->b:I

    if-nez v9, :cond_32f

    goto :goto_330

    :cond_32f
    const/4 v13, -0x1

    :goto_330
    new-instance v9, Lcom/github/catvod/spider/merge/H/x;

    iget-object v11, v7, Lcom/github/catvod/spider/merge/H/f0;->c:Lcom/github/catvod/spider/merge/H/m;

    invoke-direct {v9, v11, v13}, Lcom/github/catvod/spider/merge/H/x;-><init>(Lcom/github/catvod/spider/merge/H/m;I)V

    iget-object v11, v10, Lcom/github/catvod/spider/merge/H/a;->d:[Lcom/github/catvod/spider/merge/H/e0;

    iget-object v7, v7, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    iget v7, v7, Lcom/github/catvod/spider/merge/H/m;->c:I

    aget-object v7, v11, v7

    invoke-virtual {v7, v9}, Lcom/github/catvod/spider/merge/H/m;->a(Lcom/github/catvod/spider/merge/H/t0;)V

    :goto_342
    add-int/lit8 v6, v6, 0x1

    goto :goto_30d

    :cond_345
    iget-object v1, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/m;

    instance-of v6, v4, Lcom/github/catvod/spider/merge/H/u;

    if-eqz v6, :cond_375

    move-object v6, v4

    check-cast v6, Lcom/github/catvod/spider/merge/H/u;

    iget-object v7, v6, Lcom/github/catvod/spider/merge/H/u;->i:Lcom/github/catvod/spider/merge/H/t;

    if-eqz v7, :cond_36f

    iget-object v9, v7, Lcom/github/catvod/spider/merge/H/t;->g:Lcom/github/catvod/spider/merge/H/u;

    if-nez v9, :cond_369

    iput-object v6, v7, Lcom/github/catvod/spider/merge/H/t;->g:Lcom/github/catvod/spider/merge/H/u;

    goto :goto_375

    :cond_369
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_36f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_375
    :goto_375
    instance-of v6, v4, Lcom/github/catvod/spider/merge/H/U;

    if-eqz v6, :cond_393

    check-cast v4, Lcom/github/catvod/spider/merge/H/U;

    const/4 v6, 0x0

    :goto_37c
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v7

    if-ge v6, v7, :cond_34b

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v7

    iget-object v7, v7, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v9, v7, Lcom/github/catvod/spider/merge/H/T;

    if-eqz v9, :cond_390

    check-cast v7, Lcom/github/catvod/spider/merge/H/T;

    iput-object v4, v7, Lcom/github/catvod/spider/merge/H/T;->j:Lcom/github/catvod/spider/merge/H/U;

    :cond_390
    add-int/lit8 v6, v6, 0x1

    goto :goto_37c

    :cond_393
    instance-of v6, v4, Lcom/github/catvod/spider/merge/H/q0;

    if-eqz v6, :cond_34b

    check-cast v4, Lcom/github/catvod/spider/merge/H/q0;

    const/4 v6, 0x0

    :goto_39a
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v7

    if-ge v6, v7, :cond_34b

    invoke-virtual {v4, v6}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v7

    iget-object v7, v7, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v9, v7, Lcom/github/catvod/spider/merge/H/p0;

    if-eqz v9, :cond_3ae

    check-cast v7, Lcom/github/catvod/spider/merge/H/p0;

    iput-object v4, v7, Lcom/github/catvod/spider/merge/H/p0;->i:Lcom/github/catvod/spider/merge/H/q0;

    :cond_3ae
    add-int/lit8 v6, v6, 0x1

    goto :goto_39a

    :cond_3b1
    add-int/lit8 v1, v5, 0x1

    aget-char v4, v2, v5

    const/4 v5, 0x1

    :goto_3b6
    if-gt v5, v4, :cond_3d1

    add-int/lit8 v6, v1, 0x1

    aget-char v1, v2, v1

    iget-object v7, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge/H/v;

    iget-object v7, v10, Lcom/github/catvod/spider/merge/H/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v5, -0x1

    iput v7, v1, Lcom/github/catvod/spider/merge/H/v;->g:I

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_3b6

    :cond_3d1
    iget v4, v10, Lcom/github/catvod/spider/merge/H/a;->e:I

    if-ne v4, v3, :cond_4a1

    if-eqz v8, :cond_44a

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v2, v1

    new-array v1, v1, [Lcom/github/catvod/spider/merge/H/C;

    iput-object v1, v10, Lcom/github/catvod/spider/merge/H/a;->h:[Lcom/github/catvod/spider/merge/H/C;

    const/4 v1, 0x0

    :goto_3e0
    iget-object v5, v10, Lcom/github/catvod/spider/merge/H/a;->h:[Lcom/github/catvod/spider/merge/H/C;

    array-length v5, v5

    if-ge v1, v5, :cond_4a1

    invoke-static {}, Lcom/github/catvod/spider/merge/H/E;->values()[Lcom/github/catvod/spider/merge/H/E;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    aget-char v4, v2, v4

    aget-object v4, v5, v4

    add-int/lit8 v5, v6, 0x1

    aget-char v13, v2, v6

    const v6, 0xffff

    if-ne v13, v6, :cond_3f9

    const/4 v13, -0x1

    :cond_3f9
    add-int/lit8 v7, v5, 0x1

    aget-char v5, v2, v5

    if-ne v5, v6, :cond_400

    const/4 v5, -0x1

    .line 13
    :cond_400
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_576

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const-string v3, "The specified lexer action type %d is not valid."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_41c
    new-instance v4, Lcom/github/catvod/spider/merge/H/N;

    invoke-direct {v4, v13}, Lcom/github/catvod/spider/merge/H/N;-><init>(I)V

    goto :goto_442

    :pswitch_422
    sget-object v4, Lcom/github/catvod/spider/merge/H/M;->a:Lcom/github/catvod/spider/merge/H/M;

    goto :goto_442

    :pswitch_425
    new-instance v4, Lcom/github/catvod/spider/merge/H/L;

    invoke-direct {v4, v13}, Lcom/github/catvod/spider/merge/H/L;-><init>(I)V

    goto :goto_442

    :pswitch_42b
    sget-object v4, Lcom/github/catvod/spider/merge/H/K;->a:Lcom/github/catvod/spider/merge/H/K;

    goto :goto_442

    :pswitch_42e
    sget-object v4, Lcom/github/catvod/spider/merge/H/J;->a:Lcom/github/catvod/spider/merge/H/J;

    goto :goto_442

    :pswitch_431
    new-instance v4, Lcom/github/catvod/spider/merge/H/I;

    invoke-direct {v4, v13}, Lcom/github/catvod/spider/merge/H/I;-><init>(I)V

    goto :goto_442

    :pswitch_437
    new-instance v4, Lcom/github/catvod/spider/merge/H/G;

    invoke-direct {v4, v13, v5}, Lcom/github/catvod/spider/merge/H/G;-><init>(II)V

    goto :goto_442

    :pswitch_43d
    new-instance v4, Lcom/github/catvod/spider/merge/H/F;

    invoke-direct {v4, v13}, Lcom/github/catvod/spider/merge/H/F;-><init>(I)V

    .line 14
    :goto_442
    iget-object v5, v10, Lcom/github/catvod/spider/merge/H/a;->h:[Lcom/github/catvod/spider/merge/H/C;

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_3e0

    :cond_44a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_455
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_493

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge/H/m;

    const/4 v5, 0x0

    :goto_462
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v6

    if-ge v5, v6, :cond_455

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v6

    instance-of v7, v6, Lcom/github/catvod/spider/merge/H/o;

    if-nez v7, :cond_471

    goto :goto_490

    :cond_471
    move-object v7, v6

    check-cast v7, Lcom/github/catvod/spider/merge/H/o;

    iget v8, v7, Lcom/github/catvod/spider/merge/H/o;->b:I

    iget v7, v7, Lcom/github/catvod/spider/merge/H/o;->c:I

    new-instance v9, Lcom/github/catvod/spider/merge/H/G;

    invoke-direct {v9, v8, v7}, Lcom/github/catvod/spider/merge/H/G;-><init>(II)V

    new-instance v7, Lcom/github/catvod/spider/merge/H/o;

    iget-object v6, v6, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v7, v6, v8, v11}, Lcom/github/catvod/spider/merge/H/o;-><init>(Lcom/github/catvod/spider/merge/H/m;II)V

    .line 15
    iget-object v6, v4, Lcom/github/catvod/spider/merge/H/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_490
    add-int/lit8 v5, v5, 0x1

    goto :goto_462

    :cond_493
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/github/catvod/spider/merge/H/C;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/catvod/spider/merge/H/C;

    iput-object v1, v10, Lcom/github/catvod/spider/merge/H/a;->h:[Lcom/github/catvod/spider/merge/H/C;

    .line 17
    :cond_4a1
    iget-object v1, v10, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a7
    :goto_4a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v2, Lcom/github/catvod/spider/merge/H/p0;

    if-nez v4, :cond_4b8

    goto :goto_4a7

    :cond_4b8
    iget-object v4, v10, Lcom/github/catvod/spider/merge/H/a;->c:[Lcom/github/catvod/spider/merge/H/d0;

    iget v5, v2, Lcom/github/catvod/spider/merge/H/m;->c:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/github/catvod/spider/merge/H/d0;->h:Z

    if-eqz v4, :cond_4a7

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v5, v4, Lcom/github/catvod/spider/merge/H/O;

    if-eqz v5, :cond_4a7

    iget-boolean v5, v4, Lcom/github/catvod/spider/merge/H/m;->d:Z

    if-eqz v5, :cond_4a7

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v4, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v4, :cond_4a7

    check-cast v2, Lcom/github/catvod/spider/merge/H/p0;

    iput-boolean v3, v2, Lcom/github/catvod/spider/merge/H/p0;->j:Z

    goto :goto_4a7

    .line 18
    :cond_4e5
    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/k;->a:Lcom/github/catvod/spider/merge/H/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lcom/github/catvod/spider/merge/H/k;->f(Lcom/github/catvod/spider/merge/H/a;)V

    iget-object v1, v0, Lcom/github/catvod/spider/merge/H/k;->a:Lcom/github/catvod/spider/merge/H/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v10

    :cond_4f3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/github/catvod/spider/merge/H/k;->f:Ljava/util/UUID;

    aput-object v5, v4, v3

    const-string v3, "Could not deserialize ATN with UUID %s (expected %s or a legacy UUID)."

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_515
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Could not deserialize ATN with version %d (expected %d)."

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_53e

    :goto_53d
    throw v3

    :goto_53e
    goto :goto_53d

    nop

    :pswitch_data_540
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_df
        :pswitch_d9
        :pswitch_d3
        :pswitch_cd
        :pswitch_c7
        :pswitch_c1
        :pswitch_bb
        :pswitch_b5
        :pswitch_af
        :pswitch_a9
        :pswitch_a3
        :pswitch_9d
    .end packed-switch

    :pswitch_data_55e
    .packed-switch 0x1
        :pswitch_2df
        :pswitch_2d2
        :pswitch_2c3
        :pswitch_2b8
        :pswitch_2ab
        :pswitch_2a5
        :pswitch_299
        :pswitch_28d
        :pswitch_287
        :pswitch_281
    .end packed-switch

    :pswitch_data_576
    .packed-switch 0x0
        :pswitch_43d
        :pswitch_437
        :pswitch_431
        :pswitch_42e
        :pswitch_42b
        :pswitch_425
        :pswitch_422
        :pswitch_41c
    .end packed-switch
.end method

.method protected final f(Lcom/github/catvod/spider/merge/H/a;)V
    .registers 8

    iget-object p1, p1, Lcom/github/catvod/spider/merge/H/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge/H/m;

    if-nez v0, :cond_15

    goto :goto_6

    .line 1
    :cond_15
    iget-boolean v1, v0, Lcom/github/catvod/spider/merge/H/m;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_24

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v1

    if-gt v1, v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x1

    :goto_25
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/T;

    if-eqz v1, :cond_39

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/T;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/T;->j:Lcom/github/catvod/spider/merge/H/U;

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    :cond_39
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/p0;

    if-eqz v1, :cond_91

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/p0;

    iget-object v4, v1, Lcom/github/catvod/spider/merge/H/p0;->i:Lcom/github/catvod/spider/merge/H/q0;

    if-eqz v4, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    :goto_47
    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_53

    const/4 v4, 0x1

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v4, Lcom/github/catvod/spider/merge/H/o0;

    if-eqz v4, :cond_70

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v4, Lcom/github/catvod/spider/merge/H/O;

    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    iget-boolean v1, v1, Lcom/github/catvod/spider/merge/H/v;->h:Z

    xor-int/2addr v1, v3

    goto :goto_87

    :cond_70
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v4, Lcom/github/catvod/spider/merge/H/O;

    if-eqz v4, :cond_8b

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v4

    iget-object v4, v4, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v4, v4, Lcom/github/catvod/spider/merge/H/o0;

    invoke-virtual {p0, v4}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    iget-boolean v1, v1, Lcom/github/catvod/spider/merge/H/v;->h:Z

    :goto_87
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    goto :goto_91

    :cond_8b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_91
    :goto_91
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/q0;

    if-eqz v1, :cond_ac

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v1

    if-ne v1, v3, :cond_9d

    const/4 v1, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    :goto_9e
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/H/m;->d(I)Lcom/github/catvod/spider/merge/H/t0;

    move-result-object v1

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t0;->a:Lcom/github/catvod/spider/merge/H/m;

    instance-of v1, v1, Lcom/github/catvod/spider/merge/H/p0;

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    :cond_ac
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/O;

    if-eqz v1, :cond_bd

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/O;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/O;->g:Lcom/github/catvod/spider/merge/H/m;

    if-eqz v1, :cond_b9

    const/4 v1, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v1, 0x0

    :goto_ba
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    :cond_bd
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/d0;

    if-eqz v1, :cond_ce

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/d0;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/d0;->g:Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v1, :cond_ca

    const/4 v1, 0x1

    goto :goto_cb

    :cond_ca
    const/4 v1, 0x0

    :goto_cb
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    :cond_ce
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/u;

    if-eqz v1, :cond_df

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/u;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/u;->i:Lcom/github/catvod/spider/merge/H/t;

    if-eqz v1, :cond_db

    const/4 v1, 0x1

    goto :goto_dc

    :cond_db
    const/4 v1, 0x0

    :goto_dc
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    :cond_df
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/t;

    if-eqz v1, :cond_f0

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge/H/t;

    iget-object v1, v1, Lcom/github/catvod/spider/merge/H/t;->g:Lcom/github/catvod/spider/merge/H/u;

    if-eqz v1, :cond_ec

    const/4 v1, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v1, 0x0

    :goto_ed
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    :cond_f0
    instance-of v1, v0, Lcom/github/catvod/spider/merge/H/v;

    if-eqz v1, :cond_101

    check-cast v0, Lcom/github/catvod/spider/merge/H/v;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v1

    if-le v1, v3, :cond_10b

    iget v0, v0, Lcom/github/catvod/spider/merge/H/v;->g:I

    if-ltz v0, :cond_10c

    goto :goto_10b

    :cond_101
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/H/m;->b()I

    move-result v1

    if-le v1, v3, :cond_10b

    instance-of v0, v0, Lcom/github/catvod/spider/merge/H/e0;

    if-eqz v0, :cond_10c

    :cond_10b
    :goto_10b
    const/4 v2, 0x1

    :cond_10c
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge/H/k;->a(Z)V

    goto/16 :goto_6

    :cond_111
    return-void
.end method
