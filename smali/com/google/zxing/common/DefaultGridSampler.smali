.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .registers 22
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "p1ToX"    # F
    .param p5, "p1ToY"    # F
    .param p6, "p2ToX"    # F
    .param p7, "p2ToY"    # F
    .param p8, "p3ToX"    # F
    .param p9, "p3ToY"    # F
    .param p10, "p4ToX"    # F
    .param p11, "p4ToY"    # F
    .param p12, "p1FromX"    # F
    .param p13, "p1FromY"    # F
    .param p14, "p2FromX"    # F
    .param p15, "p2FromY"    # F
    .param p16, "p3FromX"    # F
    .param p17, "p3FromY"    # F
    .param p18, "p4FromX"    # F
    .param p19, "p4FromY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 43
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 51
    if-lez p2, :cond_4f

    if-lez p3, :cond_4f

    .line 54
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 55
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [F

    .line 56
    .local v1, "points":[F
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_e
    if-ge v2, p3, :cond_4e

    .line 57
    array-length v3, v1

    .line 58
    .local v3, "max":I
    int-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    .line 59
    .local v4, "iValue":F
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_16
    if-ge v6, v3, :cond_25

    .line 60
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    aput v7, v1, v6

    .line 61
    add-int/lit8 v7, v6, 0x1

    aput v4, v1, v7

    .line 59
    add-int/lit8 v6, v6, 0x2

    goto :goto_16

    .line 63
    .end local v6    # "x":I
    :cond_25
    invoke-virtual {p4, v1}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    invoke-static {p1, v1}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    .line 68
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_2c
    if-ge v5, v3, :cond_4a

    .line 69
    :try_start_2e
    aget v6, v1, v5

    float-to-int v6, v6

    add-int/lit8 v7, v5, 0x1

    aget v7, v1, v7

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 71
    div-int/lit8 v6, v5, 0x2

    invoke-virtual {v0, v6, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_41
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2e .. :try_end_41} :catch_44

    .line 68
    :cond_41
    add-int/lit8 v5, v5, 0x2

    goto :goto_2c

    .line 74
    .end local v5    # "x":I
    :catch_44
    move-exception v5

    .line 82
    .local v5, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 83
    .end local v5    # "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4a
    nop

    .line 56
    .end local v3    # "max":I
    .end local v4    # "iValue":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 85
    .end local v2    # "y":I
    :cond_4e
    return-object v0

    .line 52
    .end local v0    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v1    # "points":[F
    :cond_4f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    goto :goto_55

    :goto_54
    throw v0

    :goto_55
    goto :goto_54
.end method
