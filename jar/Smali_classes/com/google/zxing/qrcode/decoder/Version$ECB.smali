.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    return v0
.end method

.method public getDataCodewords()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return v0
.end method
