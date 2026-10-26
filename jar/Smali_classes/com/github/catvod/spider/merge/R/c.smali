.class public final Lcom/github/catvod/spider/merge/R/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge/R/d;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(II)I
    .registers 2

    mul-int/lit8 p1, p1, 0x4

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10

    :try_start_0
    new-instance v5, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v5, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "UTF-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v3

    invoke-static {v1}, Lcom/github/catvod/spider/merge/n/b;->b(I)I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v7, :cond_57

    mul-int v3, v2, v6

    const/4 v4, 0x0

    :goto_41
    if-ge v4, v6, :cond_54

    add-int v5, v3, v4

    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_4e

    const/high16 v8, -0x1000000

    goto :goto_4f

    :cond_4e
    const/4 v8, -0x1

    :goto_4f
    aput v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_57
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    return-object p0

    :catch_66
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Z)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/github/catvod/spider/merge/R/d;

    const-string v0, "Must be false"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Z)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/github/catvod/spider/merge/R/d;

    const-string v0, "Must be true"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/github/catvod/spider/merge/R/d;

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Lcom/github/catvod/spider/merge/R/d;

    const-string v0, "String must not be empty"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Lcom/github/catvod/spider/merge/R/d;

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/Object;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/github/catvod/spider/merge/R/d;

    const-string v0, "Object must not be null"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge/R/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;
    .registers 1

    invoke-static {p0}, Lcom/github/catvod/spider/merge/U/F;->d(Ljava/lang/String;)Lcom/github/catvod/spider/merge/T/h;

    move-result-object p0

    return-object p0
.end method

.method public static k(II)I
    .registers 3

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p1, p1, v0

    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 p1, p1, 0x11

    or-int/2addr p1, v0

    const v0, 0x1b873593

    mul-int p1, p1, v0

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0xd

    ushr-int/lit8 p0, p0, 0x13

    or-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method

.method public static l(ILjava/lang/Object;)I
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/R/c;->k(II)I

    move-result p0

    return p0
.end method
