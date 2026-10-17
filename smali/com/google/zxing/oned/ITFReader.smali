.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 56
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0xe

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 67
    const/4 v5, 0x1

    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v6

    sput-object v6, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 68
    const/4 v6, 0x2

    new-array v7, v6, [[I

    filled-new-array {v5, v5, v6}, [I

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x3

    filled-new-array {v5, v5, v8}, [I

    move-result-object v10

    aput-object v10, v7, v5

    sput-object v7, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 78
    const/16 v7, 0x14

    new-array v7, v7, [[I

    filled-new-array {v5, v5, v6, v6, v5}, [I

    move-result-object v10

    aput-object v10, v7, v9

    filled-new-array {v6, v5, v5, v5, v6}, [I

    move-result-object v9

    aput-object v9, v7, v5

    filled-new-array {v5, v6, v5, v5, v6}, [I

    move-result-object v9

    aput-object v9, v7, v6

    filled-new-array {v6, v6, v5, v5, v5}, [I

    move-result-object v9

    aput-object v9, v7, v8

    filled-new-array {v5, v5, v6, v5, v6}, [I

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v7, v10

    filled-new-array {v6, v5, v6, v5, v5}, [I

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v7, v10

    filled-new-array {v5, v6, v6, v5, v5}, [I

    move-result-object v9

    aput-object v9, v7, v0

    filled-new-array {v5, v5, v5, v6, v6}, [I

    move-result-object v0

    const/4 v9, 0x7

    aput-object v0, v7, v9

    filled-new-array {v6, v5, v5, v6, v5}, [I

    move-result-object v0

    aput-object v0, v7, v1

    filled-new-array {v5, v6, v5, v6, v5}, [I

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v7, v1

    filled-new-array {v5, v5, v8, v8, v5}, [I

    move-result-object v0

    aput-object v0, v7, v2

    filled-new-array {v8, v5, v5, v5, v8}, [I

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v7, v1

    filled-new-array {v5, v8, v5, v5, v8}, [I

    move-result-object v0

    aput-object v0, v7, v3

    filled-new-array {v8, v8, v5, v5, v5}, [I

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v7, v1

    filled-new-array {v5, v5, v8, v5, v8}, [I

    move-result-object v0

    aput-object v0, v7, v4

    filled-new-array {v8, v5, v8, v5, v5}, [I

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v7, v1

    filled-new-array {v5, v8, v8, v5, v5}, [I

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v7, v1

    filled-new-array {v5, v5, v5, v8, v8}, [I

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, v7, v1

    filled-new-array {v8, v5, v5, v8, v5}, [I

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, v7, v1

    filled-new-array {v5, v8, v5, v8, v5}, [I

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, v7, v1

    sput-object v7, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .registers 8
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 358
    const v0, 0x3ec28f5c    # 0.38f

    .line 359
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 360
    .local v1, "bestMatch":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v2, v2

    .line 361
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_23

    .line 362
    sget-object v4, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v4, v3

    .line 363
    .local v4, "pattern":[I
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {p0, v4, v5}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 364
    .local v5, "variance":F
    cmpg-float v6, v5, v0

    if-gez v6, :cond_1b

    .line 365
    move v0, v5

    .line 366
    move v1, v3

    goto :goto_20

    .line 367
    :cond_1b
    cmpl-float v6, v5, v0

    if-nez v6, :cond_20

    .line 369
    const/4 v1, -0x1

    .line 361
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 372
    .end local v3    # "i":I
    :cond_23
    if-ltz v1, :cond_28

    .line 373
    rem-int/lit8 v3, v1, 0xa

    return v3

    .line 375
    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    goto :goto_2e

    :goto_2d
    throw v3

    :goto_2e
    goto :goto_2d
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .registers 9
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 280
    :try_start_3
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_38

    .line 283
    .local v0, "endStart":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_9
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    aget-object v3, v3, v2

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v3
    :try_end_11
    .catch Lcom/google/zxing/NotFoundException; {:try_start_9 .. :try_end_11} :catch_12
    .catchall {:try_start_9 .. :try_end_11} :catchall_38

    .line 286
    .local v3, "endPattern":[I
    goto :goto_1c

    .line 284
    .end local v3    # "endPattern":[I
    :catch_12
    move-exception v3

    .line 285
    .local v3, "nfe":Lcom/google/zxing/NotFoundException;
    :try_start_13
    sget-object v4, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    aget-object v4, v4, v1

    invoke-static {p1, v0, v4}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v4

    move-object v3, v4

    .line 291
    .local v3, "endPattern":[I
    :goto_1c
    aget v4, v3, v2

    invoke-direct {p0, p1, v4}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 296
    aget v4, v3, v2

    .line 297
    .local v4, "temp":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    aget v6, v3, v1

    sub-int/2addr v5, v6

    aput v5, v3, v2

    .line 298
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    aput v2, v3, v1
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_38

    .line 300
    nop

    .line 303
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 300
    return-object v3

    .line 303
    .end local v0    # "endStart":I
    .end local v3    # "endPattern":[I
    .end local v4    # "temp":I
    :catchall_38
    move-exception v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 304
    throw v0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .registers 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 169
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 170
    .local v0, "counterDigitPair":[I
    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 171
    .local v2, "counterBlack":[I
    new-array v3, v1, [I

    .line 173
    .local v3, "counterWhite":[I
    :goto_9
    if-ge p1, p2, :cond_3f

    .line 176
    invoke-static {p0, p1, v0}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 178
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_f
    if-ge v4, v1, :cond_20

    .line 179
    mul-int/lit8 v5, v4, 0x2

    .line 180
    .local v5, "twoK":I
    aget v6, v0, v5

    aput v6, v2, v4

    .line 181
    add-int/lit8 v6, v5, 0x1

    aget v6, v0, v6

    aput v6, v3, v4

    .line 178
    .end local v5    # "twoK":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 184
    .end local v4    # "k":I
    :cond_20
    invoke-static {v2}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v4

    .line 185
    .local v4, "bestMatch":I
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v4

    .line 187
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    array-length v5, v0

    const/4 v6, 0x0

    :goto_36
    if-ge v6, v5, :cond_3e

    aget v7, v0, v6

    .line 190
    .local v7, "counterDigit":I
    add-int/2addr p1, v7

    .line 189
    .end local v7    # "counterDigit":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 192
    .end local v4    # "bestMatch":I
    :cond_3e
    goto :goto_9

    .line 193
    :cond_3f
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .registers 7
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 204
    .local v0, "endStart":I
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 209
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v4, v1, v3

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 211
    aget v2, v1, v3

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 213
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .registers 14
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 319
    array-length v0, p2

    .line 320
    .local v0, "patternLength":I
    new-array v1, v0, [I

    .line 321
    .local v1, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 322
    .local v2, "width":I
    const/4 v3, 0x0

    .line 324
    .local v3, "isWhite":Z
    const/4 v4, 0x0

    .line 325
    .local v4, "counterPosition":I
    move v5, p1

    .line 326
    .local v5, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_b
    if-ge v6, v2, :cond_52

    .line 327
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v3, :cond_1a

    .line 328
    aget v7, v1, v4

    add-int/2addr v7, v8

    aput v7, v1, v4

    goto :goto_4f

    .line 330
    :cond_1a
    add-int/lit8 v7, v0, -0x1

    const/4 v9, 0x0

    if-ne v4, v7, :cond_46

    .line 331
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v1, p2, v7}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v7

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v7, v7, v10

    if-gez v7, :cond_31

    .line 332
    filled-new-array {v5, v6}, [I

    move-result-object v7

    return-object v7

    .line 334
    :cond_31
    aget v7, v1, v9

    aget v10, v1, v8

    add-int/2addr v7, v10

    add-int/2addr v5, v7

    .line 335
    add-int/lit8 v7, v4, -0x1

    const/4 v10, 0x2

    invoke-static {v1, v10, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    add-int/lit8 v7, v4, -0x1

    aput v9, v1, v7

    .line 337
    aput v9, v1, v4

    .line 338
    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    .line 340
    :cond_46
    add-int/lit8 v4, v4, 0x1

    .line 342
    :goto_48
    aput v8, v1, v4

    .line 343
    if-nez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v8, 0x0

    :goto_4e
    move v3, v8

    .line 326
    :goto_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 346
    .end local v6    # "x":I
    :cond_52
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    goto :goto_58

    :goto_57
    throw v6

    :goto_58
    goto :goto_57
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .registers 4
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 259
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    .line 260
    .local v1, "endStart":I
    if-eq v1, v0, :cond_c

    .line 264
    return v1

    .line 261
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .registers 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 233
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v0, v0, 0xa

    .line 236
    .local v0, "quietCount":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_a
    if-lez v0, :cond_1a

    if-ltz v1, :cond_1a

    .line 239
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 240
    goto :goto_1a

    .line 242
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 238
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 244
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    if-nez v0, :cond_1d

    .line 248
    return-void

    .line 246
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    goto :goto_23

    :goto_22
    throw v1

    :goto_23
    goto :goto_22
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 22
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 106
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 107
    .local v4, "startRange":[I
    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v5

    .line 109
    .local v5, "endRange":[I
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v2, v8, v10, v6}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "resultString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 114
    .local v10, "allowedLengths":[I
    if-eqz v3, :cond_32

    .line 115
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v10, v11

    check-cast v10, [I

    .line 118
    :cond_32
    if-nez v10, :cond_36

    .line 119
    sget-object v10, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 124
    :cond_36
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 125
    .local v11, "length":I
    const/4 v12, 0x0

    .line 126
    .local v12, "lengthOK":Z
    const/4 v13, 0x0

    .line 127
    .local v13, "maxAllowedLength":I
    array-length v14, v10

    const/4 v15, 0x0

    :goto_3e
    if-ge v15, v14, :cond_4f

    const/16 v16, 0x1

    aget v7, v10, v15

    .line 128
    .local v7, "allowedLength":I
    if-ne v11, v7, :cond_48

    .line 129
    const/4 v12, 0x1

    .line 130
    goto :goto_51

    .line 132
    :cond_48
    if-le v7, v13, :cond_4b

    .line 133
    move v13, v7

    .line 127
    .end local v7    # "allowedLength":I
    :cond_4b
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_3e

    :cond_4f
    const/16 v16, 0x1

    .line 136
    :goto_51
    if-nez v12, :cond_56

    if-le v11, v13, :cond_56

    .line 137
    const/4 v12, 0x1

    .line 139
    :cond_56
    if-eqz v12, :cond_83

    .line 143
    new-instance v7, Lcom/google/zxing/Result;

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v17, 0x0

    aget v9, v4, v16

    int-to-float v9, v9

    int-to-float v0, v1

    invoke-direct {v15, v9, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v14, v17

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v9, v5, v17

    int-to-float v9, v9

    int-to-float v15, v1

    invoke-direct {v0, v9, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v14, v16

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v14, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 149
    .local v7, "resultObject":Lcom/google/zxing/Result;
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v9, "]I0"

    invoke-virtual {v7, v0, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 150
    return-object v7

    .line 140
    .end local v7    # "resultObject":Lcom/google/zxing/Result;
    :cond_83
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method
