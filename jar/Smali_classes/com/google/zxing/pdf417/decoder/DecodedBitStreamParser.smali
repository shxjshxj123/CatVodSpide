.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_2d
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_3f

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 25

    move/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const-wide/16 v6, 0x384

    const/4 v8, 0x6

    const/16 v9, 0x39c

    const/16 v10, 0x385

    const/16 v11, 0x384

    const/4 v15, 0x0

    if-ne v0, v10, :cond_9b

    new-array v0, v8, [I

    add-int/lit8 v16, p3, 0x1

    aget v17, p1, p3

    move/from16 v12, v16

    move/from16 v13, v17

    const/16 v16, 0x0

    :goto_27
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    :goto_2b
    aget v14, p1, v15

    if-ge v12, v14, :cond_83

    if-nez v16, :cond_83

    add-int/lit8 v14, v17, 0x1

    aput v13, v0, v17

    mul-long v18, v18, v6

    int-to-long v6, v13

    add-long v18, v18, v6

    add-int/lit8 v6, v12, 0x1

    aget v13, p1, v12

    if-eq v13, v11, :cond_76

    if-eq v13, v10, :cond_76

    if-eq v13, v5, :cond_76

    if-eq v13, v9, :cond_76

    if-eq v13, v4, :cond_76

    if-eq v13, v3, :cond_76

    if-ne v13, v2, :cond_4d

    goto :goto_76

    :cond_4d
    rem-int/lit8 v7, v14, 0x5

    if-nez v7, :cond_6c

    if-lez v14, :cond_6c

    const/4 v7, 0x0

    :goto_54
    if-ge v7, v8, :cond_68

    rsub-int/lit8 v12, v7, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v2, v18, v12

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    goto :goto_54

    :cond_68
    move v12, v6

    const-wide/16 v6, 0x384

    goto :goto_27

    :cond_6c
    move v12, v6

    move/from16 v17, v14

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    goto :goto_2b

    :cond_76
    :goto_76
    add-int/lit8 v12, v6, -0x1

    move/from16 v17, v14

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    const/16 v16, 0x1

    goto :goto_2b

    :cond_83
    aget v2, p1, v15

    if-ne v12, v2, :cond_8e

    if-ge v13, v11, :cond_8e

    add-int/lit8 v2, v17, 0x1

    aput v13, v0, v17

    goto :goto_90

    :cond_8e
    move/from16 v2, v17

    :goto_90
    if-ge v15, v2, :cond_101

    aget v3, v0, v15

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_90

    :cond_9b
    if-ne v0, v9, :cond_ff

    move/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :goto_a3
    aget v12, p1, v15

    if-ge v0, v12, :cond_fd

    if-nez v2, :cond_fd

    add-int/lit8 v12, v0, 0x1

    aget v0, p1, v0

    if-ge v0, v11, :cond_bd

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v13, 0x384

    mul-long v6, v6, v13

    int-to-long v13, v0

    add-long/2addr v6, v13

    move v0, v12

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    goto :goto_da

    :cond_bd
    if-eq v0, v11, :cond_d2

    if-eq v0, v10, :cond_d2

    if-eq v0, v5, :cond_d2

    if-eq v0, v9, :cond_d2

    if-eq v0, v4, :cond_d2

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    if-eq v0, v13, :cond_d6

    if-ne v0, v14, :cond_d0

    goto :goto_d6

    :cond_d0
    move v0, v12

    goto :goto_da

    :cond_d2
    const/16 v13, 0x39b

    const/16 v14, 0x39a

    :cond_d6
    :goto_d6
    add-int/lit8 v12, v12, -0x1

    move v0, v12

    const/4 v2, 0x1

    :goto_da
    rem-int/lit8 v12, v3, 0x5

    if-nez v12, :cond_f8

    if-lez v3, :cond_f8

    const/4 v3, 0x0

    :goto_e1
    if-ge v3, v8, :cond_f5

    rsub-int/lit8 v12, v3, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v4, v6, v12

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    goto :goto_e1

    :cond_f5
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :cond_f8
    const/16 v4, 0x3a0

    const/16 v5, 0x386

    goto :goto_a3

    :cond_fd
    move v12, v0

    goto :goto_101

    :cond_ff
    move/from16 v12, p3

    :cond_101
    :goto_101
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v12
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    aget v2, p0, v2

    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v4, 0x2

    :goto_12
    const/4 v5, 0x0

    aget v5, p0, v5

    if-ge v4, v5, :cond_69

    const/16 v5, 0x391

    if-eq v2, v5, :cond_54

    packed-switch v2, :pswitch_data_84

    packed-switch v2, :pswitch_data_8e

    add-int/lit8 v4, v4, -0x1

    goto :goto_4f

    :pswitch_24
    invoke-static {p0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_5c

    :pswitch_29
    add-int/lit8 v2, v4, 0x1

    aget v1, p0, v4

    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_5c

    :pswitch_3a
    add-int/lit8 v2, v4, 0x2

    goto :goto_5c

    :pswitch_3d
    add-int/lit8 v2, v4, 0x1

    goto :goto_5c

    :pswitch_40
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_45
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5c

    :pswitch_4a
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5c

    :goto_4f
    :pswitch_4f
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_5c

    :cond_54
    add-int/lit8 v2, v4, 0x1

    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5c
    array-length v4, p0

    if-ge v2, v4, :cond_64

    add-int/lit8 v4, v2, 0x1

    aget v2, p0, v2

    goto :goto_12

    :cond_64
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_7d

    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    :cond_7d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_83

    :goto_82
    throw p0

    :goto_83
    goto :goto_82

    :pswitch_data_84
    .packed-switch 0x384
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x39a
        :pswitch_40
        :pswitch_40
        :pswitch_4a
        :pswitch_3d
        :pswitch_3a
        :pswitch_29
        :pswitch_24
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_37

    :goto_36
    throw p0

    :goto_37
    goto :goto_36
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 11

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_78

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_16

    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    aget v0, p0, p1

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_6e

    add-int/lit8 p1, p1, 0x1

    aget v0, p0, v1

    sub-int/2addr v0, p1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_43
    aget v6, p0, v1

    if-ge p1, v6, :cond_66

    if-nez v2, :cond_66

    add-int/lit8 v6, p1, 0x1

    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_58

    add-int/lit8 v7, v5, 0x1

    aput p1, v0, v5

    move p1, v6

    move v5, v7

    goto :goto_43

    :cond_58
    if-ne p1, v3, :cond_61

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, v6, 0x1

    const/4 v2, 0x1

    goto :goto_43

    :cond_61
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_66
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_77

    :cond_6e
    aget p0, p0, p1

    if-ne p0, v3, :cond_77

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, p1, 0x1

    :cond_77
    :goto_77
    return p1

    :cond_78
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    goto :goto_7e

    :goto_7d
    throw p0

    :goto_7e
    goto :goto_7d
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 20

    move-object/from16 v0, p3

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move/from16 v4, p2

    move-object v3, v1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_d8

    aget v6, p0, v5

    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    const/16 v10, 0x20

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1d

    const/16 v14, 0x1a

    packed-switch v7, :pswitch_data_da

    goto/16 :goto_ce

    :pswitch_28
    if-ge v6, v13, :cond_2f

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v10, v1, v6

    goto :goto_43

    :cond_2f
    if-ne v6, v13, :cond_32

    goto :goto_59

    :cond_32
    if-ne v6, v11, :cond_3b

    aget v1, p1, v5

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_3b
    if-ne v6, v12, :cond_4c

    goto :goto_59

    :pswitch_3e
    if-ge v6, v14, :cond_46

    add-int/lit8 v6, v6, 0x41

    int-to-char v10, v6

    :goto_43
    move-object v1, v3

    goto/16 :goto_cf

    :cond_46
    if-ne v6, v14, :cond_49

    goto :goto_43

    :cond_49
    if-ne v6, v12, :cond_4c

    goto :goto_59

    :cond_4c
    :goto_4c
    move-object v1, v3

    goto/16 :goto_ce

    :pswitch_4f
    if-ge v6, v13, :cond_57

    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v10, v7, v6

    goto/16 :goto_cf

    :cond_57
    if-ne v6, v13, :cond_5d

    :goto_59
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ce

    :cond_5d
    if-ne v6, v11, :cond_67

    aget v6, p1, v5

    :goto_61
    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ce

    :cond_67
    if-ne v6, v12, :cond_ce

    goto :goto_59

    :pswitch_6a
    const/16 v7, 0x19

    if-ge v6, v7, :cond_74

    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v10, v7, v6

    goto/16 :goto_cf

    :cond_74
    if-ne v6, v7, :cond_7a

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ce

    :cond_7a
    if-ne v6, v14, :cond_7e

    goto/16 :goto_cf

    :cond_7e
    if-ne v6, v9, :cond_81

    goto :goto_b9

    :cond_81
    if-ne v6, v8, :cond_84

    goto :goto_59

    :cond_84
    if-ne v6, v13, :cond_87

    goto :goto_c3

    :cond_87
    if-ne v6, v11, :cond_8c

    aget v6, p1, v5

    goto :goto_61

    :cond_8c
    if-ne v6, v12, :cond_ce

    goto :goto_59

    :pswitch_8f
    if-ge v6, v14, :cond_94

    add-int/lit8 v6, v6, 0x61

    goto :goto_b2

    :cond_94
    if-ne v6, v14, :cond_97

    goto :goto_cf

    :cond_97
    if-ne v6, v9, :cond_a0

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_9b
    const/4 v10, 0x0

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto :goto_cf

    :cond_a0
    if-ne v6, v8, :cond_a3

    goto :goto_be

    :cond_a3
    if-ne v6, v13, :cond_a6

    goto :goto_c3

    :cond_a6
    if-ne v6, v11, :cond_ab

    aget v6, p1, v5

    goto :goto_61

    :cond_ab
    if-ne v6, v12, :cond_ce

    goto :goto_59

    :pswitch_ae
    if-ge v6, v14, :cond_b4

    add-int/lit8 v6, v6, 0x41

    :goto_b2
    int-to-char v10, v6

    goto :goto_cf

    :cond_b4
    if-ne v6, v14, :cond_b7

    goto :goto_cf

    :cond_b7
    if-ne v6, v9, :cond_bc

    :goto_b9
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ce

    :cond_bc
    if-ne v6, v8, :cond_c1

    :goto_be
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ce

    :cond_c1
    if-ne v6, v13, :cond_c6

    :goto_c3
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_9b

    :cond_c6
    if-ne v6, v11, :cond_cb

    aget v6, p1, v5

    goto :goto_61

    :cond_cb
    if-ne v6, v12, :cond_ce

    goto :goto_59

    :cond_ce
    :goto_ce
    const/4 v10, 0x0

    :goto_cf
    if-eqz v10, :cond_d4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_d8
    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_8f
        :pswitch_6a
        :pswitch_4f
        :pswitch_3e
        :pswitch_28
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4f

    if-nez v2, :cond_4f

    add-int/lit8 v4, p1, 0x1

    aget p1, p0, p1

    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    const/4 v2, 0x1

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_20
    if-eq p1, v5, :cond_36

    const/16 v5, 0x385

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_36

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_39

    :cond_36
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    :cond_39
    :goto_39
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_43

    const/16 v5, 0x386

    if-eq p1, v5, :cond_43

    if-eqz v2, :cond_4d

    :cond_43
    if-lez v3, :cond_4d

    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_4d
    move p1, v4

    goto :goto_7

    :cond_4f
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 12

    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    aget v3, p0, v0

    sub-int/2addr v3, p1

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    aget v6, p0, v0

    if-ge p1, v6, :cond_50

    if-nez v4, :cond_50

    add-int/lit8 v6, p1, 0x1

    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2c

    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    :goto_2a
    move p1, v6

    goto :goto_10

    :cond_2c
    const/16 v8, 0x391

    if-eq p1, v8, :cond_45

    const/16 v8, 0x3a0

    if-eq p1, v8, :cond_41

    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_5e

    goto :goto_2a

    :pswitch_3b
    add-int/lit8 p1, v5, 0x1

    aput v7, v1, v5

    move v5, p1

    goto :goto_2a

    :cond_41
    :pswitch_41
    add-int/lit8 p1, v6, -0x1

    const/4 v4, 0x1

    goto :goto_10

    :cond_45
    aput v8, v1, v5

    add-int/lit8 p1, v6, 0x1

    aget v6, p0, v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_50
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_54
    .packed-switch 0x384
        :pswitch_3b
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x39a
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method
