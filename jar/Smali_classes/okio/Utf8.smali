.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .registers 3

    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-ge v0, p0, :cond_f

    :cond_6
    const/16 v0, 0x9f

    const/16 v1, 0x7f

    if-le v1, p0, :cond_d

    goto :goto_11

    :cond_d
    if-lt v0, p0, :cond_11

    :cond_f
    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static final isUtf8Continuation(B)Z
    .registers 2

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final process2Utf8Bytes([BIILcom/github/catvod/spider/merge/C/b;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$process2Utf8Bytes"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    const v1, 0xfffd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-gt p2, v0, :cond_1a

    invoke-interface {p3, v1}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1a
    aget-byte p1, p0, p1

    aget-byte p0, p0, v0

    and-int/lit16 p2, p0, 0xc0

    const/16 v0, 0x80

    if-ne p2, v0, :cond_26

    const/4 p2, 0x1

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    if-nez p2, :cond_2d

    invoke-interface {p3, v1}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2d
    xor-int/lit16 p0, p0, 0xf80

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    if-ge p0, v0, :cond_38

    invoke-interface {p3, v1}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3f
    const/4 p0, 0x2

    return p0
.end method

.method public static final process3Utf8Bytes([BIILcom/github/catvod/spider/merge/C/b;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$process3Utf8Bytes"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x2

    const v4, 0xfffd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    if-gt p2, v0, :cond_2c

    invoke-interface {p3, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p1, v5

    if-le p2, p1, :cond_2b

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    if-nez v1, :cond_2a

    goto :goto_2b

    :cond_2a
    return v3

    :cond_2b
    :goto_2b
    return v5

    :cond_2c
    aget-byte p2, p0, p1

    add-int/2addr p1, v5

    aget-byte p1, p0, p1

    and-int/lit16 v6, p1, 0xc0

    if-ne v6, v2, :cond_37

    const/4 v6, 0x1

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    :goto_38
    if-nez v6, :cond_3e

    invoke-interface {p3, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    :cond_3e
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v2, :cond_45

    const/4 v1, 0x1

    :cond_45
    if-nez v1, :cond_4b

    invoke-interface {p3, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_4b
    const v0, -0x1e080

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xc

    xor-int/2addr p0, p1

    const/16 p1, 0x800

    if-ge p0, p1, :cond_5d

    :goto_59
    invoke-interface {p3, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_5d
    const p1, 0xdfff

    const p2, 0xd800

    if-le p2, p0, :cond_66

    goto :goto_69

    :cond_66
    if-lt p1, p0, :cond_69

    goto :goto_59

    :cond_69
    :goto_69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_70
    const/4 p0, 0x3

    return p0
.end method

.method public static final process4Utf8Bytes([BIILcom/github/catvod/spider/merge/C/b;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$process4Utf8Bytes"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x80

    const v5, 0xfffd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    if-gt p2, v0, :cond_3e

    invoke-interface {p3, v5}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p1, 0x1

    if-le p2, p3, :cond_3d

    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xc0

    if-ne p3, v4, :cond_2a

    const/4 p3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p3, 0x0

    :goto_2b
    if-nez p3, :cond_2e

    goto :goto_3d

    :cond_2e
    add-int/2addr p1, v2

    if-le p2, p1, :cond_3c

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v4, :cond_38

    const/4 v3, 0x1

    :cond_38
    if-nez v3, :cond_3b

    goto :goto_3c

    :cond_3b
    return v1

    :cond_3c
    :goto_3c
    return v2

    :cond_3d
    :goto_3d
    return v6

    :cond_3e
    aget-byte p2, p0, p1

    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v4, :cond_4a

    const/4 v8, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v8, 0x0

    :goto_4b
    if-nez v8, :cond_51

    invoke-interface {p3, v5}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    :cond_51
    add-int/2addr p1, v2

    aget-byte p1, p0, p1

    and-int/lit16 v8, p1, 0xc0

    if-ne v8, v4, :cond_5a

    const/4 v8, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v8, 0x0

    :goto_5b
    if-nez v8, :cond_61

    invoke-interface {p3, v5}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_61
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v4, :cond_68

    const/4 v3, 0x1

    :cond_68
    if-nez v3, :cond_6e

    invoke-interface {p3, v5}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_6e
    const v0, 0x381f80

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, v7, 0xc

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x12

    xor-int/2addr p0, p1

    const p1, 0x10ffff

    if-le p0, p1, :cond_84

    :goto_80
    invoke-interface {p3, v5}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_84
    const p1, 0xdfff

    const p2, 0xd800

    if-le p2, p0, :cond_8d

    goto :goto_90

    :cond_8d
    if-lt p1, p0, :cond_90

    goto :goto_80

    :cond_90
    :goto_90
    const/high16 p1, 0x10000

    if-ge p0, p1, :cond_95

    goto :goto_80

    :cond_95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9c
    const/4 p0, 0x4

    return p0
.end method

.method public static final processUtf16Chars([BIILcom/github/catvod/spider/merge/C/b;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "$this$processUtf16Chars"

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "yield"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    :cond_12
    :goto_12
    if-ge v3, v1, :cond_19d

    aget-byte v4, v0, v3

    if-ltz v4, :cond_36

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :goto_22
    if-ge v3, v1, :cond_12

    aget-byte v4, v0, v3

    if-ltz v4, :cond_12

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_22

    :cond_36
    shr-int/lit8 v5, v4, 0x5

    const/4 v6, -0x2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const v10, 0xfffd

    const/4 v11, 0x1

    if-ne v5, v6, :cond_70

    add-int/lit8 v4, v3, 0x1

    if-gt v1, v4, :cond_50

    :goto_46
    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    const/4 v7, 0x1

    goto :goto_6e

    :cond_50
    aget-byte v5, v0, v3

    aget-byte v4, v0, v4

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v9, :cond_59

    const/4 v8, 0x1

    :cond_59
    if-nez v8, :cond_5c

    goto :goto_46

    :cond_5c
    xor-int/lit16 v4, v4, 0xf80

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v4, v5

    if-ge v4, v9, :cond_65

    int-to-char v4, v10

    goto :goto_66

    :cond_65
    int-to-char v4, v4

    :goto_66
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_6d
    const/4 v7, 0x2

    :goto_6e
    add-int/2addr v3, v7

    goto :goto_12

    :cond_70
    shr-int/lit8 v5, v4, 0x4

    const v12, 0xd800

    const v13, 0xdfff

    const/4 v14, 0x3

    if-ne v5, v6, :cond_e0

    add-int/lit8 v4, v3, 0x2

    if-gt v1, v4, :cond_95

    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4e

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v9, :cond_92

    const/4 v8, 0x1

    :cond_92
    if-nez v8, :cond_6d

    goto :goto_4e

    :cond_95
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v9, :cond_a1

    const/4 v15, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v15, 0x0

    :goto_a2
    if-nez v15, :cond_ad

    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_ad
    aget-byte v4, v0, v4

    and-int/lit16 v15, v4, 0xc0

    if-ne v15, v9, :cond_b4

    const/4 v8, 0x1

    :cond_b4
    if-nez v8, :cond_bf

    int-to-char v4, v10

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_bf
    const v7, -0x1e080

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v4, v5

    const/16 v5, 0x800

    if-ge v4, v5, :cond_d6

    :goto_cd
    int-to-char v4, v10

    :goto_ce
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    :cond_d6
    if-le v12, v4, :cond_d9

    goto :goto_dc

    :cond_d9
    if-lt v13, v4, :cond_dc

    goto :goto_cd

    :cond_dc
    :goto_dc
    int-to-char v4, v4

    goto :goto_ce

    :cond_de
    :goto_de
    const/4 v7, 0x3

    goto :goto_6e

    :cond_e0
    shr-int/lit8 v4, v4, 0x3

    if-ne v4, v6, :cond_192

    add-int/lit8 v4, v3, 0x3

    if-gt v1, v4, :cond_10f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4e

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v9, :cond_fb

    const/4 v4, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v4, 0x0

    :goto_fc
    if-nez v4, :cond_100

    goto/16 :goto_4e

    :cond_100
    add-int/lit8 v4, v3, 0x2

    if-le v1, v4, :cond_6d

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v9, :cond_10b

    const/4 v8, 0x1

    :cond_10b
    if-nez v8, :cond_de

    goto/16 :goto_6d

    :cond_10f
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v9, :cond_11b

    const/4 v15, 0x1

    goto :goto_11c

    :cond_11b
    const/4 v15, 0x0

    :goto_11c
    if-nez v15, :cond_127

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4e

    :cond_127
    add-int/lit8 v15, v3, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v7, v15, 0xc0

    if-ne v7, v9, :cond_131

    const/4 v7, 0x1

    goto :goto_132

    :cond_131
    const/4 v7, 0x0

    :goto_132
    if-nez v7, :cond_13d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    :cond_13d
    aget-byte v4, v0, v4

    and-int/lit16 v7, v4, 0xc0

    if-ne v7, v9, :cond_144

    const/4 v8, 0x1

    :cond_144
    if-nez v8, :cond_14e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    :cond_14e
    const v7, 0x381f80

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v15, 0x6

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0x12

    xor-int/2addr v4, v5

    const v5, 0x10ffff

    if-le v4, v5, :cond_168

    :cond_160
    :goto_160
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :goto_164
    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18f

    :cond_168
    if-le v12, v4, :cond_16b

    goto :goto_16e

    :cond_16b
    if-lt v13, v4, :cond_16e

    goto :goto_160

    :cond_16e
    :goto_16e
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_173

    goto :goto_160

    :cond_173
    if-eq v4, v10, :cond_160

    ushr-int/lit8 v5, v4, 0xa

    const v6, 0xd7c0

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_164

    :goto_18f
    const/4 v7, 0x4

    goto/16 :goto_6e

    :cond_192
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_19d
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILcom/github/catvod/spider/merge/C/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-",
            "Ljava/lang/Byte;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$processUtf8Bytes"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_a
    if-ge p1, p2, :cond_db

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/D/e;->e(II)I

    move-result v2

    if-gez v2, :cond_3e

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_22
    if-ge p1, p2, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge/D/e;->e(II)I

    move-result v0

    if-gez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_22

    :cond_3e
    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge/D/e;->e(II)I

    move-result v2

    if-gez v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    :goto_4a
    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_5a
    invoke-interface {p3, v0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_60
    const v2, 0xd800

    const/16 v3, 0x3f

    if-gt v2, v0, :cond_c9

    const v2, 0xdfff

    if-ge v2, v0, :cond_6d

    goto :goto_c9

    :cond_6d
    const v4, 0xdbff

    invoke-static {v0, v4}, Lcom/github/catvod/spider/merge/D/e;->e(II)I

    move-result v4

    if-gtz v4, :cond_c4

    add-int/lit8 v4, p1, 0x1

    if-le p2, v4, :cond_c4

    const v5, 0xdc00

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_c4

    if-ge v2, v6, :cond_86

    goto :goto_c4

    :cond_86
    shl-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, v0

    const v0, -0x35fdc00

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v0, v2, 0xc

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v0, v2, 0x6

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v2, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_a

    :cond_c4
    :goto_c4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_5a

    :cond_c9
    :goto_c9
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    goto/16 :goto_4a

    :cond_db
    return-void
.end method

.method public static final processUtf8CodePoints([BIILcom/github/catvod/spider/merge/C/b;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/github/catvod/spider/merge/C/b<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "$this$processUtf8CodePoints"

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "yield"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    :cond_12
    :goto_12
    if-ge v3, v1, :cond_184

    aget-byte v4, v0, v3

    if-ltz v4, :cond_34

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :goto_21
    if-ge v3, v1, :cond_12

    aget-byte v4, v0, v3

    if-ltz v4, :cond_12

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_21

    :cond_34
    shr-int/lit8 v5, v4, 0x5

    const/4 v6, -0x2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const v10, 0xfffd

    const/4 v11, 0x1

    if-ne v5, v6, :cond_6f

    add-int/lit8 v4, v3, 0x1

    if-gt v1, v4, :cond_4d

    :goto_44
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    :goto_4b
    const/4 v7, 0x1

    goto :goto_6d

    :cond_4d
    aget-byte v5, v0, v3

    aget-byte v4, v0, v4

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v9, :cond_56

    const/4 v8, 0x1

    :cond_56
    if-nez v8, :cond_59

    goto :goto_44

    :cond_59
    xor-int/lit16 v4, v4, 0xf80

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v4, v5

    if-ge v4, v9, :cond_65

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_69

    :cond_65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_69
    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    :goto_6c
    const/4 v7, 0x2

    :goto_6d
    add-int/2addr v3, v7

    goto :goto_12

    :cond_6f
    shr-int/lit8 v5, v4, 0x4

    const v12, 0xd800

    const v13, 0xdfff

    const/4 v14, 0x3

    if-ne v5, v6, :cond_de

    add-int/lit8 v4, v3, 0x2

    if-gt v1, v4, :cond_93

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4b

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v9, :cond_90

    const/4 v8, 0x1

    :cond_90
    if-nez v8, :cond_6c

    goto :goto_4b

    :cond_93
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v9, :cond_9f

    const/4 v15, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v15, 0x0

    :goto_a0
    if-nez v15, :cond_aa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_aa
    aget-byte v4, v0, v4

    and-int/lit16 v15, v4, 0xc0

    if-ne v15, v9, :cond_b1

    const/4 v8, 0x1

    :cond_b1
    if-nez v8, :cond_bb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_bb
    const v7, -0x1e080

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v4, v5

    const/16 v5, 0x800

    if-ge v4, v5, :cond_d1

    :goto_c9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_cd
    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dc

    :cond_d1
    if-le v12, v4, :cond_d4

    goto :goto_d7

    :cond_d4
    if-lt v13, v4, :cond_d7

    goto :goto_c9

    :cond_d7
    :goto_d7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_cd

    :cond_dc
    :goto_dc
    const/4 v7, 0x3

    goto :goto_6d

    :cond_de
    shr-int/lit8 v4, v4, 0x3

    if-ne v4, v6, :cond_179

    add-int/lit8 v4, v3, 0x3

    if-gt v1, v4, :cond_10d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-le v1, v4, :cond_4b

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v9, :cond_f9

    const/4 v4, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v4, 0x0

    :goto_fa
    if-nez v4, :cond_fe

    goto/16 :goto_4b

    :cond_fe
    add-int/lit8 v4, v3, 0x2

    if-le v1, v4, :cond_6c

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v9, :cond_109

    const/4 v8, 0x1

    :cond_109
    if-nez v8, :cond_dc

    goto/16 :goto_6c

    :cond_10d
    aget-byte v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v9, :cond_119

    const/4 v15, 0x1

    goto :goto_11a

    :cond_119
    const/4 v15, 0x0

    :goto_11a
    if-nez v15, :cond_125

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4b

    :cond_125
    add-int/lit8 v15, v3, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v7, v15, 0xc0

    if-ne v7, v9, :cond_12f

    const/4 v7, 0x1

    goto :goto_130

    :cond_12f
    const/4 v7, 0x0

    :goto_130
    if-nez v7, :cond_13b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6c

    :cond_13b
    aget-byte v4, v0, v4

    and-int/lit16 v7, v4, 0xc0

    if-ne v7, v9, :cond_142

    const/4 v8, 0x1

    :cond_142
    if-nez v8, :cond_14c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dc

    :cond_14c
    const v7, 0x381f80

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v15, 0x6

    xor-int/2addr v4, v7

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v4, v6

    shl-int/lit8 v5, v5, 0x12

    xor-int/2addr v4, v5

    const v5, 0x10ffff

    if-le v4, v5, :cond_166

    :goto_15e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_162
    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_176

    :cond_166
    if-le v12, v4, :cond_169

    goto :goto_16c

    :cond_169
    if-lt v13, v4, :cond_16c

    goto :goto_15e

    :cond_16c
    :goto_16c
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_171

    goto :goto_15e

    :cond_171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_162

    :goto_176
    const/4 v7, 0x4

    goto/16 :goto_6d

    :cond_179
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/catvod/spider/merge/C/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_184
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .registers 12

    const-string v0, "$this$utf8Size"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ltz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_b0

    if-lt p2, p1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_8d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p2, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_66

    const-wide/16 v0, 0x0

    :goto_20
    if-ge p1, p2, :cond_65

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_2e

    add-long/2addr v0, v4

    goto :goto_62

    :cond_2e
    const/16 v3, 0x800

    if-ge v2, v3, :cond_34

    const/4 v2, 0x2

    goto :goto_60

    :cond_34
    const v3, 0xd800

    if-lt v2, v3, :cond_5f

    const v3, 0xdfff

    if-le v2, v3, :cond_3f

    goto :goto_5f

    :cond_3f
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_48

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_49

    :cond_48
    const/4 v7, 0x0

    :goto_49
    const v8, 0xdbff

    if-gt v2, v8, :cond_5c

    const v2, 0xdc00

    if-lt v7, v2, :cond_5c

    if-le v7, v3, :cond_56

    goto :goto_5c

    :cond_56
    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_20

    :cond_5c
    :goto_5c
    add-long/2addr v0, v4

    move p1, v6

    goto :goto_20

    :cond_5f
    :goto_5f
    const/4 v2, 0x3

    :goto_60
    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_65
    return-wide v0

    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b0
    const-string p0, "beginIndex < 0: "

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/l/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c1

    :goto_c0
    throw p1

    :goto_c1
    goto :goto_c0
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_d
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method
