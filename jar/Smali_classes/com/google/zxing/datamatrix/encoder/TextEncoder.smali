.class final Lcom/google/zxing/datamatrix/encoder/TextEncoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_a

    const/4 p1, 0x3

    :goto_6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_a
    const/16 v1, 0x30

    if-lt p1, v1, :cond_17

    const/16 v2, 0x39

    if-gt p1, v2, :cond_17

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    :goto_15
    int-to-char p1, p1

    goto :goto_6

    :cond_17
    const/16 v1, 0x61

    if-lt p1, v1, :cond_23

    const/16 v2, 0x7a

    if-gt p1, v2, :cond_23

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xe

    goto :goto_15

    :cond_23
    const/4 v1, 0x2

    if-ltz p1, :cond_32

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_32

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2e
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_32
    const/16 v2, 0x21

    if-lt p1, v2, :cond_40

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_40

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3d
    sub-int/2addr p1, v2

    :goto_3e
    int-to-char p1, p1

    goto :goto_2e

    :cond_40
    const/16 v2, 0x3a

    if-lt p1, v2, :cond_4f

    const/16 v3, 0x40

    if-gt p1, v3, :cond_4f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xf

    goto :goto_3e

    :cond_4f
    const/16 v2, 0x5b

    if-lt p1, v2, :cond_5e

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_5e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x16

    goto :goto_3e

    :cond_5e
    const/16 v2, 0x60

    if-ne p1, v2, :cond_66

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_66
    const/16 v2, 0x41

    if-lt p1, v2, :cond_74

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_74

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/2addr p1, v0

    goto :goto_3e

    :cond_74
    const/16 v0, 0x7b

    if-lt p1, v0, :cond_83

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_83

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1b

    goto :goto_3e

    :cond_83
    const/16 v0, 0x80

    if-lt p1, v0, :cond_94

    const-string v2, "\u0001\u001e"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_94
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    const/4 p1, -0x1

    return p1
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
