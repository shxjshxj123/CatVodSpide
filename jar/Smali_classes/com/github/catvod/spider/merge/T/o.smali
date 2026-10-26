.class public final Lcom/github/catvod/spider/merge/T/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcom/github/catvod/spider/merge/T/o;->a:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge/T/o;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/github/catvod/spider/merge/T/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge/T/g;-><init>()V

    return-void

    nop

    :array_16
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static a(Lcom/github/catvod/spider/merge/T/n;Ljava/lang/String;I)V
    .registers 13

    .line 1
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/n;->b(Lcom/github/catvod/spider/merge/T/n;[Ljava/lang/String;)[Ljava/lang/String;

    new-array v0, p2, [I

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/n;->d(Lcom/github/catvod/spider/merge/T/n;[I)[I

    new-array v0, p2, [I

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/n;->f(Lcom/github/catvod/spider/merge/T/n;[I)[I

    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/T/n;->h(Lcom/github/catvod/spider/merge/T/n;[Ljava/lang/String;)[Ljava/lang/String;

    new-instance v0, Lcom/github/catvod/spider/merge/U/a;

    .line 2
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/github/catvod/spider/merge/U/a;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_24
    :try_start_24
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->w()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_96

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge/U/a;->p(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->a()V

    sget-object v4, Lcom/github/catvod/spider/merge/T/o;->a:[C

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge/U/a;->q([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->u()C

    move-result v6

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->a()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_5a

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge/U/a;->p(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->a()V

    goto :goto_5b

    :cond_5a
    const/4 v6, -0x1

    :goto_5b
    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Lcom/github/catvod/spider/merge/U/a;->p(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->a()V

    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/n;->a(Lcom/github/catvod/spider/merge/T/n;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v1

    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/n;->c(Lcom/github/catvod/spider/merge/T/n;)[I

    move-result-object v7

    aput v4, v7, v1

    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/n;->e(Lcom/github/catvod/spider/merge/T/n;)[I

    move-result-object v7

    aput v4, v7, v5

    invoke-static {p0}, Lcom/github/catvod/spider/merge/T/n;->g(Lcom/github/catvod/spider/merge/T/n;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v5

    if-eq v6, v8, :cond_93

    sget-object v5, Lcom/github/catvod/spider/merge/T/o;->b:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, p1

    aput v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_96
    if-ne v1, p2, :cond_99

    const/4 p1, 0x1

    :cond_99
    const-string p0, "Unexpected count of entities loaded"

    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge/R/c;->f(ZLjava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_24 .. :try_end_9e} :catchall_a2

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->d()V

    return-void

    :catchall_a2
    move-exception p0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge/U/a;->d()V

    goto :goto_a8

    :goto_a7
    throw p0

    :goto_a8
    goto :goto_a7
.end method

.method private static b(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/n;I)V
    .registers 5

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge/T/n;->j(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_15

    const/16 p2, 0x26

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    goto :goto_1f

    :cond_15
    const-string p1, "&#x"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public static c(Ljava/lang/String;[I)I
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge/T/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    :cond_1a
    sget-object v0, Lcom/github/catvod/spider/merge/T/n;->g:Lcom/github/catvod/spider/merge/T/n;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/T/n;->i(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_26

    aput p0, p1, v2

    return v1

    :cond_26
    return v2
.end method

.method static d(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge/T/g;ZZZZ)V
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/T/g;->c()Lcom/github/catvod/spider/merge/T/n;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/T/g;->b()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    move-object/from16 v3, p2

    iget v4, v3, Lcom/github/catvod/spider/merge/T/g;->d:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_16
    if-ge v7, v5, :cond_cb

    move-object/from16 v11, p1

    invoke-virtual {v11, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    const/16 v13, 0x20

    const/4 v14, 0x1

    if-eqz p4, :cond_46

    invoke-static {v12}, Lcom/github/catvod/spider/merge/S/b;->e(I)Z

    move-result v15

    if-eqz v15, :cond_3e

    if-eqz p5, :cond_2f

    if-nez v9, :cond_2f

    goto/16 :goto_c4

    :cond_2f
    if-eqz v10, :cond_33

    goto/16 :goto_c4

    :cond_33
    if-eqz p6, :cond_38

    const/4 v8, 0x1

    goto/16 :goto_c4

    :cond_38
    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v10, 0x1

    goto/16 :goto_c4

    :cond_3e
    if-eqz v8, :cond_44

    invoke-interface {v0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v8, 0x0

    :cond_44
    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_46
    const/high16 v15, 0x10000

    if-ge v12, v15, :cond_ae

    int-to-char v15, v12

    const/16 v6, 0x9

    if-eq v15, v6, :cond_aa

    const/16 v6, 0xa

    if-eq v15, v6, :cond_aa

    const/16 v6, 0xd

    if-eq v15, v6, :cond_aa

    const/16 v6, 0x22

    if-eq v15, v6, :cond_a5

    const/16 v6, 0x26

    if-eq v15, v6, :cond_a2

    const/16 v6, 0x3c

    if-eq v15, v6, :cond_92

    const/16 v6, 0x3e

    if-eq v15, v6, :cond_8d

    const/16 v6, 0xa0

    if-eq v15, v6, :cond_83

    if-lt v15, v13, :cond_c1

    .line 1
    invoke-static {v4}, Lcom/github/catvod/spider/merge/o/a;->a(I)I

    move-result v6

    if-eqz v6, :cond_7a

    if-eq v6, v14, :cond_80

    invoke-virtual {v2, v15}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v14

    goto :goto_80

    :cond_7a
    const/16 v6, 0x80

    if-ge v15, v6, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v14, 0x0

    :cond_80
    :goto_80
    if-nez v14, :cond_aa

    goto :goto_c1

    .line 2
    :cond_83
    sget-object v6, Lcom/github/catvod/spider/merge/T/n;->e:Lcom/github/catvod/spider/merge/T/n;

    if-eq v1, v6, :cond_8a

    const-string v6, "&nbsp;"

    goto :goto_bd

    :cond_8a
    const-string v6, "&#xa0;"

    goto :goto_bd

    :cond_8d
    if-nez p3, :cond_aa

    const-string v6, "&gt;"

    goto :goto_bd

    :cond_92
    if-eqz p3, :cond_9f

    sget-object v6, Lcom/github/catvod/spider/merge/T/n;->e:Lcom/github/catvod/spider/merge/T/n;

    if-eq v1, v6, :cond_9f

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge/T/g;->h()I

    move-result v6

    const/4 v13, 0x2

    if-ne v6, v13, :cond_aa

    :cond_9f
    const-string v6, "&lt;"

    goto :goto_bd

    :cond_a2
    const-string v6, "&amp;"

    goto :goto_bd

    :cond_a5
    if-eqz p3, :cond_aa

    const-string v6, "&quot;"

    goto :goto_bd

    :cond_aa
    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_c4

    :cond_ae
    new-instance v6, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c1

    :goto_bd
    invoke-interface {v0, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_c4

    :cond_c1
    :goto_c1
    invoke-static {v0, v1, v12}, Lcom/github/catvod/spider/merge/T/o;->b(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge/T/n;I)V

    :goto_c4
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v7, v6

    goto/16 :goto_16

    :cond_cb
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/T/n;->f:Lcom/github/catvod/spider/merge/T/n;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/T/n;->i(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge/T/n;->g:Lcom/github/catvod/spider/merge/T/n;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge/T/n;->i(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
