.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 2
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 54
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .registers 25
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 166
    move/from16 v0, p1

    move/from16 v1, p2

    add-int/lit8 v2, p4, -0x8

    .line 167
    .local v2, "maxYOffset":I
    add-int/lit8 v3, p3, -0x8

    .line 168
    .local v3, "maxXOffset":I
    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v0, v5, v6

    const/4 v7, 0x0

    aput v1, v5, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 169
    .local v5, "blackPoints":[[I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1a
    if-ge v7, v1, :cond_b5

    .line 170
    shl-int/lit8 v8, v7, 0x3

    .line 171
    .local v8, "yoffset":I
    if-le v8, v2, :cond_21

    .line 172
    move v8, v2

    .line 174
    :cond_21
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_22
    if-ge v9, v0, :cond_ab

    .line 175
    shl-int/lit8 v10, v9, 0x3

    .line 176
    .local v10, "xoffset":I
    if-le v10, v3, :cond_29

    .line 177
    move v10, v3

    .line 179
    :cond_29
    const/4 v11, 0x0

    .line 180
    .local v11, "sum":I
    const/16 v12, 0xff

    .line 181
    .local v12, "min":I
    const/4 v13, 0x0

    .line 182
    .local v13, "max":I
    const/4 v14, 0x0

    .local v14, "yy":I
    mul-int v15, v8, p3

    add-int/2addr v15, v10

    .local v15, "offset":I
    :goto_31
    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v6, 0x8

    if-ge v14, v6, :cond_76

    .line 183
    const/16 v18, 0x0

    move/from16 v4, v18

    .local v4, "xx":I
    :goto_3d
    if-ge v4, v6, :cond_51

    .line 184
    add-int v19, v15, v4

    aget-byte v6, p0, v19

    and-int/lit16 v6, v6, 0xff

    .line 185
    .local v6, "pixel":I
    add-int/2addr v11, v6

    .line 187
    if-ge v6, v12, :cond_49

    .line 188
    move v12, v6

    .line 190
    :cond_49
    if-le v6, v13, :cond_4c

    .line 191
    move v13, v6

    .line 183
    .end local v6    # "pixel":I
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x8

    goto :goto_3d

    .line 195
    .end local v4    # "xx":I
    :cond_51
    sub-int v4, v13, v12

    const/16 v6, 0x18

    if-le v4, v6, :cond_6f

    .line 197
    :goto_57
    add-int/lit8 v14, v14, 0x1

    add-int v15, v15, p3

    const/16 v4, 0x8

    if-ge v14, v4, :cond_6f

    .line 198
    const/4 v6, 0x0

    .local v6, "xx":I
    :goto_60
    if-ge v6, v4, :cond_6e

    .line 199
    add-int v18, v15, v6

    aget-byte v4, p0, v18

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v11, v4

    .line 198
    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x8

    goto :goto_60

    .end local v6    # "xx":I
    :cond_6e
    goto :goto_57

    .line 182
    :cond_6f
    add-int/lit8 v14, v14, 0x1

    add-int v15, v15, p3

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto :goto_31

    .line 206
    .end local v14    # "yy":I
    .end local v15    # "offset":I
    :cond_76
    shr-int/lit8 v4, v11, 0x6

    .line 207
    .local v4, "average":I
    sub-int v6, v13, v12

    const/16 v14, 0x18

    if-gt v6, v14, :cond_a1

    .line 214
    div-int/lit8 v4, v12, 0x2

    .line 216
    if-lez v7, :cond_a1

    if-lez v9, :cond_a1

    .line 224
    add-int/lit8 v6, v7, -0x1

    aget-object v6, v5, v6

    aget v6, v6, v9

    aget-object v14, v5, v7

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v6, v14

    add-int/lit8 v14, v7, -0x1

    aget-object v14, v5, v14

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    add-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x4

    .line 226
    .local v6, "averageNeighborBlackPoint":I
    if-ge v12, v6, :cond_a1

    .line 227
    move v4, v6

    .line 231
    .end local v6    # "averageNeighborBlackPoint":I
    :cond_a1
    aget-object v6, v5, v7

    aput v4, v6, v9

    .line 174
    .end local v4    # "average":I
    .end local v10    # "xoffset":I
    .end local v11    # "sum":I
    .end local v12    # "min":I
    .end local v13    # "max":I
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_22

    :cond_ab
    const/16 v16, 0x2

    const/16 v17, 0x1

    .line 169
    .end local v8    # "yoffset":I
    .end local v9    # "x":I
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1a

    .line 234
    .end local v7    # "y":I
    :cond_b5
    return-object v5
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .registers 22
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "blackPoints"    # [[I
    .param p6, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 108
    move/from16 v0, p1

    move/from16 v1, p2

    add-int/lit8 v2, p4, -0x8

    .line 109
    .local v2, "maxYOffset":I
    add-int/lit8 v3, p3, -0x8

    .line 110
    .local v3, "maxXOffset":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_9
    if-ge v4, v1, :cond_5f

    .line 111
    shl-int/lit8 v5, v4, 0x3

    .line 112
    .local v5, "yoffset":I
    if-le v5, v2, :cond_12

    .line 113
    move v5, v2

    move v8, v5

    goto :goto_13

    .line 112
    :cond_12
    move v8, v5

    .line 115
    .end local v5    # "yoffset":I
    .local v8, "yoffset":I
    :goto_13
    add-int/lit8 v5, v1, -0x3

    invoke-static {v4, v5}, Lcom/google/zxing/common/HybridBinarizer;->cap(II)I

    move-result v5

    .line 116
    .local v5, "top":I
    const/4 v6, 0x0

    move v12, v6

    .local v12, "x":I
    :goto_1b
    if-ge v12, v0, :cond_5c

    .line 117
    shl-int/lit8 v6, v12, 0x3

    .line 118
    .local v6, "xoffset":I
    if-le v6, v3, :cond_24

    .line 119
    move v6, v3

    move v7, v6

    goto :goto_25

    .line 118
    :cond_24
    move v7, v6

    .line 121
    .end local v6    # "xoffset":I
    .local v7, "xoffset":I
    :goto_25
    add-int/lit8 v6, v0, -0x3

    invoke-static {v12, v6}, Lcom/google/zxing/common/HybridBinarizer;->cap(II)I

    move-result v13

    .line 122
    .local v13, "left":I
    const/4 v6, 0x0

    .line 123
    .local v6, "sum":I
    const/4 v9, -0x2

    move v14, v6

    .end local v6    # "sum":I
    .local v9, "z":I
    .local v14, "sum":I
    :goto_2e
    const/4 v6, 0x2

    if-gt v9, v6, :cond_4f

    .line 124
    add-int v6, v5, v9

    aget-object v6, p5, v6

    .line 125
    .local v6, "blackRow":[I
    add-int/lit8 v10, v13, -0x2

    aget v10, v6, v10

    add-int/lit8 v11, v13, -0x1

    aget v11, v6, v11

    add-int/2addr v10, v11

    aget v11, v6, v13

    add-int/2addr v10, v11

    add-int/lit8 v11, v13, 0x1

    aget v11, v6, v11

    add-int/2addr v10, v11

    add-int/lit8 v11, v13, 0x2

    aget v11, v6, v11

    add-int/2addr v10, v11

    add-int/2addr v14, v10

    .line 123
    .end local v6    # "blackRow":[I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 127
    .end local v9    # "z":I
    :cond_4f
    div-int/lit8 v9, v14, 0x19

    .line 128
    .local v9, "average":I
    move-object v6, p0

    move/from16 v10, p3

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 116
    .end local v7    # "xoffset":I
    .end local v9    # "average":I
    .end local v13    # "left":I
    .end local v14    # "sum":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 110
    .end local v5    # "top":I
    .end local v8    # "yoffset":I
    .end local v12    # "x":I
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 131
    .end local v4    # "y":I
    :cond_5f
    return-void
.end method

.method private static cap(II)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "max"    # I

    .line 134
    const/4 v0, 0x2

    if-ge p0, v0, :cond_4

    goto :goto_8

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_8
    return v0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .registers 12
    .param p0, "luminances"    # [B
    .param p1, "xoffset"    # I
    .param p2, "yoffset"    # I
    .param p3, "threshold"    # I
    .param p4, "stride"    # I
    .param p5, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 146
    const/4 v0, 0x0

    .local v0, "y":I
    mul-int v1, p2, p4

    add-int/2addr v1, p1

    .local v1, "offset":I
    :goto_4
    const/16 v2, 0x8

    if-ge v0, v2, :cond_21

    .line 147
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-ge v3, v2, :cond_1d

    .line 149
    add-int v4, v1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_1a

    .line 150
    add-int v4, p1, v3

    add-int v5, p2, v0

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 147
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 146
    .end local v3    # "x":I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, p4

    goto :goto_4

    .line 154
    .end local v0    # "y":I
    .end local v1    # "offset":I
    :cond_21
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 3
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 93
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0

    .line 66
    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 67
    .local v0, "source":Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v4

    .line 68
    .local v4, "width":I
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v5

    .line 69
    .local v5, "height":I
    const/16 v1, 0x28

    if-lt v4, v1, :cond_3c

    if-lt v5, v1, :cond_3c

    .line 70
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v1

    .line 71
    .local v1, "luminances":[B
    shr-int/lit8 v2, v4, 0x3

    .line 72
    .local v2, "subWidth":I
    and-int/lit8 v3, v4, 0x7

    if-eqz v3, :cond_25

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 75
    :cond_25
    shr-int/lit8 v3, v5, 0x3

    .line 76
    .local v3, "subHeight":I
    and-int/lit8 v6, v5, 0x7

    if-eqz v6, :cond_2d

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    :cond_2d
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v6

    .line 81
    .local v6, "blackPoints":[[I
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 82
    .local v7, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    iput-object v7, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 84
    .end local v1    # "luminances":[B
    .end local v2    # "subWidth":I
    .end local v3    # "subHeight":I
    .end local v6    # "blackPoints":[[I
    .end local v7    # "newMatrix":Lcom/google/zxing/common/BitMatrix;
    goto :goto_42

    .line 86
    :cond_3c
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_42
    iget-object v1, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v1
.end method
