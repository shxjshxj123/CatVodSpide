.class public final Lokio/internal/ByteStringKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 1

    invoke-static {p0}, Lokio/internal/ByteStringKt;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_8
    :goto_8
    if-ge v4, v2, :cond_1d7

    aget-byte v7, v0, v4

    const/16 v8, 0x7f

    const/16 v9, 0x9f

    const/16 v10, 0x1f

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_71

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_26

    return v5

    :cond_26
    if-eq v7, v13, :cond_38

    if-eq v7, v11, :cond_38

    if-ltz v7, :cond_2e

    if-ge v10, v7, :cond_33

    :cond_2e
    if-le v8, v7, :cond_31

    goto :goto_35

    :cond_31
    if-lt v9, v7, :cond_35

    :cond_33
    const/4 v6, 0x1

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v6, 0x0

    :goto_36
    if-nez v6, :cond_3a

    :cond_38
    if-ne v7, v12, :cond_3b

    :cond_3a
    return v16

    :cond_3b
    if-ge v7, v14, :cond_3f

    const/4 v6, 0x1

    goto :goto_40

    :cond_3f
    const/4 v6, 0x2

    :goto_40
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :goto_43
    move/from16 v6, v18

    if-ge v4, v2, :cond_8

    aget-byte v7, v0, v4

    if-ltz v7, :cond_8

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v0, v4

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_54

    return v5

    :cond_54
    if-eq v4, v13, :cond_66

    if-eq v4, v11, :cond_66

    if-ltz v4, :cond_5c

    if-ge v10, v4, :cond_61

    :cond_5c
    if-le v8, v4, :cond_5f

    goto :goto_63

    :cond_5f
    if-lt v9, v4, :cond_63

    :cond_61
    const/4 v6, 0x1

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v6, 0x0

    :goto_64
    if-nez v6, :cond_68

    :cond_66
    if-ne v4, v12, :cond_69

    :cond_68
    return v16

    :cond_69
    if-ge v4, v14, :cond_6d

    const/4 v4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x2

    :goto_6e
    add-int/2addr v5, v4

    move v4, v7

    goto :goto_43

    :cond_71
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_c3

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_80

    if-ne v6, v1, :cond_7f

    return v5

    :cond_7f
    return v16

    :cond_80
    aget-byte v7, v0, v4

    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_8a

    const/4 v15, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v15, 0x0

    :goto_8b
    if-nez v15, :cond_91

    if-ne v6, v1, :cond_90

    return v5

    :cond_90
    return v16

    :cond_91
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_9c

    if-ne v6, v1, :cond_9b

    return v5

    :cond_9b
    return v16

    :cond_9c
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_a1

    return v5

    :cond_a1
    if-eq v3, v13, :cond_b3

    if-eq v3, v11, :cond_b3

    if-ltz v3, :cond_a9

    if-ge v10, v3, :cond_ae

    :cond_a9
    if-le v8, v3, :cond_ac

    goto :goto_b0

    :cond_ac
    if-lt v9, v3, :cond_b0

    :cond_ae
    const/4 v6, 0x1

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v6, 0x0

    :goto_b1
    if-nez v6, :cond_b5

    :cond_b3
    if-ne v3, v12, :cond_b6

    :cond_b5
    return v16

    :cond_b6
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_bc

    const/4 v15, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v15, 0x2

    :goto_bd
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x2

    :goto_c0
    move v6, v7

    goto/16 :goto_8

    :cond_c3
    shr-int/lit8 v3, v7, 0x4

    const v12, 0xd800

    const v9, 0xdfff

    if-ne v3, v15, :cond_13e

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_d5

    if-ne v6, v1, :cond_d4

    return v5

    :cond_d4
    return v16

    :cond_d5
    aget-byte v7, v0, v4

    add-int/lit8 v15, v4, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v8, v15, 0xc0

    if-ne v8, v14, :cond_e1

    const/4 v8, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v8, 0x0

    :goto_e2
    if-nez v8, :cond_e8

    if-ne v6, v1, :cond_e7

    return v5

    :cond_e7
    return v16

    :cond_e8
    aget-byte v3, v0, v3

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v14, :cond_f0

    const/4 v8, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v8, 0x0

    :goto_f1
    if-nez v8, :cond_f7

    if-ne v6, v1, :cond_f6

    return v5

    :cond_f6
    return v16

    :cond_f7
    const v8, -0x1e080

    xor-int/2addr v3, v8

    shl-int/lit8 v8, v15, 0x6

    xor-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_109

    if-ne v6, v1, :cond_108

    return v5

    :cond_108
    return v16

    :cond_109
    if-le v12, v3, :cond_10c

    goto :goto_112

    :cond_10c
    if-lt v9, v3, :cond_112

    if-ne v6, v1, :cond_111

    return v5

    :cond_111
    return v16

    :cond_112
    :goto_112
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_117

    return v5

    :cond_117
    if-eq v3, v13, :cond_12d

    if-eq v3, v11, :cond_12d

    if-ltz v3, :cond_11f

    if-ge v10, v3, :cond_128

    :cond_11f
    const/16 v6, 0x7f

    if-le v6, v3, :cond_124

    goto :goto_12a

    :cond_124
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_12a

    :cond_128
    const/4 v6, 0x1

    goto :goto_12b

    :cond_12a
    :goto_12a
    const/4 v6, 0x0

    :goto_12b
    if-nez v6, :cond_132

    :cond_12d
    const v6, 0xfffd

    if-ne v3, v6, :cond_133

    :cond_132
    return v16

    :cond_133
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_139

    const/4 v15, 0x1

    goto :goto_13a

    :cond_139
    const/4 v15, 0x2

    :goto_13a
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x3

    goto :goto_c0

    :cond_13e
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_1d3

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_14a

    if-ne v6, v1, :cond_149

    return v5

    :cond_149
    return v16

    :cond_14a
    aget-byte v7, v0, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v15, v8, 0xc0

    if-ne v15, v14, :cond_156

    const/4 v15, 0x1

    goto :goto_157

    :cond_156
    const/4 v15, 0x0

    :goto_157
    if-nez v15, :cond_15d

    if-ne v6, v1, :cond_15c

    return v5

    :cond_15c
    return v16

    :cond_15d
    add-int/lit8 v15, v4, 0x2

    aget-byte v15, v0, v15

    and-int/lit16 v10, v15, 0xc0

    if-ne v10, v14, :cond_167

    const/4 v10, 0x1

    goto :goto_168

    :cond_167
    const/4 v10, 0x0

    :goto_168
    if-nez v10, :cond_16e

    if-ne v6, v1, :cond_16d

    return v5

    :cond_16d
    return v16

    :cond_16e
    aget-byte v3, v0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v14, :cond_176

    const/4 v10, 0x1

    goto :goto_177

    :cond_176
    const/4 v10, 0x0

    :goto_177
    if-nez v10, :cond_17d

    if-ne v6, v1, :cond_17c

    return v5

    :cond_17c
    return v16

    :cond_17d
    const v10, 0x381f80

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v15, 0x6

    xor-int/2addr v3, v10

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_193

    if-ne v6, v1, :cond_192

    return v5

    :cond_192
    return v16

    :cond_193
    if-le v12, v3, :cond_196

    goto :goto_19c

    :cond_196
    if-lt v9, v3, :cond_19c

    if-ne v6, v1, :cond_19b

    return v5

    :cond_19b
    return v16

    :cond_19c
    :goto_19c
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_1a4

    if-ne v6, v1, :cond_1a3

    return v5

    :cond_1a3
    return v16

    :cond_1a4
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1a9

    return v5

    :cond_1a9
    if-eq v3, v13, :cond_1c1

    if-eq v3, v11, :cond_1c1

    if-ltz v3, :cond_1b3

    const/16 v6, 0x1f

    if-ge v6, v3, :cond_1bc

    :cond_1b3
    const/16 v6, 0x7f

    if-le v6, v3, :cond_1b8

    goto :goto_1be

    :cond_1b8
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_1be

    :cond_1bc
    const/4 v6, 0x1

    goto :goto_1bf

    :cond_1be
    :goto_1be
    const/4 v6, 0x0

    :goto_1bf
    if-nez v6, :cond_1c6

    :cond_1c1
    const v6, 0xfffd

    if-ne v3, v6, :cond_1c7

    :cond_1c6
    return v16

    :cond_1c7
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_1cd

    const/4 v15, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v15, 0x2

    :goto_1ce
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_c0

    :cond_1d3
    if-ne v6, v1, :cond_1d6

    return v5

    :cond_1d6
    return v16

    :cond_1d7
    return v5
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this$commonBase64"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "$this$commonBase64Url"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v0

    invoke-static {p0, v0}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 11

    const-string v0, "$this$commonCompareTo"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_32

    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_2d

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    if-ge v7, v8, :cond_30

    goto :goto_31

    :cond_30
    const/4 v5, 0x1

    :goto_31
    return v5

    :cond_32
    if-ne v0, v1, :cond_35

    return v3

    :cond_35
    if-ge v0, v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v5, 0x1

    :goto_39
    return v5
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 2

    const-string v0, "$this$commonDecodeBase64"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 6

    const-string v0, "$this$commonDecodeHex"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    :goto_1b
    if-ge v1, v0, :cond_3a

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    # invokes: Lokio/internal/ByteStringKt;->decodeHexDigit(C)I
    invoke-static {v4}, Lokio/internal/ByteStringKt;->access$decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    # invokes: Lokio/internal/ByteStringKt;->decodeHexDigit(C)I
    invoke-static {v3}, Lokio/internal/ByteStringKt;->access$decodeHexDigit(C)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3a
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v2}, Lokio/ByteString;-><init>([B)V

    return-object p0

    :cond_40
    const-string v0, "Unexpected hex string: "

    .line 1
    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "$this$commonEncodeUtf8"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    invoke-static {p0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 5

    const-string v0, "$this$commonEndsWith"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .registers 5

    const-string v0, "$this$commonEndsWith"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 6

    const-string v0, "$this$commonEquals"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_a

    goto :goto_2c

    :cond_a
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_2b

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v1, v2, v1, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 3

    const-string v0, "$this$commonGetByte"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 2

    const-string v0, "$this$commonGetSize"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 2

    const-string v0, "$this$commonHashCode"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$okio(I)V

    return v0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 9

    const-string v0, "$this$commonHex"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v1, :cond_36

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .registers 7

    const-string v0, "$this$commonIndexOf"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p2, v0, :cond_29

    :goto_18
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v3, p1

    invoke-static {v2, p2, p1, v1, v3}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_24

    return p2

    :cond_24
    if-eq p2, v0, :cond_29

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "$this$commonInternalArray"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .registers 4

    const-string v0, "$this$commonLastIndexOf"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .registers 6

    const-string v0, "$this$commonLastIndexOf"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_15
    if-ltz p2, :cond_27

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_24

    return p2

    :cond_24
    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/ByteString;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v1}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 6

    const-string v0, "$this$commonRangeEquals"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 6

    const-string v0, "$this$commonRangeEquals"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_26

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_26

    if-ltz p3, :cond_26

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_26

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 4

    const-string v0, "$this$commonStartsWith"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .registers 4

    const-string v0, "$this$commonStartsWith"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 5

    const-string v0, "$this$commonSubstring"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ltz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_66

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-gt p2, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_45

    sub-int v1, p2, p1

    if-ltz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_39

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    if-ne p2, v0, :cond_2b

    return-object p0

    :cond_2b
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/catvod/spider/merge/A/c;->c([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    const-string p1, "endIndex > length("

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "$this$commonToAsciiLowercase"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    int-to-byte v2, v2

    if-lt v1, v2, :cond_4b

    const/16 v3, 0x5a

    int-to-byte v3, v3

    if-le v1, v3, :cond_1e

    goto :goto_4b

    :cond_1e
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v4}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_33
    array-length v0, p0

    if-ge v4, v0, :cond_45

    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_42

    if-le v0, v3, :cond_3d

    goto :goto_42

    :cond_3d
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_45
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4e
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "$this$commonToAsciiUppercase"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    int-to-byte v2, v2

    if-lt v1, v2, :cond_4b

    const/16 v3, 0x7a

    int-to-byte v3, v3

    if-le v1, v3, :cond_1e

    goto :goto_4b

    :cond_1e
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v4}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, -0x20

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_33
    array-length v0, p0

    if-ge v4, v0, :cond_45

    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_42

    if-le v0, v3, :cond_3d

    goto :goto_42

    :cond_3d
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_45
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4e
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "$this$commonToByteArray"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .registers 10

    const-string v0, "$this$commonToByteString"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lokio/ByteString;

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lcom/github/catvod/spider/merge/A/c;->c([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 9

    const-string v0, "$this$commonToString"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_16

    const-string p0, "[size=0]"

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    const/16 v3, 0x40

    # invokes: Lokio/internal/ByteStringKt;->codePointIndexToCharIndex([BI)I
    invoke-static {v0, v3}, Lokio/internal/ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    move-result v0

    const/4 v4, -0x1

    const-string v5, "\u2026]"

    const/16 v6, 0x5d

    const-string v7, "[size="

    if-ne v0, v4, :cond_a3

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v3, :cond_41

    const-string v0, "[hex="

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 3
    :cond_41
    invoke-static {v7}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    if-gt v3, v4, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    if-eqz v1, :cond_82

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ne v3, v1, :cond_65

    goto :goto_73

    :cond_65
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/github/catvod/spider/merge/A/c;->c([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lokio/ByteString;-><init>([B)V

    move-object p0, v1

    :goto_73
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_82
    const-string v0, "endIndex > length("

    .line 5
    invoke-static {v0}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fd

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge/D/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-static {v2, v3, v4}, Lcom/github/catvod/spider/merge/F/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-static {v2, v3, v4}, Lcom/github/catvod/spider/merge/F/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-static {v2, v3, v4}, Lcom/github/catvod/spider/merge/F/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_e8

    .line 7
    invoke-static {v7}, Lcom/github/catvod/spider/merge/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " text="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p0, "[text="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_fd
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "$this$commonUtf8"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v0

    invoke-static {v0}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    :cond_16
    return-object v0
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5

    const-string v0, "$this$commonWrite"

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge/D/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method private static final decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-le v0, p0, :cond_5

    goto :goto_b

    :cond_5
    const/16 v1, 0x39

    if-lt v1, p0, :cond_b

    sub-int/2addr p0, v0

    goto :goto_21

    :cond_b
    :goto_b
    const/16 v0, 0x66

    const/16 v1, 0x61

    if-le v1, p0, :cond_12

    goto :goto_18

    :cond_12
    if-lt v0, p0, :cond_18

    :goto_14
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    goto :goto_21

    :cond_18
    :goto_18
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-gt v1, p0, :cond_22

    if-lt v0, p0, :cond_22

    goto :goto_14

    :goto_21
    return p0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3a

    :goto_39
    throw v0

    :goto_3a
    goto :goto_39
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    sget-object v0, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
