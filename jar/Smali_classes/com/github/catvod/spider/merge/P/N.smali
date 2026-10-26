.class public final Lcom/github/catvod/spider/merge/P/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final f:[Lcom/github/catvod/spider/merge/P/z;

.field private static final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/github/catvod/spider/merge/P/C;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/TimeZone;

.field private final c:Ljava/util/Locale;

.field private transient d:[Lcom/github/catvod/spider/merge/P/z;

.field private transient e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/github/catvod/spider/merge/P/z;

    sput-object v0, Lcom/github/catvod/spider/merge/P/N;->f:[Lcom/github/catvod/spider/merge/P/z;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/github/catvod/spider/merge/P/N;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    invoke-static/range {p3 .. p3}, Lcom/github/catvod/spider/merge/L/c;->a(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    .line 1
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3e
    if-ge v11, v1, :cond_1f6

    aput v11, v9, v10

    iget-object v11, v0, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    .line 2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, v9, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x41

    move/from16 p1, v1

    const/16 v1, 0x7a

    if-lt v14, v15, :cond_5f

    const/16 v15, 0x5a

    if-le v14, v15, :cond_65

    :cond_5f
    const/16 v15, 0x61

    if-lt v14, v15, :cond_77

    if-gt v14, v1, :cond_77

    :cond_65
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_68
    add-int/lit8 v1, v10, 0x1

    if-ge v1, v13, :cond_bf

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_bf

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v1

    goto :goto_68

    :cond_77
    const/16 v1, 0x27

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    :goto_7d
    if-ge v10, v13, :cond_bf

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v1, :cond_9e

    add-int/lit8 v1, v10, 0x1

    move-object/from16 p2, v7

    if-ge v1, v13, :cond_9b

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 p3, v1

    const/16 v1, 0x27

    if-ne v7, v1, :cond_9b

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    goto :goto_b8

    :cond_9b
    xor-int/lit8 v14, v14, 0x1

    goto :goto_b8

    :cond_9e
    move-object/from16 p2, v7

    const/16 v1, 0x41

    if-nez v14, :cond_b5

    if-lt v15, v1, :cond_aa

    const/16 v1, 0x5a

    if-le v15, v1, :cond_b2

    :cond_aa
    const/16 v1, 0x61

    if-lt v15, v1, :cond_b5

    const/16 v1, 0x7a

    if-gt v15, v1, :cond_b5

    :cond_b2
    add-int/lit8 v10, v10, -0x1

    goto :goto_c1

    :cond_b5
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b8
    const/4 v1, 0x1

    add-int/2addr v10, v1

    const/16 v1, 0x27

    move-object/from16 v7, p2

    goto :goto_7d

    :cond_bf
    move-object/from16 p2, v7

    :goto_c1
    const/4 v1, 0x0

    aput v10, v9, v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aget v10, v9, v1

    .line 3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_d2

    goto/16 :goto_1f6

    :cond_d2
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x79

    if-eq v1, v12, :cond_1cf

    const/16 v12, 0x7a

    if-eq v1, v12, :cond_1bd

    const/16 v12, 0xb

    const/4 v13, 0x7

    const/16 v14, 0xa

    const/4 v15, 0x3

    sparse-switch v1, :sswitch_data_214

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_246

    packed-switch v1, :pswitch_data_254

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal pattern component: "

    .line 4
    invoke-static {v2, v7}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_fa
    const/4 v14, 0x3

    goto/16 :goto_18a

    :sswitch_fd
    new-instance v1, Lcom/github/catvod/spider/merge/P/v;

    invoke-virtual {v0, v13, v11}, Lcom/github/catvod/spider/merge/P/N;->i(II)Lcom/github/catvod/spider/merge/P/x;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/github/catvod/spider/merge/P/v;-><init>(Lcom/github/catvod/spider/merge/P/x;)V

    goto/16 :goto_1ea

    :sswitch_108
    const/16 v14, 0xd

    goto/16 :goto_18a

    :sswitch_10c
    const/16 v14, 0xc

    goto/16 :goto_18a

    :sswitch_110
    new-instance v1, Lcom/github/catvod/spider/merge/P/G;

    invoke-virtual {v0, v12, v11}, Lcom/github/catvod/spider/merge/P/N;->i(II)Lcom/github/catvod/spider/merge/P/x;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/github/catvod/spider/merge/P/G;-><init>(Lcom/github/catvod/spider/merge/P/x;)V

    goto/16 :goto_1ea

    :sswitch_11b
    new-instance v1, Lcom/github/catvod/spider/merge/P/F;

    invoke-virtual {v0, v14, v11}, Lcom/github/catvod/spider/merge/P/N;->i(II)Lcom/github/catvod/spider/merge/P/x;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/github/catvod/spider/merge/P/F;-><init>(Lcom/github/catvod/spider/merge/P/x;)V

    goto/16 :goto_1ea

    :sswitch_126
    const/4 v14, 0x5

    goto :goto_18a

    :sswitch_128
    new-instance v1, Lcom/github/catvod/spider/merge/P/B;

    const/16 v7, 0x9

    invoke-direct {v1, v7, v3}, Lcom/github/catvod/spider/merge/P/B;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1ea

    :sswitch_131
    const/16 v14, 0xe

    goto :goto_18a

    :sswitch_134
    const/4 v1, 0x4

    if-lt v11, v1, :cond_13f

    new-instance v1, Lcom/github/catvod/spider/merge/P/B;

    const/4 v7, 0x2

    invoke-direct {v1, v7, v5}, Lcom/github/catvod/spider/merge/P/B;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1ea

    :cond_13f
    const/4 v1, 0x2

    if-ne v11, v15, :cond_149

    new-instance v7, Lcom/github/catvod/spider/merge/P/B;

    invoke-direct {v7, v1, v6}, Lcom/github/catvod/spider/merge/P/B;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1e9

    :cond_149
    if-ne v11, v1, :cond_14f

    sget-object v1, Lcom/github/catvod/spider/merge/P/H;->a:Lcom/github/catvod/spider/merge/P/H;

    goto/16 :goto_1ea

    :cond_14f
    sget-object v1, Lcom/github/catvod/spider/merge/P/K;->a:Lcom/github/catvod/spider/merge/P/K;

    goto/16 :goto_1ea

    :sswitch_153
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v1, :cond_16a

    new-instance v1, Lcom/github/catvod/spider/merge/P/u;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {v1, v7}, Lcom/github/catvod/spider/merge/P/u;-><init>(C)V

    goto/16 :goto_1ea

    :cond_16a
    new-instance v1, Lcom/github/catvod/spider/merge/P/A;

    invoke-direct {v1, v7}, Lcom/github/catvod/spider/merge/P/A;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1ea

    :pswitch_171
    new-instance v1, Lcom/github/catvod/spider/merge/P/B;

    invoke-direct {v1, v14, v4}, Lcom/github/catvod/spider/merge/P/B;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1ea

    :pswitch_178
    const/16 v14, 0x8

    goto :goto_18a

    :pswitch_17b
    new-instance v1, Lcom/github/catvod/spider/merge/P/B;

    const/4 v7, 0x4

    if-ge v11, v7, :cond_182

    move-object v7, v8

    goto :goto_184

    :cond_182
    move-object/from16 v7, p2

    :goto_184
    invoke-direct {v1, v13, v7}, Lcom/github/catvod/spider/merge/P/B;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1ea

    :pswitch_189
    const/4 v14, 0x6

    :goto_18a
    :sswitch_18a
    invoke-virtual {v0, v14, v11}, Lcom/github/catvod/spider/merge/P/N;->i(II)Lcom/github/catvod/spider/merge/P/x;

    move-result-object v1

    goto :goto_1ea

    :pswitch_18f
    const/4 v1, 0x1

    if-ne v11, v1, :cond_195

    sget-object v1, Lcom/github/catvod/spider/merge/P/E;->c:Lcom/github/catvod/spider/merge/P/E;

    goto :goto_1ea

    :cond_195
    const/4 v1, 0x2

    if-ne v11, v1, :cond_19b

    sget-object v1, Lcom/github/catvod/spider/merge/P/w;->d:Lcom/github/catvod/spider/merge/P/w;

    goto :goto_1ea

    :cond_19b
    sget-object v1, Lcom/github/catvod/spider/merge/P/E;->b:Lcom/github/catvod/spider/merge/P/E;

    goto :goto_1ea

    :pswitch_19e
    const/4 v1, 0x1

    const/4 v7, 0x2

    if-eq v11, v1, :cond_1b4

    if-eq v11, v7, :cond_1b1

    if-ne v11, v15, :cond_1a9

    .line 6
    sget-object v1, Lcom/github/catvod/spider/merge/P/w;->d:Lcom/github/catvod/spider/merge/P/w;

    goto :goto_1ea

    :cond_1a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid number of X"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b1
    sget-object v1, Lcom/github/catvod/spider/merge/P/w;->c:Lcom/github/catvod/spider/merge/P/w;

    goto :goto_1ea

    :cond_1b4
    sget-object v1, Lcom/github/catvod/spider/merge/P/w;->b:Lcom/github/catvod/spider/merge/P/w;

    goto :goto_1ea

    :pswitch_1b7
    const/4 v12, 0x4

    .line 7
    :pswitch_1b8
    invoke-virtual {v0, v12, v11}, Lcom/github/catvod/spider/merge/P/N;->i(II)Lcom/github/catvod/spider/merge/P/x;

    move-result-object v1

    goto :goto_1ea

    :cond_1bd
    new-instance v1, Lcom/github/catvod/spider/merge/P/D;

    iget-object v7, v0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    const/4 v12, 0x4

    if-lt v11, v12, :cond_1c8

    iget-object v11, v0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    const/4 v12, 0x1

    goto :goto_1cb

    :cond_1c8
    iget-object v11, v0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    const/4 v12, 0x0

    :goto_1cb
    invoke-direct {v1, v7, v11, v12}, Lcom/github/catvod/spider/merge/P/D;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto :goto_1ea

    :cond_1cf
    :pswitch_1cf
    const/4 v7, 0x2

    if-ne v11, v7, :cond_1d5

    sget-object v7, Lcom/github/catvod/spider/merge/P/J;->a:Lcom/github/catvod/spider/merge/P/J;

    goto :goto_1df

    :cond_1d5
    const/4 v7, 0x4

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v7}, Lcom/github/catvod/spider/merge/P/N;->i(II)Lcom/github/catvod/spider/merge/P/x;

    move-result-object v7

    :goto_1df
    const/16 v11, 0x59

    if-ne v1, v11, :cond_1e9

    new-instance v1, Lcom/github/catvod/spider/merge/P/M;

    invoke-direct {v1, v7}, Lcom/github/catvod/spider/merge/P/M;-><init>(Lcom/github/catvod/spider/merge/P/x;)V

    goto :goto_1ea

    :cond_1e9
    :goto_1e9
    move-object v1, v7

    :goto_1ea
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v10, 0x1

    const/4 v10, 0x0

    move/from16 v1, p1

    move-object/from16 v7, p2

    goto/16 :goto_3e

    .line 8
    :cond_1f6
    :goto_1f6
    sget-object v1, Lcom/github/catvod/spider/merge/P/N;->f:[Lcom/github/catvod/spider/merge/P/z;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/catvod/spider/merge/P/z;

    iput-object v1, v0, Lcom/github/catvod/spider/merge/P/N;->d:[Lcom/github/catvod/spider/merge/P/z;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_202
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_210

    iget-object v3, v0, Lcom/github/catvod/spider/merge/P/N;->d:[Lcom/github/catvod/spider/merge/P/z;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/github/catvod/spider/merge/P/z;->c()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_202

    :cond_210
    iput v2, v0, Lcom/github/catvod/spider/merge/P/N;->e:I

    return-void

    nop

    :sswitch_data_214
    .sparse-switch
        0x27 -> :sswitch_153
        0x4b -> :sswitch_18a
        0x4d -> :sswitch_134
        0x53 -> :sswitch_131
        0x61 -> :sswitch_128
        0x64 -> :sswitch_126
        0x68 -> :sswitch_11b
        0x6b -> :sswitch_110
        0x6d -> :sswitch_10c
        0x73 -> :sswitch_108
        0x75 -> :sswitch_fd
        0x77 -> :sswitch_fa
    .end sparse-switch

    :pswitch_data_246
    .packed-switch 0x44
        :pswitch_189
        :pswitch_17b
        :pswitch_178
        :pswitch_171
        :pswitch_1b8
    .end packed-switch

    :pswitch_data_254
    .packed-switch 0x57
        :pswitch_1b7
        :pswitch_19e
        :pswitch_1cf
        :pswitch_18f
    .end packed-switch
.end method

.method static a(Ljava/lang/Appendable;I)V
    .registers 3

    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method static b(Ljava/lang/Appendable;II)V
    .registers 12

    const/16 v0, 0xa

    const/16 v1, 0x30

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_70

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    const/16 v7, 0x64

    if-ge p1, v6, :cond_1c

    if-ge p1, v7, :cond_1a

    if-ge p1, v0, :cond_18

    const/4 v6, 0x1

    goto :goto_1d

    :cond_18
    const/4 v6, 0x2

    goto :goto_1d

    :cond_1a
    const/4 v6, 0x3

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x4

    :goto_1d
    sub-int/2addr p2, v6

    :goto_1e
    if-lez p2, :cond_29

    move-object v8, p0

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1e

    :cond_29
    if-eq v6, v5, :cond_68

    if-eq v6, v2, :cond_53

    if-eq v6, v3, :cond_3e

    if-eq v6, v4, :cond_32

    goto :goto_99

    :cond_32
    div-int/lit16 p2, p1, 0x3e8

    add-int/2addr p2, v1

    int-to-char p2, p2

    move-object v2, p0

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    rem-int/lit16 p1, p1, 0x3e8

    :cond_3e
    if-lt p1, v7, :cond_4d

    div-int/lit8 p2, p1, 0x64

    add-int/2addr p2, v1

    int-to-char p2, p2

    move-object v2, p0

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    rem-int/lit8 p1, p1, 0x64

    goto :goto_53

    :cond_4d
    move-object p2, p0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_53
    :goto_53
    if-lt p1, v0, :cond_62

    div-int/lit8 p2, p1, 0xa

    add-int/2addr p2, v1

    int-to-char p2, p2

    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    rem-int/lit8 p1, p1, 0xa

    goto :goto_68

    :cond_62
    move-object p2, p0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_68
    :goto_68
    add-int/2addr p1, v1

    int-to-char p1, p1

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_99

    :cond_70
    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_73
    if-eqz p1, :cond_81

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v1

    int-to-char v4, v4

    aput-char v4, v0, v2

    div-int/lit8 p1, p1, 0xa

    move v2, v3

    goto :goto_73

    :cond_81
    :goto_81
    if-ge v2, p2, :cond_8c

    move-object p1, p0

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    goto :goto_81

    :cond_8c
    :goto_8c
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_99

    aget-char p1, v0, v2

    move-object p2, p0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_8c

    :cond_99
    :goto_99
    return-void
.end method

.method private c(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/P/N;->e:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1
    :try_start_7
    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->d:[Lcom/github/catvod/spider/merge/P/z;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    invoke-interface {v4, v0, p1}, Lcom/github/catvod/spider/merge/P/z;->b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1a
    move-exception p1

    .line 3
    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method static h(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .registers 7

    new-instance v0, Lcom/github/catvod/spider/merge/P/C;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/github/catvod/spider/merge/P/C;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    sget-object v1, Lcom/github/catvod/spider/merge/P/N;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1c

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1c

    move-object v2, p0

    :cond_1c
    return-object v2
.end method


# virtual methods
.method final d(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/Date;

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/P/N;->c(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_16
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_4f

    check-cast p1, Ljava/util/Calendar;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/catvod/spider/merge/P/N;->e:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->d:[Lcom/github/catvod/spider/merge/P/z;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    invoke-interface {v4, v0, p1}, Lcom/github/catvod/spider/merge/P/z;->b(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_4d

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 7
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_4d
    move-exception p1

    .line 8
    throw p1

    .line 9
    :cond_4f
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_69

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 10
    iget-object p1, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    invoke-static {p1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/P/N;->c(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown class: "

    .line 13
    invoke-static {v1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_76

    const-string p1, "<null>"

    goto :goto_7e

    .line 14
    :cond_76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_7e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8a

    :goto_89
    throw v0

    :goto_8a
    goto :goto_89
.end method

.method public final e()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/github/catvod/spider/merge/P/N;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/github/catvod/spider/merge/P/N;

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    iget-object v2, p1, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    iget-object p1, p1, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v0

    return v2
.end method

.method protected final i(II)Lcom/github/catvod/spider/merge/P/x;
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_12

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    new-instance v0, Lcom/github/catvod/spider/merge/P/y;

    invoke-direct {v0, p1, p2}, Lcom/github/catvod/spider/merge/P/y;-><init>(II)V

    return-object v0

    :cond_c
    new-instance p2, Lcom/github/catvod/spider/merge/P/I;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge/P/I;-><init>(I)V

    return-object p2

    :cond_12
    new-instance p2, Lcom/github/catvod/spider/merge/P/L;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge/P/L;-><init>(I)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FastDatePrinter["

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge/P/N;->c:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge/P/N;->b:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
