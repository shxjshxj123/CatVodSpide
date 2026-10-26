.class public final Lcom/google/zxing/qrcode/detector/FinderPattern;
.super Lcom/google/zxing/ResultPoint;
.source "SourceFile"


# instance fields
.field private final count:I

.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-void
.end method

.method private constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput p3, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    iput p4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_32

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p2

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_32

    iget p2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_30

    iget p2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v0

    :cond_30
    :goto_30
    const/4 p1, 0x1

    return p1

    :cond_32
    return v0
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 8

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    add-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v2, p2

    int-to-float p2, v1

    div-float/2addr v2, p2

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v0

    add-float/2addr v3, p1

    div-float/2addr v3, p2

    iget p1, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float p1, p1

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    mul-float p1, p1, v0

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    new-instance p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {p2, v2, v3, p1, v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-object p2
.end method

.method getCount()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return v0
.end method

.method public getEstimatedModuleSize()F
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    return v0
.end method
