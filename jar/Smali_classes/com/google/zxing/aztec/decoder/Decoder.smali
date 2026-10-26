.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CTRL_PS"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, " "

    aput-object v5, v1, v4

    const-string v6, "A"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v6, "B"

    const/4 v8, 0x3

    aput-object v6, v1, v8

    const-string v6, "C"

    const/4 v9, 0x4

    aput-object v6, v1, v9

    const-string v6, "D"

    const/4 v10, 0x5

    aput-object v6, v1, v10

    const-string v6, "E"

    const/4 v11, 0x6

    aput-object v6, v1, v11

    const-string v6, "F"

    const/4 v12, 0x7

    aput-object v6, v1, v12

    const-string v6, "G"

    const/16 v13, 0x8

    aput-object v6, v1, v13

    const-string v6, "H"

    const/16 v14, 0x9

    aput-object v6, v1, v14

    const-string v6, "I"

    const/16 v15, 0xa

    aput-object v6, v1, v15

    const-string v6, "J"

    const/16 v16, 0xb

    aput-object v6, v1, v16

    const-string v6, "K"

    const/16 v17, 0xc

    aput-object v6, v1, v17

    const-string v6, "L"

    const/16 v18, 0xd

    aput-object v6, v1, v18

    const-string v6, "M"

    const/16 v19, 0xe

    aput-object v6, v1, v19

    const-string v6, "N"

    const/16 v20, 0xf

    aput-object v6, v1, v20

    const-string v6, "O"

    const/16 v15, 0x10

    aput-object v6, v1, v15

    const-string v6, "P"

    const/16 v22, 0x11

    aput-object v6, v1, v22

    const-string v6, "Q"

    const/16 v23, 0x12

    aput-object v6, v1, v23

    const/16 v6, 0x13

    const-string v24, "R"

    aput-object v24, v1, v6

    const/16 v6, 0x14

    const-string v24, "S"

    aput-object v24, v1, v6

    const/16 v6, 0x15

    const-string v24, "T"

    aput-object v24, v1, v6

    const/16 v6, 0x16

    const-string v24, "U"

    aput-object v24, v1, v6

    const/16 v6, 0x17

    const-string v24, "V"

    aput-object v24, v1, v6

    const/16 v6, 0x18

    const-string v24, "W"

    aput-object v24, v1, v6

    const/16 v6, 0x19

    const-string v24, "X"

    aput-object v24, v1, v6

    const/16 v6, 0x1a

    const-string v24, "Y"

    aput-object v24, v1, v6

    const/16 v6, 0x1b

    const-string v24, "Z"

    aput-object v24, v1, v6

    const/16 v6, 0x1c

    const-string v24, "CTRL_LL"

    aput-object v24, v1, v6

    const/16 v6, 0x1d

    const-string v24, "CTRL_ML"

    aput-object v24, v1, v6

    const/16 v6, 0x1e

    const-string v24, "CTRL_DL"

    aput-object v24, v1, v6

    const/16 v6, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v1, v6

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "a"

    aput-object v6, v1, v7

    const-string v6, "b"

    aput-object v6, v1, v8

    const-string v6, "c"

    aput-object v6, v1, v9

    const-string v6, "d"

    aput-object v6, v1, v10

    const-string v6, "e"

    aput-object v6, v1, v11

    const-string v6, "f"

    aput-object v6, v1, v12

    const-string v6, "g"

    aput-object v6, v1, v13

    const-string v6, "h"

    aput-object v6, v1, v14

    const-string v6, "i"

    const/16 v21, 0xa

    aput-object v6, v1, v21

    const-string v6, "j"

    aput-object v6, v1, v16

    const-string v6, "k"

    aput-object v6, v1, v17

    const-string v6, "l"

    aput-object v6, v1, v18

    const-string v6, "m"

    aput-object v6, v1, v19

    const-string v6, "n"

    aput-object v6, v1, v20

    const-string v6, "o"

    aput-object v6, v1, v15

    const-string v6, "p"

    aput-object v6, v1, v22

    const-string v6, "q"

    aput-object v6, v1, v23

    const/16 v6, 0x13

    const-string v24, "r"

    aput-object v24, v1, v6

    const/16 v6, 0x14

    const-string v24, "s"

    aput-object v24, v1, v6

    const/16 v6, 0x15

    const-string v24, "t"

    aput-object v24, v1, v6

    const/16 v6, 0x16

    const-string v24, "u"

    aput-object v24, v1, v6

    const/16 v6, 0x17

    const-string v24, "v"

    aput-object v24, v1, v6

    const/16 v6, 0x18

    const-string v24, "w"

    aput-object v24, v1, v6

    const/16 v6, 0x19

    const-string v24, "x"

    aput-object v24, v1, v6

    const/16 v6, 0x1a

    const-string v24, "y"

    aput-object v24, v1, v6

    const/16 v6, 0x1b

    const-string v24, "z"

    aput-object v24, v1, v6

    const/16 v6, 0x1c

    const-string v24, "CTRL_US"

    aput-object v24, v1, v6

    const/16 v6, 0x1d

    const-string v24, "CTRL_ML"

    aput-object v24, v1, v6

    const/16 v6, 0x1e

    const-string v24, "CTRL_DL"

    aput-object v24, v1, v6

    const/16 v6, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v1, v6

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "\u0001"

    aput-object v6, v1, v7

    const-string v6, "\u0002"

    aput-object v6, v1, v8

    const-string v6, "\u0003"

    aput-object v6, v1, v9

    const-string v6, "\u0004"

    aput-object v6, v1, v10

    const-string v6, "\u0005"

    aput-object v6, v1, v11

    const-string v6, "\u0006"

    aput-object v6, v1, v12

    const-string v6, "\u0007"

    aput-object v6, v1, v13

    const-string v6, "\u0008"

    aput-object v6, v1, v14

    const-string v6, "\t"

    const/16 v21, 0xa

    aput-object v6, v1, v21

    const-string v6, "\n"

    aput-object v6, v1, v16

    const-string v6, "\u000b"

    aput-object v6, v1, v17

    const-string v6, "\u000c"

    aput-object v6, v1, v18

    const-string v6, "\r"

    aput-object v6, v1, v19

    const-string v6, "\u001b"

    aput-object v6, v1, v20

    const-string v6, "\u001c"

    aput-object v6, v1, v15

    const-string v6, "\u001d"

    aput-object v6, v1, v22

    const-string v6, "\u001e"

    aput-object v6, v1, v23

    const/16 v6, 0x13

    const-string v24, "\u001f"

    aput-object v24, v1, v6

    const/16 v6, 0x14

    const-string v24, "@"

    aput-object v24, v1, v6

    const/16 v6, 0x15

    const-string v24, "\\"

    aput-object v24, v1, v6

    const/16 v6, 0x16

    const-string v24, "^"

    aput-object v24, v1, v6

    const/16 v6, 0x17

    const-string v24, "_"

    aput-object v24, v1, v6

    const/16 v6, 0x18

    const-string v24, "`"

    aput-object v24, v1, v6

    const/16 v6, 0x19

    const-string v24, "|"

    aput-object v24, v1, v6

    const/16 v6, 0x1a

    const-string v24, "~"

    aput-object v24, v1, v6

    const/16 v6, 0x1b

    const-string v24, "\u007f"

    aput-object v24, v1, v6

    const/16 v6, 0x1c

    const-string v24, "CTRL_LL"

    aput-object v24, v1, v6

    const/16 v6, 0x1d

    const-string v24, "CTRL_UL"

    aput-object v24, v1, v6

    const/16 v6, 0x1e

    const-string v24, "CTRL_PL"

    aput-object v24, v1, v6

    const/16 v6, 0x1f

    const-string v24, "CTRL_BS"

    aput-object v24, v1, v6

    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "\r"

    aput-object v1, v0, v4

    const-string v1, "\r\n"

    aput-object v1, v0, v7

    const-string v1, ". "

    aput-object v1, v0, v8

    const-string v1, ", "

    aput-object v1, v0, v9

    const-string v1, ": "

    aput-object v1, v0, v10

    const-string v1, "!"

    aput-object v1, v0, v11

    const-string v1, "\""

    aput-object v1, v0, v12

    const-string v1, "#"

    aput-object v1, v0, v13

    const-string v1, "$"

    aput-object v1, v0, v14

    const-string v1, "%"

    const/16 v6, 0xa

    aput-object v1, v0, v6

    const-string v1, "&"

    aput-object v1, v0, v16

    const-string v1, "\'"

    aput-object v1, v0, v17

    const-string v1, "("

    aput-object v1, v0, v18

    const-string v1, ")"

    aput-object v1, v0, v19

    const-string v1, "*"

    aput-object v1, v0, v20

    const-string v1, "+"

    aput-object v1, v0, v15

    const-string v1, ","

    aput-object v1, v0, v22

    const-string v1, "-"

    aput-object v1, v0, v23

    const/16 v1, 0x13

    const-string v6, "."

    aput-object v6, v0, v1

    const/16 v1, 0x14

    const-string v6, "/"

    aput-object v6, v0, v1

    const/16 v1, 0x15

    const-string v6, ":"

    aput-object v6, v0, v1

    const/16 v1, 0x16

    const-string v6, ";"

    aput-object v6, v0, v1

    const/16 v1, 0x17

    const-string v6, "<"

    aput-object v6, v0, v1

    const/16 v1, 0x18

    const-string v6, "="

    aput-object v6, v0, v1

    const/16 v1, 0x19

    const-string v6, ">"

    aput-object v6, v0, v1

    const/16 v1, 0x1a

    const-string v6, "?"

    aput-object v6, v0, v1

    const/16 v1, 0x1b

    const-string v6, "["

    aput-object v6, v0, v1

    const/16 v1, 0x1c

    const-string v6, "]"

    aput-object v6, v0, v1

    const/16 v1, 0x1d

    const-string v6, "{"

    aput-object v6, v0, v1

    const/16 v1, 0x1e

    const-string v6, "}"

    aput-object v6, v0, v1

    const/16 v1, 0x1f

    const-string v6, "CTRL_UL"

    aput-object v6, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    new-array v0, v15, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v5, v0, v4

    const-string v1, "0"

    aput-object v1, v0, v7

    const-string v1, "1"

    aput-object v1, v0, v8

    const-string v1, "2"

    aput-object v1, v0, v9

    const-string v1, "3"

    aput-object v1, v0, v10

    const-string v1, "4"

    aput-object v1, v0, v11

    const-string v1, "5"

    aput-object v1, v0, v12

    const-string v1, "6"

    aput-object v1, v0, v13

    const-string v1, "7"

    aput-object v1, v0, v14

    const-string v1, "8"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "9"

    aput-object v1, v0, v16

    const-string v1, ","

    aput-object v1, v0, v17

    const-string v1, "."

    aput-object v1, v0, v18

    const-string v1, "CTRL_UL"

    aput-object v1, v0, v19

    const-string v1, "CTRL_US"

    aput-object v1, v0, v20

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertBoolArrayToByteArray([Z)[B
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_15

    shl-int/lit8 v3, v2, 0x3

    invoke-static {p0, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readByte([ZI)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method

.method private correctBits([Z)[Z
    .registers 14

    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-gt v0, v2, :cond_f

    const/4 v1, 0x6

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_2d

    :cond_f
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    if-gt v0, v1, :cond_1a

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_2d

    :cond_1a
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_29

    const/16 v1, 0xa

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_2d

    :cond_29
    const/16 v1, 0xc

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_2d
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v2

    array-length v3, p1

    div-int/2addr v3, v1

    if-lt v3, v2, :cond_af

    array-length v4, p1

    rem-int/2addr v4, v1

    new-array v5, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3d
    if-ge v7, v3, :cond_49

    invoke-static {p1, v4, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v1

    goto :goto_3d

    :cond_49
    :try_start_49
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    sub-int/2addr v3, v2

    invoke-virtual {p1, v5, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_52
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_49 .. :try_end_52} :catch_a9

    const/4 p1, 0x1

    shl-int v0, p1, v1

    sub-int/2addr v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_58
    if-ge v3, v2, :cond_70

    aget v7, v5, v3

    if-eqz v7, :cond_6b

    if-eq v7, v0, :cond_6b

    if-eq v7, p1, :cond_66

    add-int/lit8 v8, v0, -0x1

    if-ne v7, v8, :cond_68

    :cond_66
    add-int/lit8 v4, v4, 0x1

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_6b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_70
    mul-int v3, v2, v1

    sub-int/2addr v3, v4

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_77
    if-ge v4, v2, :cond_a8

    aget v8, v5, v4

    if-eq v8, p1, :cond_96

    add-int/lit8 v9, v0, -0x1

    if-ne v8, v9, :cond_82

    goto :goto_96

    :cond_82
    add-int/lit8 v9, v1, -0x1

    :goto_84
    if-ltz v9, :cond_a5

    add-int/lit8 v10, v7, 0x1

    shl-int v11, p1, v9

    and-int/2addr v11, v8

    if-eqz v11, :cond_8f

    const/4 v11, 0x1

    goto :goto_90

    :cond_8f
    const/4 v11, 0x0

    :goto_90
    aput-boolean v11, v3, v7

    add-int/lit8 v9, v9, -0x1

    move v7, v10

    goto :goto_84

    :cond_96
    :goto_96
    add-int v9, v7, v1

    sub-int/2addr v9, p1

    if-le v8, p1, :cond_9d

    const/4 v8, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v8, 0x0

    :goto_9e
    invoke-static {v3, v7, v9, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v8, v1, -0x1

    add-int/2addr v8, v7

    move v7, v8

    :cond_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    :cond_a8
    return-object v3

    :catch_a9
    move-exception p1

    invoke-static {p1}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_af
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    goto :goto_b5

    :goto_b4
    throw p1

    :goto_b5
    goto :goto_b4
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    if-eqz v2, :cond_15

    const/16 v4, 0xb

    goto :goto_17

    :cond_15
    const/16 v4, 0xe

    :goto_17
    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    new-array v5, v4, [I

    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v6

    new-array v6, v6, [Z

    const/4 v8, 0x2

    if-eqz v2, :cond_2d

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v4, :cond_53

    aput v9, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_2d
    add-int/lit8 v9, v4, 0x1

    div-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v10, -0x1

    div-int/lit8 v11, v11, 0xf

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v9

    div-int/2addr v11, v8

    const/4 v9, 0x0

    :goto_3a
    if-ge v9, v10, :cond_53

    div-int/lit8 v12, v9, 0xf

    add-int/2addr v12, v9

    sub-int v13, v10, v9

    add-int/lit8 v13, v13, -0x1

    sub-int v14, v11, v12

    add-int/lit8 v14, v14, -0x1

    aput v14, v5, v13

    add-int v13, v10, v9

    add-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v5, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_53
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_55
    if-ge v9, v3, :cond_d8

    sub-int v11, v3, v9

    shl-int/2addr v11, v8

    if-eqz v2, :cond_5f

    const/16 v12, 0x9

    goto :goto_61

    :cond_5f
    const/16 v12, 0xc

    :goto_61
    add-int/2addr v11, v12

    shl-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v4, -0x1

    sub-int/2addr v13, v12

    const/4 v14, 0x0

    :goto_68
    if-ge v14, v11, :cond_ca

    shl-int/lit8 v15, v14, 0x1

    const/4 v7, 0x0

    :goto_6d
    if-ge v7, v8, :cond_c0

    add-int v16, v10, v15

    add-int v16, v16, v7

    add-int v17, v12, v7

    aget v8, v5, v17

    add-int v18, v12, v14

    aget v0, v5, v18

    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v16

    mul-int/lit8 v0, v11, 0x2

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    add-int/2addr v0, v7

    aget v8, v5, v18

    sub-int v16, v13, v7

    move/from16 v18, v2

    aget v2, v5, v16

    invoke-virtual {v1, v8, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    mul-int/lit8 v0, v11, 0x4

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    add-int/2addr v0, v7

    aget v2, v5, v16

    sub-int v8, v13, v14

    move/from16 v16, v3

    aget v3, v5, v8

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    mul-int/lit8 v0, v11, 0x6

    add-int/2addr v0, v10

    add-int/2addr v0, v15

    add-int/2addr v0, v7

    aget v2, v5, v8

    aget v3, v5, v17

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    aput-boolean v2, v6, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v16

    move/from16 v2, v18

    const/4 v8, 0x2

    goto :goto_6d

    :cond_c0
    move/from16 v18, v2

    move/from16 v16, v3

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto :goto_68

    :cond_ca
    move/from16 v18, v2

    move/from16 v16, v3

    shl-int/lit8 v0, v11, 0x3

    add-int/2addr v10, v0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto/16 :goto_55

    :cond_d8
    return-object v6
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_33

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_24

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1c

    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bad table"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_29
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_2e
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_33
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .registers 11

    array-length v0, p0

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v0, :cond_7e

    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v1, v6, :cond_48

    sub-int v1, v0, v5

    if-lt v1, v7, :cond_7e

    invoke-static {p0, v5, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    add-int/lit8 v5, v5, 0x5

    if-nez v1, :cond_2e

    sub-int v1, v0, v5

    const/16 v6, 0xb

    if-lt v1, v6, :cond_7e

    invoke-static {p0, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    add-int/lit8 v5, v5, 0xb

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v1, :cond_46

    sub-int v7, v0, v5

    const/16 v8, 0x8

    if-ge v7, v8, :cond_39

    move v5, v0

    goto :goto_46

    :cond_39
    invoke-static {p0, v5, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_46
    :goto_46
    move-object v1, v4

    goto :goto_d

    :cond_48
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v1, v6, :cond_4e

    const/4 v6, 0x4

    goto :goto_4f

    :cond_4e
    const/4 v6, 0x5

    :goto_4f
    sub-int v8, v0, v5

    if-lt v8, v6, :cond_7e

    invoke-static {p0, v5, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    add-int/2addr v5, v6

    invoke-static {v1, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "CTRL_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v4

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_76

    goto :goto_46

    :cond_76
    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_d

    :cond_7a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .registers 2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_23

    const/16 v0, 0x44

    if-eq p0, v0, :cond_20

    const/16 v0, 0x50

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_17

    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    :cond_17
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    :cond_1a
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    :cond_1d
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    :cond_20
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0

    :cond_23
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readByte([ZI)B
    .registers 4

    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    invoke-static {p0, p1, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result p0

    :goto_a
    int-to-byte p0, p0

    return p0

    :cond_c
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result p0

    sub-int/2addr v1, v0

    shl-int/2addr p0, v1

    goto :goto_a
.end method

.method private static readCode([ZII)I
    .registers 6

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    add-int v2, p1, p2

    if-ge v1, v2, :cond_11

    shl-int/lit8 v0, v0, 0x1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_e

    or-int/lit8 v0, v0, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x58

    goto :goto_7

    :cond_5
    const/16 p1, 0x70

    :goto_7
    shl-int/lit8 v0, p0, 0x4

    add-int/2addr p1, v0

    mul-int p1, p1, p0

    return p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 6

    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->convertBoolArrayToByteArray([Z)[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/common/DecoderResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Lcom/google/zxing/common/DecoderResult;->setNumBits(I)V

    return-object v2
.end method
