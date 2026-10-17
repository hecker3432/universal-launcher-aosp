.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 40
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 13
    .param p1, "fixedDimension"    # I
    .param p2, "maxWhiteRun"    # I
    .param p3, "minDim"    # I
    .param p4, "maxDim"    # I
    .param p5, "horizontal"    # Z

    .line 172
    add-int v0, p3, p4

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 175
    .local v0, "center":I
    move v2, v0

    .line 176
    .local v2, "start":I
    :goto_5
    if-lt v2, p3, :cond_3b

    .line 177
    iget-object v3, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_12

    invoke-virtual {v3, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_18

    :cond_12
    invoke-virtual {v3, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 178
    :goto_18
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 180
    :cond_1b
    move v3, v2

    .line 182
    .local v3, "whiteRunStart":I
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    .line 183
    if-lt v2, p3, :cond_31

    iget-object v4, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_2b

    invoke-virtual {v4, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_31

    .line 184
    :cond_2b
    invoke-virtual {v4, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 185
    :cond_31
    :goto_31
    sub-int v4, v3, v2

    .line 186
    .local v4, "whiteRunSize":I
    if-lt v2, p3, :cond_39

    if-le v4, p2, :cond_38

    goto :goto_39

    .line 190
    .end local v3    # "whiteRunStart":I
    .end local v4    # "whiteRunSize":I
    :cond_38
    goto :goto_5

    .line 187
    .restart local v3    # "whiteRunStart":I
    .restart local v4    # "whiteRunSize":I
    :cond_39
    :goto_39
    move v2, v3

    .line 188
    nop

    .line 192
    .end local v3    # "whiteRunStart":I
    .end local v4    # "whiteRunSize":I
    :cond_3b
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 195
    move v4, v0

    .line 196
    .local v4, "end":I
    :goto_3e
    if-ge v4, p4, :cond_73

    .line 197
    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_4b

    invoke-virtual {v5, v4, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_51

    :cond_4b
    invoke-virtual {v5, p1, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 198
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 200
    :cond_54
    move v5, v4

    .line 202
    .local v5, "whiteRunStart":I
    :cond_55
    add-int/2addr v4, v3

    .line 203
    if-ge v4, p4, :cond_69

    iget-object v6, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_63

    invoke-virtual {v6, v4, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_55

    goto :goto_69

    .line 204
    :cond_63
    invoke-virtual {v6, p1, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 205
    :cond_69
    :goto_69
    sub-int v6, v4, v5

    .line 206
    .local v6, "whiteRunSize":I
    if-ge v4, p4, :cond_71

    if-le v6, p2, :cond_70

    goto :goto_71

    .line 210
    .end local v5    # "whiteRunStart":I
    .end local v6    # "whiteRunSize":I
    :cond_70
    goto :goto_3e

    .line 207
    .restart local v5    # "whiteRunStart":I
    .restart local v6    # "whiteRunSize":I
    :cond_71
    :goto_71
    move v4, v5

    .line 208
    nop

    .line 212
    .end local v5    # "whiteRunStart":I
    .end local v6    # "whiteRunSize":I
    :cond_73
    add-int/lit8 v4, v4, -0x1

    .line 214
    if-le v4, v2, :cond_7f

    new-array v1, v1, [I

    const/4 v5, 0x0

    aput v2, v1, v5

    aput v4, v1, v3

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :goto_80
    return-object v1
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .registers 21
    .param p1, "centerX"    # I
    .param p2, "deltaX"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "centerY"    # I
    .param p6, "deltaY"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I
    .param p9, "maxWhiteRun"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 111
    move/from16 v0, p5

    const/4 v1, 0x0

    .line 112
    .local v1, "lastRange":[I
    move/from16 v2, p5

    .local v2, "y":I
    move v3, p1

    move v8, v3

    move v3, v2

    .line 113
    .end local v2    # "y":I
    .local v3, "y":I
    .local v8, "x":I
    :goto_8
    move/from16 v9, p8

    if-ge v3, v9, :cond_99

    move/from16 v10, p7

    if-lt v3, v10, :cond_99

    if-ge v8, p4, :cond_99

    if-lt v8, p3, :cond_99

    .line 116
    if-nez p2, :cond_22

    .line 118
    const/4 v7, 0x1

    move-object v2, p0

    move v5, p3

    move v6, p4

    move/from16 v4, p9

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v7

    move v5, v8

    .local v7, "range":[I
    goto :goto_2f

    .line 121
    .end local v7    # "range":[I
    :cond_22
    const/4 v9, 0x0

    move-object v4, p0

    move/from16 v6, p9

    move v5, v8

    move v7, v10

    move/from16 v8, p8

    .end local v8    # "x":I
    .local v5, "x":I
    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v2

    move-object v7, v2

    .line 123
    .restart local v7    # "range":[I
    :goto_2f
    if-nez v7, :cond_92

    .line 124
    if-eqz v1, :cond_8d

    .line 128
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_62

    .line 129
    sub-int v6, v3, p6

    .line 130
    .local v6, "lastY":I
    aget v8, v1, v4

    if-ge v8, p1, :cond_58

    .line 131
    aget v8, v1, v2

    if-le v8, p1, :cond_4e

    .line 133
    new-instance v8, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_46

    const/4 v2, 0x0

    :cond_46
    aget v2, v1, v2

    int-to-float v2, v2

    int-to-float v4, v6

    invoke-direct {v8, v2, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v8

    .line 135
    :cond_4e
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v4, v1, v4

    int-to-float v4, v4

    int-to-float v8, v6

    invoke-direct {v2, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v2

    .line 137
    :cond_58
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v2, v1, v2

    int-to-float v2, v2

    int-to-float v8, v6

    invoke-direct {v4, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v4

    .line 140
    .end local v6    # "lastY":I
    :cond_62
    sub-int v8, v5, p2

    .line 141
    .local v8, "lastX":I
    aget v6, v1, v4

    if-ge v6, v0, :cond_83

    .line 142
    aget v6, v1, v2

    if-le v6, v0, :cond_79

    .line 143
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v8

    if-gez p2, :cond_72

    const/4 v2, 0x0

    :cond_72
    aget v2, v1, v2

    int-to-float v2, v2

    invoke-direct {v6, v9, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    .line 145
    :cond_79
    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v6, v8

    aget v4, v1, v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v2

    .line 147
    :cond_83
    new-instance v4, Lcom/google/zxing/ResultPoint;

    int-to-float v6, v8

    aget v2, v1, v2

    int-to-float v2, v2

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v4

    .line 125
    .end local v8    # "lastX":I
    :cond_8d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 151
    :cond_92
    move-object v1, v7

    .line 114
    .end local v7    # "range":[I
    add-int v3, v3, p6

    add-int v8, v5, p2

    .end local v5    # "x":I
    .local v8, "x":I
    goto/16 :goto_8

    .line 113
    :cond_99
    move v5, v8

    .line 153
    .end local v3    # "y":I
    .end local v8    # "x":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    goto :goto_a0

    :goto_9f
    throw v2

    :goto_a0
    goto :goto_9f
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    .line 54
    .local v10, "height":I
    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 55
    .local v11, "width":I
    div-int/lit8 v5, v10, 0x2

    .line 56
    .local v5, "halfHeight":I
    div-int/lit8 v1, v11, 0x2

    .line 57
    .local v1, "halfWidth":I
    div-int/lit16 v2, v10, 0x100

    const/4 v12, 0x1

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 58
    .local v13, "deltaY":I
    div-int/lit16 v2, v11, 0x100

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 60
    .local v14, "deltaX":I
    const/4 v7, 0x0

    .line 61
    .local v7, "top":I
    move v8, v10

    .line 62
    .local v8, "bottom":I
    const/4 v3, 0x0

    .line 63
    .local v3, "left":I
    move v4, v11

    .line 64
    .local v4, "right":I
    neg-int v6, v13

    div-int/lit8 v9, v1, 0x2

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    .line 66
    .local v15, "pointA":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v7, v0, -0x1

    .line 67
    neg-int v2, v14

    div-int/lit8 v9, v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    .line 69
    .local v16, "pointB":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    .line 70
    div-int/lit8 v9, v5, 0x2

    move-object/from16 v0, p0

    move v2, v14

    .end local v14    # "deltaX":I
    .local v2, "deltaX":I
    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v14

    .line 72
    move/from16 v17, v2

    .end local v2    # "deltaX":I
    .local v14, "pointC":Lcom/google/zxing/ResultPoint;
    .local v17, "deltaX":I
    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v4, v0, 0x1

    .line 73
    div-int/lit8 v9, v1, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v6, v13

    .end local v13    # "deltaY":I
    .local v6, "deltaY":I
    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v13

    .line 75
    move v0, v6

    .end local v6    # "deltaY":I
    .local v0, "deltaY":I
    .local v13, "pointD":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v8, v2, 0x1

    .line 78
    neg-int v6, v0

    div-int/lit8 v9, v1, 0x4

    const/4 v2, 0x0

    move/from16 v18, v0

    move-object/from16 v0, p0

    .end local v0    # "deltaY":I
    .local v18, "deltaY":I
    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 81
    .end local v15    # "pointA":Lcom/google/zxing/ResultPoint;
    .local v2, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    aput-object v16, v0, v12

    const/4 v6, 0x2

    aput-object v14, v0, v6

    const/4 v6, 0x3

    aput-object v13, v0, v6

    return-object v0
.end method
