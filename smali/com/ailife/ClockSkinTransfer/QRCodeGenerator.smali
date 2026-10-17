.class public Lcom/ailife/ClockSkinTransfer/QRCodeGenerator;
.super Ljava/lang/Object;
.source "QRCodeGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 10

    .line 19
    const/4 v1, 0x0

    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 20
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 25
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move v6, p1

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    .line 29
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 30
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_35
    if-ge v4, p1, :cond_4d

    .line 33
    const/4 v5, 0x0

    :goto_38
    if-ge v5, v0, :cond_4a

    .line 34
    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_43

    const/high16 v6, -0x1000000

    goto :goto_44

    :cond_43
    const/4 v6, -0x1

    :goto_44
    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_47
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_47} :catch_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4e

    .line 33
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 32
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 38
    :cond_4d
    return-object v2

    .line 42
    :catch_4e
    move-exception v0

    move-object p0, v0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    return-object v1

    .line 39
    :catch_54
    move-exception v0

    move-object p0, v0

    .line 40
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 41
    return-object v1
.end method
