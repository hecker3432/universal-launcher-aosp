.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 8
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 146
    return-object v0

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v1

    .line 149
    .local v1, "rowHeights":[I
    if-nez v1, :cond_b

    .line 150
    return-object v0

    .line 152
    :cond_b
    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v0

    .line 153
    .local v0, "maxRowHeight":I
    const/4 v2, 0x0

    .line 154
    .local v2, "missingStartRows":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1f

    aget v5, v1, v4

    .line 155
    .local v5, "rowHeight":I
    sub-int v6, v0, v5

    add-int/2addr v2, v6

    .line 156
    if-lez v5, :cond_1c

    .line 157
    goto :goto_1f

    .line 154
    .end local v5    # "rowHeight":I
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 160
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    .line 161
    .local v3, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_24
    if-lez v2, :cond_2f

    aget-object v5, v3, v4

    if-nez v5, :cond_2f

    .line 162
    add-int/lit8 v2, v2, -0x1

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 164
    .end local v4    # "row":I
    :cond_2f
    const/4 v4, 0x0

    .line 165
    .local v4, "missingEndRows":I
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    .local v5, "row":I
    :goto_33
    if-ltz v5, :cond_42

    .line 166
    aget v6, v1, v5

    sub-int v6, v0, v6

    add-int/2addr v4, v6

    .line 167
    aget v6, v1, v5

    if-lez v6, :cond_3f

    .line 168
    goto :goto_42

    .line 165
    :cond_3f
    add-int/lit8 v5, v5, -0x1

    goto :goto_33

    .line 171
    .end local v5    # "row":I
    :cond_42
    :goto_42
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "row":I
    :goto_45
    if-lez v4, :cond_50

    aget-object v6, v3, v5

    if-nez v6, :cond_50

    .line 172
    add-int/lit8 v4, v4, -0x1

    .line 171
    add-int/lit8 v5, v5, -0x1

    goto :goto_45

    .line 174
    .end local v5    # "row":I
    :cond_50
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 175
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v6

    .line 174
    invoke-virtual {v5, v2, v4, v6}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    return-object v5
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .registers 9
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 238
    .local v1, "barcodeMatrix01":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v3

    .line 239
    .local v3, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v4

    .line 240
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v5

    mul-int v4, v4, v5

    .line 241
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 242
    .local v4, "calculatedNumberOfCodewords":I
    array-length v5, v3

    const/16 v6, 0x3a0

    if-nez v5, :cond_2f

    .line 243
    if-lt v4, v2, :cond_2a

    if-gt v4, v6, :cond_2a

    .line 246
    invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_3a

    .line 244
    :cond_2a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 247
    :cond_2f
    aget v0, v3, v0

    if-eq v0, v4, :cond_3a

    if-lt v4, v2, :cond_3a

    if-gt v4, v6, :cond_3a

    .line 251
    invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 253
    :cond_3a
    :goto_3a
    return-void
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .registers 12
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .line 504
    move v0, p4

    .line 505
    .local v0, "correctedStartColumn":I
    const/4 v1, 0x1

    if-eqz p3, :cond_6

    const/4 v2, -0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x1

    .line 507
    .local v2, "increment":I
    :goto_7
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2d

    .line 508
    :goto_b
    if-eqz p3, :cond_10

    if-lt v0, p1, :cond_23

    goto :goto_12

    :cond_10
    if-ge v0, p2, :cond_23

    .line 509
    :goto_12
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-ne p3, v5, :cond_23

    .line 510
    sub-int v5, p4, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v4, :cond_21

    .line 511
    return p4

    .line 513
    :cond_21
    add-int/2addr v0, v2

    goto :goto_b

    .line 515
    :cond_23
    neg-int v2, v2

    .line 516
    if-nez p3, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    move p3, v4

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 518
    .end local v3    # "i":I
    :cond_2d
    return v0
.end method

.method private static checkCodewordSkew(III)Z
    .registers 4
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .line 522
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_a

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static correctErrors([I[II)I
    .registers 5
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 553
    if-eqz p1, :cond_9

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_16

    :cond_9
    if-ltz p2, :cond_16

    const/16 v0, 0x200

    if-gt p2, v0, :cond_16

    .line 560
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0

    .line 558
    :cond_16
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .registers 15
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;

    .line 335
    nop

    .line 336
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 337
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_1c
    array-length v3, v0

    if-ge v2, v3, :cond_34

    .line 338
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_20
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_31

    .line 339
    aget-object v4, v0, v2

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v3

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 337
    .end local v3    # "column":I
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 343
    .end local v2    # "row":I
    :cond_34
    const/4 v2, 0x0

    .line 344
    .local v2, "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v4, :cond_6b

    aget-object v6, v3, v5

    .line 345
    .local v6, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-eqz v6, :cond_65

    .line 346
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_47
    if-ge v9, v8, :cond_65

    aget-object v10, v7, v9

    .line 347
    .local v10, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v10, :cond_62

    .line 348
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    .line 349
    .local v11, "rowNumber":I
    if-ltz v11, :cond_62

    .line 350
    array-length v12, v0

    if-lt v11, v12, :cond_57

    .line 352
    goto :goto_62

    .line 354
    :cond_57
    aget-object v12, v0, v11

    aget-object v12, v12, v2

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 346
    .end local v10    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v11    # "rowNumber":I
    :cond_62
    :goto_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 359
    :cond_65
    nop

    .end local v6    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    add-int/lit8 v2, v2, 0x1

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 361
    :cond_6b
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 257
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v0

    .line 258
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int v2, v2, v3

    new-array v2, v2, [I

    .line 261
    .local v2, "codewords":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v3, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v4, "ambiguousIndexesList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_23
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v6

    if-ge v5, v6, :cond_66

    .line 264
    const/4 v6, 0x0

    .local v6, "column":I
    :goto_2a
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_63

    .line 265
    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    .line 266
    .local v7, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    mul-int v8, v8, v5

    add-int/2addr v8, v6

    .line 267
    .local v8, "codewordIndex":I
    array-length v9, v7

    if-nez v9, :cond_4c

    .line 268
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 269
    :cond_4c
    array-length v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_56

    .line 270
    const/4 v9, 0x0

    aget v9, v7, v9

    aput v9, v2, v8

    goto :goto_60

    .line 272
    :cond_56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v7    # "values":[I
    .end local v8    # "codewordIndex":I
    :goto_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 263
    .end local v6    # "column":I
    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 277
    .end local v5    # "row":I
    :cond_66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [[I

    .line 278
    .local v5, "ambiguousIndexValues":[[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6d
    array-length v7, v5

    if-ge v6, v7, :cond_7b

    .line 279
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v5, v6

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    .line 281
    .end local v6    # "i":I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v6

    .line 282
    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 281
    invoke-static {v6, v2, v7, v8, v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    return-object v6
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .registers 11
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 304
    array-length v0, p3

    new-array v0, v0, [I

    .line 306
    .local v0, "ambiguousIndexCount":[I
    const/16 v1, 0x64

    .line 307
    .local v1, "tries":I
    :goto_5
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "tries":I
    .local v2, "tries":I
    if-lez v1, :cond_4e

    .line 308
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_1a

    .line 309
    aget v3, p3, v1

    aget-object v4, p4, v1

    aget v5, v0, v1

    aget v4, v4, v5

    aput v4, p1, v3

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 312
    .end local v1    # "i":I
    :cond_1a
    :try_start_1a
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1
    :try_end_1e
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v1

    .line 313
    :catch_1f
    move-exception v1

    .line 316
    array-length v1, v0

    if-eqz v1, :cond_49

    .line 319
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    array-length v3, v0

    if-ge v1, v3, :cond_47

    .line 320
    aget v3, v0, v1

    aget-object v4, p4, v1

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_37

    .line 321
    aget v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    .line 322
    goto :goto_47

    .line 324
    :cond_37
    const/4 v3, 0x0

    aput v3, v0, v1

    .line 325
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_42

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 326
    :cond_42
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 319
    .end local v1    # "i":I
    :cond_47
    :goto_47
    move v1, v2

    goto :goto_5

    .line 317
    :cond_49
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 331
    :cond_4e
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    goto :goto_54

    :goto_53
    throw v1

    :goto_54
    goto :goto_53
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .registers 26
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 61
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/4 v1, 0x0

    .line 62
    .local v1, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v2, 0x0

    .line 64
    .local v2, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v3, 0x1

    move-object v7, v2

    move v8, v3

    move-object v2, v0

    move-object v0, v1

    .line 65
    .end local v1    # "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v0, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v2, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .local v7, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v8, "firstPass":Z
    :goto_16
    if-eqz p1, :cond_25

    .line 66
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v0

    .line 69
    :cond_25
    if-eqz p3, :cond_37

    .line 70
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v4

    move-object v9, v2

    move-object v10, v4

    .end local v2    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v7    # "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v4, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v9, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    goto :goto_39

    .line 69
    .end local v4    # "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .end local v9    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v2    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v7    # "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    :cond_37
    move-object v9, v2

    .end local v2    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v9    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move-object v10, v7

    .line 73
    .end local v7    # "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v10, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    :goto_39
    invoke-static {v0, v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v11

    .line 74
    .local v11, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    if-eqz v11, :cond_122

    .line 77
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 78
    .local v1, "resultBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    if-eqz v8, :cond_5f

    if-eqz v1, :cond_5f

    .line 79
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v2

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    if-lt v2, v3, :cond_5b

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v2

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-le v2, v3, :cond_5f

    .line 80
    :cond_5b
    move-object v2, v1

    .line 64
    .end local v1    # "resultBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v9    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v2    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/4 v8, 0x0

    move-object v7, v10

    goto :goto_16

    .line 85
    .end local v2    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v8    # "firstPass":Z
    .restart local v9    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    :cond_5f
    invoke-virtual {v11, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 86
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    const/4 v12, 0x1

    add-int/lit8 v13, v1, 0x1

    .line 87
    .local v13, "maxBarcodeColumn":I
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 88
    invoke-virtual {v11, v13, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 90
    if-eqz v0, :cond_74

    const/4 v4, 0x1

    goto :goto_75

    :cond_74
    const/4 v4, 0x0

    .line 91
    .local v4, "leftToRight":Z
    :goto_75
    const/4 v1, 0x1

    move/from16 v2, p6

    move v15, v1

    move/from16 v1, p5

    .end local p5    # "minCodewordWidth":I
    .end local p6    # "maxCodewordWidth":I
    .local v1, "minCodewordWidth":I
    .local v2, "maxCodewordWidth":I
    .local v15, "barcodeColumnCount":I
    :goto_7b
    if-gt v15, v13, :cond_11d

    .line 92
    if-eqz v4, :cond_81

    move v3, v15

    goto :goto_83

    :cond_81
    sub-int v3, v13, v15

    .line 93
    .local v3, "barcodeColumn":I
    :goto_83
    invoke-virtual {v11, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 95
    goto/16 :goto_118

    .line 98
    :cond_8b
    if-eqz v3, :cond_96

    if-ne v3, v13, :cond_90

    goto :goto_96

    .line 101
    :cond_90
    new-instance v5, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v5, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .local v5, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    goto :goto_a0

    .line 99
    .end local v5    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_96
    :goto_96
    new-instance v5, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v3, :cond_9c

    const/4 v6, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v6, 0x0

    :goto_9d
    invoke-direct {v5, v9, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 103
    .restart local v5    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_a0
    invoke-virtual {v11, v3, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 104
    const/4 v6, -0x1

    .line 105
    .local v6, "startColumn":I
    move v7, v6

    .line 107
    .local v7, "previousStartColumn":I
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    move/from16 v18, v7

    move v7, v1

    move/from16 v1, v18

    move/from16 v18, v8

    move v8, v2

    move/from16 v2, v18

    .local v1, "previousStartColumn":I
    .local v2, "imageRow":I
    .local v7, "minCodewordWidth":I
    .local v8, "maxCodewordWidth":I
    :goto_b3
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v12

    if-gt v2, v12, :cond_10f

    .line 108
    invoke-static {v11, v3, v2, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v6

    .line 109
    if-ltz v6, :cond_c5

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v12

    if-le v6, v12, :cond_d0

    .line 110
    :cond_c5
    const/4 v12, -0x1

    if-ne v1, v12, :cond_cf

    .line 111
    move v12, v8

    move v8, v2

    move v2, v12

    move/from16 v16, v3

    move-object v12, v5

    goto :goto_106

    .line 113
    :cond_cf
    move v6, v1

    .line 115
    :cond_d0
    move-object v12, v5

    move v5, v6

    move v6, v2

    .end local v2    # "imageRow":I
    .local v5, "startColumn":I
    .local v6, "imageRow":I
    .local v12, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v2

    move/from16 v16, v3

    .end local v3    # "barcodeColumn":I
    .local v16, "barcodeColumn":I
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    move/from16 v17, v1

    move-object/from16 v1, p0

    .end local v1    # "previousStartColumn":I
    .local v17, "previousStartColumn":I
    invoke-static/range {v1 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 117
    move v1, v8

    move v8, v6

    .end local v6    # "imageRow":I
    .local v1, "maxCodewordWidth":I
    .local v2, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .local v8, "imageRow":I
    if-eqz v2, :cond_102

    .line 118
    invoke-virtual {v12, v8, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 119
    move v3, v5

    .line 120
    .end local v17    # "previousStartColumn":I
    .local v3, "previousStartColumn":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 121
    .end local v7    # "minCodewordWidth":I
    .local v6, "minCodewordWidth":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    move v1, v3

    move v7, v6

    move v6, v5

    goto :goto_106

    .line 117
    .end local v3    # "previousStartColumn":I
    .end local v6    # "minCodewordWidth":I
    .restart local v7    # "minCodewordWidth":I
    .restart local v17    # "previousStartColumn":I
    :cond_102
    move v2, v1

    move v6, v5

    move/from16 v1, v17

    .line 107
    .end local v5    # "startColumn":I
    .end local v17    # "previousStartColumn":I
    .local v1, "previousStartColumn":I
    .local v2, "maxCodewordWidth":I
    .local v6, "startColumn":I
    :goto_106
    add-int/lit8 v3, v8, 0x1

    move v8, v2

    move v2, v3

    move-object v5, v12

    move/from16 v3, v16

    const/4 v12, 0x1

    .end local v8    # "imageRow":I
    .local v3, "imageRow":I
    goto :goto_b3

    .end local v12    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v16    # "barcodeColumn":I
    .local v2, "imageRow":I
    .local v3, "barcodeColumn":I
    .local v5, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v8, "maxCodewordWidth":I
    :cond_10f
    move/from16 v17, v1

    move/from16 v16, v3

    move-object v12, v5

    move v1, v8

    move v8, v2

    .end local v2    # "imageRow":I
    .end local v3    # "barcodeColumn":I
    .end local v5    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v1, "maxCodewordWidth":I
    .local v8, "imageRow":I
    .restart local v12    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v16    # "barcodeColumn":I
    .restart local v17    # "previousStartColumn":I
    move v2, v1

    move v1, v7

    .line 91
    .end local v6    # "startColumn":I
    .end local v7    # "minCodewordWidth":I
    .end local v8    # "imageRow":I
    .end local v12    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v16    # "barcodeColumn":I
    .end local v17    # "previousStartColumn":I
    .local v1, "minCodewordWidth":I
    .local v2, "maxCodewordWidth":I
    :goto_118
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto/16 :goto_7b

    .line 125
    .end local v15    # "barcodeColumnCount":I
    :cond_11d
    invoke-static {v11}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    return-object v3

    .line 75
    .end local v1    # "minCodewordWidth":I
    .end local v2    # "maxCodewordWidth":I
    .end local v4    # "leftToRight":Z
    .end local v13    # "maxBarcodeColumn":I
    .local v8, "firstPass":Z
    .restart local p5    # "minCodewordWidth":I
    .restart local p6    # "maxCodewordWidth":I
    :cond_122
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    goto :goto_128

    :goto_127
    throw v1

    :goto_128
    goto :goto_127
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .registers 7
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 528
    array-length v0, p0

    if-eqz v0, :cond_27

    .line 532
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 533
    .local v0, "numECCodewords":I
    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v1

    .line 534
    .local v1, "correctedErrorsCount":I
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 537
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 538
    .local v2, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 539
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 540
    return-object v2

    .line 529
    .end local v0    # "numECCodewords":I
    .end local v1    # "correctedErrorsCount":I
    .end local v2    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_27
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .registers 15
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .line 415
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 420
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v0

    .line 421
    .local v0, "moduleBitCount":[I
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 422
    return-object v1

    .line 425
    :cond_c
    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v2

    .line 426
    .local v2, "codewordBitCount":I
    if-eqz p3, :cond_15

    .line 427
    add-int v3, p4, v2

    .local v3, "endColumn":I
    goto :goto_31

    .line 429
    .end local v3    # "endColumn":I
    :cond_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_2e

    .line 430
    aget v4, v0, v3

    .line 431
    .local v4, "tmpCount":I
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aget v5, v0, v5

    aput v5, v0, v3

    .line 432
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aput v4, v0, v5

    .line 429
    .end local v4    # "tmpCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 434
    .end local v3    # "i":I
    :cond_2e
    move v3, p4

    .line 435
    .local v3, "endColumn":I
    sub-int p4, v3, v2

    .line 451
    :goto_31
    invoke-static {v2, p6, p7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v4

    if-nez v4, :cond_38

    .line 454
    return-object v1

    .line 457
    :cond_38
    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    .line 458
    .local v4, "decodedValue":I
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v5

    .line 459
    .local v5, "codeword":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_44

    .line 460
    return-object v1

    .line 462
    :cond_44
    new-instance v1, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v6

    invoke-direct {v1, p4, v3, v6, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object v1
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 7
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .line 189
    const/4 v0, 0x0

    if-eqz p0, :cond_36

    .line 190
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v2, v1

    .local v2, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_b

    goto :goto_36

    .line 194
    :cond_b
    if-eqz p1, :cond_35

    .line 195
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v3, v1

    .local v3, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_15

    goto :goto_35

    .line 199
    :cond_15
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v1, v4, :cond_34

    .line 200
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v1, v4, :cond_34

    .line 201
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v1, v4, :cond_34

    .line 202
    return-object v0

    .line 204
    :cond_34
    return-object v2

    .line 196
    .end local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_35
    :goto_35
    return-object v2

    .line 191
    .end local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_36
    :goto_36
    if-nez p1, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    :goto_3d
    return-object v0
.end method

.method private static getBitCountForCodeword(I)[I
    .registers 5
    .param p0, "codeword"    # I

    .line 590
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 591
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 592
    .local v1, "previousValue":I
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 594
    .local v2, "i":I
    :goto_8
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_14

    .line 595
    and-int/lit8 v1, p0, 0x1

    .line 596
    add-int/lit8 v2, v2, -0x1

    .line 597
    if-gez v2, :cond_14

    .line 598
    nop

    .line 604
    return-object v0

    .line 601
    :cond_14
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 602
    shr-int/lit8 p0, p0, 0x1

    goto :goto_8
.end method

.method private static getCodewordBucketNumber(I)I
    .registers 2
    .param p0, "codeword"    # I

    .line 608
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .registers 3
    .param p0, "moduleBitCount"    # [I

    .line 612
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .registers 5
    .param p0, "values"    # [I

    .line 179
    const/4 v0, -0x1

    .line 180
    .local v0, "maxValue":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_e

    aget v3, p0, v2

    .line 181
    .local v3, "value":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 180
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 183
    :cond_e
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .registers 13
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .line 471
    move v0, p4

    .line 472
    .local v0, "imageColumn":I
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 473
    .local v1, "moduleBitCount":[I
    const/4 v2, 0x0

    .line 474
    .local v2, "moduleNumber":I
    const/4 v3, 0x1

    if-eqz p3, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, -0x1

    .line 475
    .local v4, "increment":I
    :goto_c
    move v5, p3

    .line 476
    .local v5, "previousPixelValue":Z
    :goto_d
    if-eqz p3, :cond_12

    if-ge v0, p2, :cond_2d

    goto :goto_14

    :cond_12
    if-lt v0, p1, :cond_2d

    :goto_14
    array-length v6, v1

    if-ge v2, v6, :cond_2d

    .line 478
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v5, :cond_24

    .line 479
    aget v6, v1, v2

    add-int/2addr v6, v3

    aput v6, v1, v2

    .line 480
    add-int/2addr v0, v4

    goto :goto_d

    .line 482
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 483
    if-nez v5, :cond_2a

    const/4 v6, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    move v5, v6

    goto :goto_d

    .line 486
    :cond_2d
    array-length v6, v1

    if-eq v2, v6, :cond_3e

    if-eqz p3, :cond_34

    move v6, p2

    goto :goto_35

    :cond_34
    move v6, p1

    :goto_35
    if-ne v0, v6, :cond_3c

    array-length v6, v1

    sub-int/2addr v6, v3

    if-ne v2, v6, :cond_3c

    goto :goto_3e

    .line 491
    :cond_3c
    const/4 v3, 0x0

    return-object v3

    .line 489
    :cond_3e
    :goto_3e
    return-object v1
.end method

.method private static getNumberOfECCodeWords(I)I
    .registers 2
    .param p0, "barcodeECLevel"    # I

    .line 495
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .registers 17
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .line 213
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v0, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    move-object v8, v0

    .line 215
    .local v8, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_8
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4e

    .line 216
    if-nez v9, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    move v10, v0

    .line 217
    .local v10, "increment":I
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 218
    .local v0, "startColumn":I
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    move v4, v0

    move v5, v1

    .end local v0    # "startColumn":I
    .local v4, "startColumn":I
    .local v5, "imageRow":I
    :goto_1d
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_4b

    .line 219
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_4b

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 222
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_49

    .line 223
    invoke-virtual {v8, v5, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 224
    if-eqz p3, :cond_44

    .line 225
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    move v4, v0

    .end local v4    # "startColumn":I
    .restart local v0    # "startColumn":I
    goto :goto_49

    .line 227
    .end local v0    # "startColumn":I
    .restart local v4    # "startColumn":I
    :cond_44
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    move v4, v0

    .line 219
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_49
    :goto_49
    add-int/2addr v5, v10

    goto :goto_1d

    .line 215
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v10    # "increment":I
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 232
    .end local v9    # "i":I
    :cond_4e
    return-object v8
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .registers 12
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .line 372
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 373
    .local v0, "offset":I
    :goto_5
    const/4 v1, 0x0

    .line 374
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 375
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 377
    :cond_18
    if-eqz v1, :cond_26

    .line 378
    if-eqz p3, :cond_21

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    :goto_25
    return v2

    .line 380
    :cond_26
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_3c

    .line 382
    if-eqz p3, :cond_37

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    :goto_3b
    return v2

    .line 384
    :cond_3c
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 385
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 387
    :cond_4e
    if-eqz v1, :cond_5c

    .line 388
    if-eqz p3, :cond_57

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    goto :goto_5b

    :cond_57
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    :goto_5b
    return v2

    .line 390
    :cond_5c
    const/4 v2, 0x0

    .line 392
    .local v2, "skippedColumns":I
    :goto_5d
    sub-int v3, p1, v0

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 393
    sub-int/2addr p1, v0

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_70
    if-ge v5, v4, :cond_93

    aget-object v6, v3, v5

    .line 395
    .local v6, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v6, :cond_90

    .line 396
    if-eqz p3, :cond_7d

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v3

    goto :goto_81

    :cond_7d
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v3

    :goto_81
    mul-int v4, v0, v2

    .line 399
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    sub-int/2addr v5, v7

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    .line 396
    return v3

    .line 394
    .end local v6    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 402
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 404
    :cond_96
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz p3, :cond_a1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v3

    goto :goto_a5

    :cond_a1
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    :goto_a5
    return v3
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .registers 4
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .line 365
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .registers 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 132
    return-object v0

    .line 134
    :cond_6
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .line 135
    .local v1, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_d

    .line 136
    return-object v0

    .line 138
    :cond_d
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 139
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 138
    invoke-static {v0, v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 140
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    return-object v2
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .registers 11
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 616
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 617
    .local v0, "formatter":Ljava/util/Formatter;
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_6
    :try_start_6
    array-length v2, p0

    if-ge v1, v2, :cond_60

    .line 618
    const-string v2, "Row %2d: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 619
    const/4 v2, 0x0

    .local v2, "column":I
    :goto_19
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_56

    .line 620
    aget-object v3, p0, v1

    aget-object v3, v3, v2

    .line 621
    .local v3, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_33

    .line 622
    const-string v5, "        "

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_53

    .line 624
    :cond_33
    const-string v5, "%4d(%2d)"

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 625
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v6

    invoke-virtual {v3, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v6

    aput-object v8, v9, v4

    .line 624
    invoke-virtual {v0, v5, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 619
    .end local v3    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 628
    .end local v2    # "column":I
    :cond_56
    const-string v2, "%n"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 630
    .end local v1    # "row":I
    :cond_60
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_68

    .line 631
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 630
    return-object v1

    .line 616
    :catchall_68
    move-exception v1

    .end local v0    # "formatter":Ljava/util/Formatter;
    .end local p0    # "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :try_start_69
    throw v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 631
    .restart local v0    # "formatter":Ljava/util/Formatter;
    .restart local p0    # "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :catchall_6a
    move-exception v2

    :try_start_6b
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v3

    invoke-static {v1, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_73
    goto :goto_75

    :goto_74
    throw v2

    :goto_75
    goto :goto_74
.end method

.method private static verifyCodewordCount([II)V
    .registers 5
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 567
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1f

    .line 575
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 576
    .local v1, "numberOfCodewords":I
    array-length v2, p0

    if-gt v1, v2, :cond_1a

    .line 579
    if-nez v1, :cond_19

    .line 581
    array-length v2, p0

    if-ge p1, v2, :cond_14

    .line 582
    array-length v2, p0

    sub-int/2addr v2, p1

    aput v2, p0, v0

    goto :goto_19

    .line 584
    :cond_14
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 587
    :cond_19
    :goto_19
    return-void

    .line 577
    :cond_1a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 570
    .end local v1    # "numberOfCodewords":I
    :cond_1f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
