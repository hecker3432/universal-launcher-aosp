.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY_BITS:[I

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/common/BitArray;->EMPTY_BITS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 36
    sget-object v0, Lcom/google/zxing/common/BitArray;->EMPTY_BITS:[I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 41
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 42
    return-void
.end method

.method constructor <init>([II)V
    .registers 3
    .param p1, "bits"    # [I
    .param p2, "size"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 47
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 48
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 6
    .param p1, "newSize"    # I

    .line 59
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    if-le p1, v0, :cond_20

    .line 60
    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 61
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 64
    .end local v0    # "newBits":[I
    :cond_20
    return-void
.end method

.method private static makeArray(I)[I
    .registers 2
    .param p0, "size"    # I

    .line 325
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .registers 7
    .param p1, "bit"    # Z

    .line 220
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 221
    if-eqz p1, :cond_1a

    .line 222
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v2, 0x20

    aget v3, v0, v2

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v1, v4

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 224
    :cond_1a
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 225
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .registers 5
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .line 251
    iget v0, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 252
    .local v0, "otherSize":I
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_15

    .line 254
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 256
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public appendBits(II)V
    .registers 10
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .line 236
    if-ltz p2, :cond_2b

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2b

    .line 239
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 240
    .local v0, "nextSize":I
    add-int v1, v0, p2

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 241
    add-int/lit8 v1, p2, -0x1

    .local v1, "numBitsLeft":I
    :goto_f
    if-ltz v1, :cond_28

    .line 242
    const/4 v2, 0x1

    shl-int v3, v2, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_23

    .line 243
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v4, v0, 0x20

    aget v5, v3, v4

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v2, v6

    or-int/2addr v2, v5

    aput v2, v3, v4

    .line 245
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 241
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 247
    .end local v1    # "numBitsLeft":I
    :cond_28
    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 248
    return-void

    .line 237
    .end local v0    # "nextSize":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method

.method public clear()V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    .line 180
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_e

    .line 181
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 183
    .end local v1    # "i":I
    :cond_e
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .registers 4

    .line 356
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 330
    instance-of v0, p1, Lcom/google/zxing/common/BitArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 331
    return v1

    .line 333
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitArray;

    .line 334
    .local v0, "other":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v2, v3, :cond_1a

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public flip(I)V
    .registers 7
    .param p1, "i"    # I

    .line 89
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 90
    return-void
.end method

.method public get(I)Z
    .registers 5
    .param p1, "i"    # I

    .line 71
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public getBitArray()[I
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .registers 6
    .param p1, "from"    # I

    .line 99
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_7

    .line 100
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0

    .line 102
    :cond_7
    div-int/lit8 v0, p1, 0x20

    .line 103
    .local v0, "bitsOffset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    .line 105
    .local v1, "currentBits":I
    and-int/lit8 v2, p1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    neg-int v2, v2

    and-int/2addr v1, v2

    .line 106
    :goto_14
    if-nez v1, :cond_25

    .line 107
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-ne v0, v2, :cond_20

    .line 108
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v2

    .line 110
    :cond_20
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v2, v0

    goto :goto_14

    .line 112
    :cond_25
    mul-int/lit8 v2, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method public getNextUnset(I)I
    .registers 6
    .param p1, "from"    # I

    .line 122
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_7

    .line 123
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0

    .line 125
    :cond_7
    div-int/lit8 v0, p1, 0x20

    .line 126
    .local v0, "bitsOffset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    xor-int/lit8 v1, v1, -0x1

    .line 128
    .local v1, "currentBits":I
    and-int/lit8 v2, p1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    neg-int v2, v2

    and-int/2addr v1, v2

    .line 129
    :goto_16
    if-nez v1, :cond_29

    .line 130
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-ne v0, v2, :cond_22

    .line 131
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v2

    .line 133
    :cond_22
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v2, v0

    xor-int/lit8 v1, v2, -0x1

    goto :goto_16

    .line 135
    :cond_29
    mul-int/lit8 v2, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 136
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method public getSize()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 339
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .line 195
    if-lt p2, p1, :cond_39

    if-ltz p1, :cond_39

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt p2, v0, :cond_39

    .line 198
    const/4 v0, 0x1

    if-ne p2, p1, :cond_c

    .line 199
    return v0

    .line 201
    :cond_c
    add-int/lit8 p2, p2, -0x1

    .line 202
    div-int/lit8 v1, p1, 0x20

    .line 203
    .local v1, "firstInt":I
    div-int/lit8 v2, p2, 0x20

    .line 204
    .local v2, "lastInt":I
    move v3, v1

    .local v3, "i":I
    :goto_13
    if-gt v3, v2, :cond_38

    .line 205
    const/4 v4, 0x0

    if-le v3, v1, :cond_1a

    const/4 v5, 0x0

    goto :goto_1c

    :cond_1a
    and-int/lit8 v5, p1, 0x1f

    .line 206
    .local v5, "firstBit":I
    :goto_1c
    if-ge v3, v2, :cond_21

    const/16 v6, 0x1f

    goto :goto_23

    :cond_21
    and-int/lit8 v6, p2, 0x1f

    .line 208
    .local v6, "lastBit":I
    :goto_23
    const/4 v7, 0x2

    shl-int/2addr v7, v6

    shl-int v8, v0, v5

    sub-int/2addr v7, v8

    .line 212
    .local v7, "mask":I
    iget-object v8, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v8, v8, v3

    and-int/2addr v8, v7

    if-eqz p3, :cond_31

    move v9, v7

    goto :goto_32

    :cond_31
    const/4 v9, 0x0

    :goto_32
    if-eq v8, v9, :cond_35

    .line 213
    return v4

    .line 204
    .end local v5    # "firstBit":I
    .end local v6    # "lastBit":I
    .end local v7    # "mask":I
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 216
    .end local v3    # "i":I
    :cond_38
    return v0

    .line 196
    .end local v1    # "firstInt":I
    .end local v2    # "lastInt":I
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_40

    :goto_3f
    throw v0

    :goto_40
    goto :goto_3f
.end method

.method public reverse()V
    .registers 9

    .line 302
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 304
    .local v0, "newBits":[I
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x20

    .line 305
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x1

    .line 306
    .local v2, "oldBitsLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_1f

    .line 307
    sub-int v4, v1, v3

    iget-object v5, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    move-result v5

    aput v5, v0, v4

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 310
    .end local v3    # "i":I
    :cond_1f
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v4, v2, 0x20

    if-eq v3, v4, :cond_45

    .line 311
    mul-int/lit8 v3, v2, 0x20

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int/2addr v3, v4

    .line 312
    .local v3, "leftOffset":I
    const/4 v4, 0x0

    aget v4, v0, v4

    ushr-int/2addr v4, v3

    .line 313
    .local v4, "currentInt":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2f
    if-ge v5, v2, :cond_41

    .line 314
    aget v6, v0, v5

    .line 315
    .local v6, "nextInt":I
    rsub-int/lit8 v7, v3, 0x20

    shl-int v7, v6, v7

    or-int/2addr v4, v7

    .line 316
    add-int/lit8 v7, v5, -0x1

    aput v4, v0, v7

    .line 317
    ushr-int v4, v6, v3

    .line 313
    .end local v6    # "nextInt":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 319
    .end local v5    # "i":I
    :cond_41
    add-int/lit8 v5, v2, -0x1

    aput v4, v0, v5

    .line 321
    .end local v3    # "leftOffset":I
    .end local v4    # "currentInt":I
    :cond_45
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 322
    return-void
.end method

.method public set(I)V
    .registers 7
    .param p1, "i"    # I

    .line 80
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 81
    return-void
.end method

.method public setBulk(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .line 147
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 148
    return-void
.end method

.method public setRange(II)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 157
    if-lt p2, p1, :cond_31

    if-ltz p1, :cond_31

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt p2, v0, :cond_31

    .line 160
    if-ne p2, p1, :cond_b

    .line 161
    return-void

    .line 163
    :cond_b
    add-int/lit8 p2, p2, -0x1

    .line 164
    div-int/lit8 v0, p1, 0x20

    .line 165
    .local v0, "firstInt":I
    div-int/lit8 v1, p2, 0x20

    .line 166
    .local v1, "lastInt":I
    move v2, v0

    .local v2, "i":I
    :goto_12
    if-gt v2, v1, :cond_30

    .line 167
    if-le v2, v0, :cond_18

    const/4 v3, 0x0

    goto :goto_1a

    :cond_18
    and-int/lit8 v3, p1, 0x1f

    .line 168
    .local v3, "firstBit":I
    :goto_1a
    if-ge v2, v1, :cond_1f

    const/16 v4, 0x1f

    goto :goto_21

    :cond_1f
    and-int/lit8 v4, p2, 0x1f

    .line 170
    .local v4, "lastBit":I
    :goto_21
    const/4 v5, 0x2

    shl-int/2addr v5, v4

    const/4 v6, 0x1

    shl-int/2addr v6, v3

    sub-int/2addr v5, v6

    .line 171
    .local v5, "mask":I
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v7, v6, v2

    or-int/2addr v7, v5

    aput v7, v6, v2

    .line 166
    .end local v3    # "firstBit":I
    .end local v4    # "lastBit":I
    .end local v5    # "mask":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 173
    .end local v2    # "i":I
    :cond_30
    return-void

    .line 158
    .end local v0    # "firstInt":I
    .end local v1    # "lastInt":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_38

    :goto_37
    throw v0

    :goto_38
    goto :goto_37
.end method

.method public toBytes(I[BII)V
    .registers 10
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_22

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "theByte":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1a

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 282
    rsub-int/lit8 v3, v2, 0x7

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    .line 284
    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 286
    .end local v2    # "j":I
    :cond_1a
    add-int v2, p3, v0

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 278
    .end local v1    # "theByte":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v1, v2, :cond_2d

    .line 346
    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1c

    .line 347
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x58

    goto :goto_27

    :cond_25
    const/16 v2, 0x2e

    :goto_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 351
    .end local v1    # "i":I
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .registers 6
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .line 259
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v0, v1, :cond_1b

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 265
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 267
    .end local v0    # "i":I
    :cond_1a
    return-void

    .line 260
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method
