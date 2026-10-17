.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 46
    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 8
    .param p1, "pattern"    # Lcom/google/zxing/ResultPoint;
    .param p2, "otherPattern"    # Lcom/google/zxing/ResultPoint;

    .line 242
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 243
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 244
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 242
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 246
    .local v0, "moduleSizeEst1":F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 247
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 248
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 249
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 246
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v1

    .line 250
    .local v1, "moduleSizeEst2":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    if-eqz v2, :cond_3b

    .line 251
    div-float v2, v1, v3

    return v2

    .line 253
    :cond_3b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 254
    div-float v2, v0, v3

    return v2

    .line 258
    :cond_44
    add-float v2, v0, v1

    const/high16 v3, 0x41600000    # 14.0f

    div-float/2addr v2, v3

    return v2
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .registers 8
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "moduleSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    div-float/2addr v0, p3

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 203
    .local v0, "tltrCentersDimension":I
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    div-float/2addr v1, p3

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 204
    .local v1, "tlblCentersDimension":I
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    .line 205
    .local v2, "dimension":I
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_2a

    :pswitch_1d
    goto :goto_29

    .line 214
    :pswitch_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 211
    :pswitch_23
    add-int/lit8 v2, v2, -0x1

    .line 212
    goto :goto_29

    .line 207
    :pswitch_26
    add-int/lit8 v2, v2, 0x1

    .line 208
    nop

    .line 216
    :goto_29
    return v2

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1d
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method private static createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .registers 24
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "alignmentPattern"    # Lcom/google/zxing/ResultPoint;
    .param p4, "dimension"    # I

    .line 149
    move/from16 v0, p4

    int-to-float v1, v0

    const/high16 v2, 0x40600000    # 3.5f

    sub-float v5, v1, v2

    .line 154
    .local v5, "dimMinusThree":F
    if-eqz p3, :cond_1c

    .line 155
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 156
    .local v1, "bottomRightX":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    .line 157
    .local v2, "bottomRightY":F
    const/high16 v3, 0x40400000    # 3.0f

    sub-float v3, v5, v3

    .line 158
    .local v3, "sourceBottomRightX":F
    move v4, v3

    move v15, v1

    move/from16 v16, v2

    move v7, v3

    move v8, v4

    .local v4, "sourceBottomRightY":F
    goto :goto_3f

    .line 161
    .end local v1    # "bottomRightX":F
    .end local v2    # "bottomRightY":F
    .end local v3    # "sourceBottomRightX":F
    .end local v4    # "sourceBottomRightY":F
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 162
    .restart local v1    # "bottomRightX":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 163
    .restart local v2    # "bottomRightY":F
    move v3, v5

    .line 164
    .restart local v3    # "sourceBottomRightX":F
    move v4, v5

    move v15, v1

    move/from16 v16, v2

    move v7, v3

    move v8, v4

    .line 167
    .end local v1    # "bottomRightX":F
    .end local v2    # "bottomRightY":F
    .end local v3    # "sourceBottomRightX":F
    .local v7, "sourceBottomRightX":F
    .local v8, "sourceBottomRightY":F
    .local v15, "bottomRightX":F
    .local v16, "bottomRightY":F
    :goto_3f
    nop

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    .line 167
    const/high16 v3, 0x40600000    # 3.5f

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v6, 0x40600000    # 3.5f

    const/high16 v9, 0x40600000    # 3.5f

    move v10, v5

    invoke-static/range {v3 .. v18}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v1

    return-object v1
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .registers 5
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .param p2, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 191
    .local v0, "sampler":Lcom/google/zxing/common/GridSampler;
    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .registers 24
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .line 309
    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 310
    .local v0, "steep":Z
    :goto_12
    if-eqz v0, :cond_1f

    .line 311
    move/from16 v1, p1

    .line 312
    .local v1, "temp":I
    move/from16 v4, p2

    .line 313
    .end local p1    # "fromX":I
    .local v4, "fromX":I
    move v5, v1

    .line 314
    .end local p2    # "fromY":I
    .local v5, "fromY":I
    move/from16 v1, p3

    .line 315
    move/from16 v6, p4

    .line 316
    .end local p3    # "toX":I
    .local v6, "toX":I
    move v7, v1

    .end local p4    # "toY":I
    .local v7, "toY":I
    goto :goto_27

    .line 310
    .end local v1    # "temp":I
    .end local v4    # "fromX":I
    .end local v5    # "fromY":I
    .end local v6    # "toX":I
    .end local v7    # "toY":I
    .restart local p1    # "fromX":I
    .restart local p2    # "fromY":I
    .restart local p3    # "toX":I
    .restart local p4    # "toY":I
    :cond_1f
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 319
    .end local p1    # "fromX":I
    .end local p2    # "fromY":I
    .end local p3    # "toX":I
    .end local p4    # "toY":I
    .restart local v4    # "fromX":I
    .restart local v5    # "fromY":I
    .restart local v6    # "toX":I
    .restart local v7    # "toY":I
    :goto_27
    sub-int v1, v6, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 320
    .local v1, "dx":I
    sub-int v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 321
    .local v8, "dy":I
    neg-int v9, v1

    const/4 v10, 0x2

    div-int/2addr v9, v10

    .line 322
    .local v9, "error":I
    const/4 v11, -0x1

    if-ge v4, v6, :cond_3b

    const/4 v12, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v12, -0x1

    .line 323
    .local v12, "xstep":I
    :goto_3c
    if-ge v5, v7, :cond_3f

    const/4 v11, 0x1

    .line 326
    .local v11, "ystep":I
    :cond_3f
    const/4 v13, 0x0

    .line 328
    .local v13, "state":I
    add-int v14, v6, v12

    .line 329
    .local v14, "xLimit":I
    move v15, v4

    .local v15, "x":I
    move/from16 v16, v5

    move/from16 v2, v16

    .local v2, "y":I
    :goto_47
    if-eq v15, v14, :cond_90

    .line 330
    if-eqz v0, :cond_4e

    move/from16 v17, v2

    goto :goto_50

    :cond_4e
    move/from16 v17, v15

    :goto_50
    move/from16 p1, v17

    .line 331
    .local p1, "realX":I
    if-eqz v0, :cond_57

    move/from16 v17, v15

    goto :goto_59

    :cond_57
    move/from16 v17, v2

    :goto_59
    move/from16 p2, v17

    .line 336
    .local p2, "realY":I
    if-ne v13, v3, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x0

    :goto_5f
    move-object/from16 v10, p0

    move/from16 v18, v0

    .end local v0    # "steep":Z
    .local v18, "steep":Z
    iget-object v0, v10, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move/from16 p4, v1

    move/from16 v1, p1

    move/from16 p1, v6

    move/from16 v6, p2

    .end local p2    # "realY":I
    .local v1, "realX":I
    .local v6, "realY":I
    .local p1, "toX":I
    .local p4, "dx":I
    invoke-virtual {v0, v1, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-ne v3, v0, :cond_7d

    .line 337
    const/4 v0, 0x2

    if-ne v13, v0, :cond_7b

    .line 338
    invoke-static {v15, v2, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    .line 340
    :cond_7b
    add-int/lit8 v13, v13, 0x1

    .line 343
    :cond_7d
    add-int/2addr v9, v8

    .line 344
    if-lez v9, :cond_86

    .line 345
    if-ne v2, v7, :cond_83

    .line 346
    goto :goto_98

    .line 348
    :cond_83
    add-int/2addr v2, v11

    .line 349
    sub-int v9, v9, p4

    .line 329
    .end local v1    # "realX":I
    .end local v6    # "realY":I
    :cond_86
    add-int/2addr v15, v12

    move/from16 v6, p1

    move/from16 v1, p4

    move/from16 v0, v18

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_47

    .end local v18    # "steep":Z
    .end local p1    # "toX":I
    .end local p4    # "dx":I
    .restart local v0    # "steep":Z
    .local v1, "dx":I
    .local v6, "toX":I
    :cond_90
    move-object/from16 v10, p0

    move/from16 v18, v0

    move/from16 p4, v1

    move/from16 p1, v6

    .line 355
    .end local v0    # "steep":Z
    .end local v1    # "dx":I
    .end local v2    # "y":I
    .end local v6    # "toX":I
    .end local v15    # "x":I
    .restart local v18    # "steep":Z
    .restart local p1    # "toX":I
    .restart local p4    # "dx":I
    :goto_98
    const/4 v0, 0x2

    if-ne v13, v0, :cond_a2

    .line 356
    add-int v6, p1, v12

    invoke-static {v6, v7, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    .line 359
    :cond_a2
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .registers 11
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v0

    .line 271
    .local v0, "result":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 272
    .local v1, "scale":F
    sub-int v2, p3, p1

    sub-int v2, p1, v2

    .line 273
    .local v2, "otherToX":I
    if-gez v2, :cond_14

    .line 274
    int-to-float v3, p1

    sub-int v4, p1, v2

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 275
    const/4 v2, 0x0

    goto :goto_33

    .line 276
    :cond_14
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_33

    .line 277
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int v4, v2, p1

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 278
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 280
    :cond_33
    :goto_33
    int-to-float v3, p2

    sub-int v4, p4, p2

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 282
    .local v3, "otherToY":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 283
    if-gez v3, :cond_47

    .line 284
    int-to-float v4, p2

    sub-int v5, p2, v3

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 285
    const/4 v3, 0x0

    goto :goto_66

    .line 286
    :cond_47
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_66

    .line 287
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, v3, p2

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 288
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 290
    :cond_66
    :goto_66
    int-to-float v4, p1

    sub-int v5, v2, p1

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 292
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v4

    add-float/2addr v0, v4

    .line 295
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v0, v4

    return v4
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .registers 6
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomLeft"    # Lcom/google/zxing/ResultPoint;

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    .line 233
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 232
    return v0
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 78
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    :goto_c
    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 80
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 81
    .local v0, "finder":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v1

    .line 83
    .local v1, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    return-object v2
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 16
    .param p1, "overallEstModuleSize"    # F
    .param p2, "estAlignmentX"    # I
    .param p3, "estAlignmentY"    # I
    .param p4, "allowanceFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 380
    mul-float v0, p4, p1

    float-to-int v0, v0

    .line 381
    .local v0, "allowance":I
    sub-int v1, p2, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 382
    .local v5, "alignmentAreaLeftX":I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v3, p2, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 383
    .local v1, "alignmentAreaRightX":I
    sub-int v3, v1, v5

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v6, p1, v4

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_59

    .line 387
    sub-int v3, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 388
    .local v6, "alignmentAreaTopY":I
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v3, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 389
    .local v2, "alignmentAreaBottomY":I
    sub-int v3, v2, v6

    int-to-float v3, v3

    mul-float v4, v4, p1

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_53

    .line 393
    new-instance v3, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v7, v1, v5

    sub-int v8, v2, v6

    iget-object v10, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move v9, p1

    .end local p1    # "overallEstModuleSize":F
    .local v9, "overallEstModuleSize":F
    invoke-direct/range {v3 .. v10}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 402
    .local v3, "alignmentFinder":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object p1

    return-object p1

    .line 390
    .end local v3    # "alignmentFinder":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    .end local v9    # "overallEstModuleSize":F
    .restart local p1    # "overallEstModuleSize":F
    :cond_53
    move v9, p1

    .end local p1    # "overallEstModuleSize":F
    .restart local v9    # "overallEstModuleSize":F
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 384
    .end local v2    # "alignmentAreaBottomY":I
    .end local v6    # "alignmentAreaTopY":I
    .end local v9    # "overallEstModuleSize":F
    .restart local p1    # "overallEstModuleSize":F
    :cond_59
    move v9, p1

    .end local p1    # "overallEstModuleSize":F
    .restart local v9    # "overallEstModuleSize":F
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .registers 18
    .param p1, "info"    # Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 89
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    .line 90
    .local v2, "topLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    .line 91
    .local v3, "topRight":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    .line 93
    .local v4, "bottomLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 94
    .local v5, "moduleSize":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v0

    if-ltz v6, :cond_a9

    .line 97
    invoke-static {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v6

    .line 98
    .local v6, "dimension":I
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    .line 99
    .local v7, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v8

    add-int/lit8 v8, v8, -0x7

    .line 101
    .local v8, "modulesBetweenFPCenters":I
    const/4 v9, 0x0

    .line 103
    .local v9, "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_7d

    .line 106
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v11

    add-float/2addr v10, v11

    .line 107
    .local v10, "bottomRightX":F
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v11

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v12

    add-float/2addr v11, v12

    .line 111
    .local v11, "bottomRightY":F
    const/high16 v12, 0x40400000    # 3.0f

    int-to-float v13, v8

    div-float/2addr v12, v13

    sub-float v12, v0, v12

    .line 112
    .local v12, "correctionToTopLeft":F
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v13

    sub-float v13, v10, v13

    mul-float v13, v13, v12

    add-float/2addr v0, v13

    float-to-int v13, v0

    .line 113
    .local v13, "estAlignmentX":I
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v14

    sub-float v14, v11, v14

    mul-float v14, v14, v12

    add-float/2addr v0, v14

    float-to-int v14, v0

    .line 116
    .local v14, "estAlignmentY":I
    const/4 v0, 0x4

    move v15, v0

    .local v15, "i":I
    :goto_6e
    const/16 v0, 0x10

    if-gt v15, v0, :cond_7d

    .line 118
    int-to-float v0, v15

    :try_start_73
    invoke-virtual {v1, v5, v13, v14, v0}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0
    :try_end_77
    .catch Lcom/google/zxing/NotFoundException; {:try_start_73 .. :try_end_77} :catch_79

    move-object v9, v0

    .line 122
    goto :goto_7d

    .line 123
    :catch_79
    move-exception v0

    .line 116
    shl-int/lit8 v15, v15, 0x1

    goto :goto_6e

    .line 130
    .end local v10    # "bottomRightX":F
    .end local v11    # "bottomRightY":F
    .end local v12    # "correctionToTopLeft":F
    .end local v13    # "estAlignmentX":I
    .end local v14    # "estAlignmentY":I
    .end local v15    # "i":I
    :cond_7d
    :goto_7d
    nop

    .line 131
    invoke-static {v2, v3, v4, v9, v6}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 133
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    iget-object v10, v1, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v10, v0, v6}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    .line 136
    .local v10, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v9, :cond_97

    .line 137
    new-array v11, v11, [Lcom/google/zxing/ResultPoint;

    aput-object v4, v11, v13

    aput-object v2, v11, v14

    aput-object v3, v11, v12

    .local v11, "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_a3

    .line 139
    .end local v11    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_97
    const/4 v15, 0x4

    new-array v15, v15, [Lcom/google/zxing/ResultPoint;

    aput-object v4, v15, v13

    aput-object v2, v15, v14

    aput-object v3, v15, v12

    aput-object v9, v15, v11

    move-object v11, v15

    .line 141
    .restart local v11    # "points":[Lcom/google/zxing/ResultPoint;
    :goto_a3
    new-instance v12, Lcom/google/zxing/common/DetectorResult;

    invoke-direct {v12, v10, v11}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v12

    .line 95
    .end local v0    # "transform":Lcom/google/zxing/common/PerspectiveTransform;
    .end local v6    # "dimension":I
    .end local v7    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v8    # "modulesBetweenFPCenters":I
    .end local v9    # "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v10    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v11    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_a9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    goto :goto_af

    :goto_ae
    throw v0

    :goto_af
    goto :goto_ae
.end method
