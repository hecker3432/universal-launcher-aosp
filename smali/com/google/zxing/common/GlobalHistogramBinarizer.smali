.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final EMPTY:[B

.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private final buckets:[I

.field private luminances:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 3
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    sget-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 47
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 48
    return-void
.end method

.method private static estimateBlackPoint([I)I
    .registers 13
    .param p0, "buckets"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 148
    array-length v0, p0

    .line 149
    .local v0, "numBuckets":I
    const/4 v1, 0x0

    .line 150
    .local v1, "maxBucketCount":I
    const/4 v2, 0x0

    .line 151
    .local v2, "firstPeak":I
    const/4 v3, 0x0

    .line 152
    .local v3, "firstPeakSize":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_5
    if-ge v4, v0, :cond_17

    .line 153
    aget v5, p0, v4

    if-le v5, v3, :cond_e

    .line 154
    move v2, v4

    .line 155
    aget v3, p0, v4

    .line 157
    :cond_e
    aget v5, p0, v4

    if-le v5, v1, :cond_14

    .line 158
    aget v1, p0, v4

    .line 152
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 163
    .end local v4    # "x":I
    :cond_17
    const/4 v4, 0x0

    .line 164
    .local v4, "secondPeak":I
    const/4 v5, 0x0

    .line 165
    .local v5, "secondPeakScore":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1a
    if-ge v6, v0, :cond_2b

    .line 166
    sub-int v7, v6, v2

    .line 168
    .local v7, "distanceToBiggest":I
    aget v8, p0, v6

    mul-int v8, v8, v7

    mul-int v8, v8, v7

    .line 169
    .local v8, "score":I
    if-le v8, v5, :cond_28

    .line 170
    move v4, v6

    .line 171
    move v5, v8

    .line 165
    .end local v7    # "distanceToBiggest":I
    .end local v8    # "score":I
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 176
    .end local v6    # "x":I
    :cond_2b
    if-le v2, v4, :cond_30

    .line 177
    move v6, v2

    .line 178
    .local v6, "temp":I
    move v2, v4

    .line 179
    move v4, v6

    .line 184
    .end local v6    # "temp":I
    :cond_30
    sub-int v6, v4, v2

    div-int/lit8 v7, v0, 0x10

    if-le v6, v7, :cond_55

    .line 189
    add-int/lit8 v6, v4, -0x1

    .line 190
    .local v6, "bestValley":I
    const/4 v7, -0x1

    .line 191
    .local v7, "bestValleyScore":I
    add-int/lit8 v8, v4, -0x1

    .local v8, "x":I
    :goto_3b
    if-le v8, v2, :cond_52

    .line 192
    sub-int v9, v8, v2

    .line 193
    .local v9, "fromFirst":I
    mul-int v10, v9, v9

    sub-int v11, v4, v8

    mul-int v10, v10, v11

    aget v11, p0, v8

    sub-int v11, v1, v11

    mul-int v10, v10, v11

    .line 194
    .local v10, "score":I
    if-le v10, v7, :cond_4f

    .line 195
    move v6, v8

    .line 196
    move v7, v10

    .line 191
    .end local v9    # "fromFirst":I
    .end local v10    # "score":I
    :cond_4f
    add-int/lit8 v8, v8, -0x1

    goto :goto_3b

    .line 200
    .end local v8    # "x":I
    :cond_52
    shl-int/lit8 v8, v6, 0x3

    return v8

    .line 185
    .end local v6    # "bestValley":I
    .end local v7    # "bestValleyScore":I
    :cond_55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    goto :goto_5b

    :goto_5a
    throw v6

    :goto_5b
    goto :goto_5a
.end method

.method private initArrays(I)V
    .registers 5
    .param p1, "luminanceSize"    # I

    .line 138
    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v0, v0

    if-ge v0, p1, :cond_9

    .line 139
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 141
    :cond_9
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_a
    const/16 v1, 0x20

    if-ge v0, v1, :cond_16

    .line 142
    iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 144
    .end local v0    # "x":I
    :cond_16
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 3
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 134
    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 96
    .local v0, "source":Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    .line 97
    .local v1, "width":I
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v2

    .line 98
    .local v2, "height":I
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 102
    .local v3, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 103
    iget-object v4, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 104
    .local v4, "localBuckets":[I
    const/4 v5, 0x1

    .local v5, "y":I
    :goto_17
    const/4 v6, 0x5

    if-ge v5, v6, :cond_3c

    .line 105
    mul-int v7, v2, v5

    div-int/2addr v7, v6

    .line 106
    .local v7, "row":I
    iget-object v8, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v8

    .line 107
    .local v8, "localLuminances":[B
    mul-int/lit8 v9, v1, 0x4

    div-int/2addr v9, v6

    .line 108
    .local v9, "right":I
    div-int/lit8 v6, v1, 0x5

    .local v6, "x":I
    :goto_28
    if-ge v6, v9, :cond_39

    .line 109
    aget-byte v10, v8, v6

    and-int/lit16 v10, v10, 0xff

    .line 110
    .local v10, "pixel":I
    shr-int/lit8 v11, v10, 0x3

    aget v12, v4, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v4, v11

    .line 108
    .end local v10    # "pixel":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 104
    .end local v6    # "x":I
    .end local v7    # "row":I
    .end local v8    # "localLuminances":[B
    .end local v9    # "right":I
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 113
    .end local v5    # "y":I
    :cond_3c
    invoke-static {v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v5

    .line 118
    .local v5, "blackPoint":I
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v6

    .line 119
    .local v6, "localLuminances":[B
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_45
    if-ge v7, v2, :cond_5d

    .line 120
    mul-int v8, v7, v1

    .line 121
    .local v8, "offset":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_4a
    if-ge v9, v1, :cond_5a

    .line 122
    add-int v10, v8, v9

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    .line 123
    .restart local v10    # "pixel":I
    if-ge v10, v5, :cond_57

    .line 124
    invoke-virtual {v3, v9, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 121
    .end local v10    # "pixel":I
    :cond_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 119
    .end local v8    # "offset":I
    .end local v9    # "x":I
    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 129
    .end local v7    # "y":I
    :cond_5d
    return-object v3
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 13
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 54
    .local v0, "source":Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    .line 55
    .local v1, "width":I
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v1, :cond_11

    goto :goto_15

    .line 58
    :cond_11
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1b

    .line 56
    :cond_15
    :goto_15
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object p2, v2

    .line 61
    :goto_1b
    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 62
    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v2

    .line 63
    .local v2, "localLuminances":[B
    iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 64
    .local v3, "localBuckets":[I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_27
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v1, :cond_39

    .line 65
    aget-byte v7, v2, v4

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v5, v7, 0x3

    aget v7, v3, v5

    add-int/2addr v7, v6

    aput v7, v3, v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 67
    .end local v4    # "x":I
    :cond_39
    invoke-static {v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v4

    .line 69
    .local v4, "blackPoint":I
    if-ge v1, v5, :cond_4f

    .line 71
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_40
    if-ge v5, v1, :cond_4e

    .line 72
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    if-ge v6, v4, :cond_4b

    .line 73
    invoke-virtual {p2, v5}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 71
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .end local v5    # "x":I
    :cond_4e
    goto :goto_73

    .line 77
    :cond_4f
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 78
    .local v5, "left":I
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 79
    .local v6, "center":I
    const/4 v7, 0x1

    .local v7, "x":I
    :goto_59
    add-int/lit8 v8, v1, -0x1

    if-ge v7, v8, :cond_73

    .line 80
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    .line 82
    .local v8, "right":I
    mul-int/lit8 v9, v6, 0x4

    sub-int/2addr v9, v5

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    if-ge v9, v4, :cond_6e

    .line 83
    invoke-virtual {p2, v7}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 85
    :cond_6e
    move v5, v6

    .line 86
    move v6, v8

    .line 79
    .end local v8    # "right":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 89
    .end local v5    # "left":I
    .end local v6    # "center":I
    .end local v7    # "x":I
    :cond_73
    :goto_73
    return-object p2
.end method
