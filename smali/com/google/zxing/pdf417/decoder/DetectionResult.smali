.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 4
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .param p2, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 39
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 40
    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 4
    .param p1, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 55
    if-eqz p1, :cond_a

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 59
    :cond_a
    return-void
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .registers 5
    .param p0, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p1, "otherCodeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 234
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 235
    return v0

    .line 237
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 238
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 239
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_1d
    return v0
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .registers 4
    .param p0, "rowIndicatorRowNumber"    # I
    .param p1, "invalidRowCounts"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 176
    if-nez p2, :cond_3

    .line 177
    return p1

    .line 179
    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_16

    .line 180
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 182
    const/4 p1, 0x0

    goto :goto_16

    .line 184
    :cond_14
    add-int/lit8 p1, p1, 0x1

    .line 187
    :cond_16
    :goto_16
    return p1
.end method

.method private adjustRowNumbers()I
    .registers 6

    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v0

    .line 70
    .local v0, "unadjustedCount":I
    if-nez v0, :cond_8

    .line 71
    const/4 v1, 0x0

    return v1

    .line 73
    :cond_8
    const/4 v1, 0x1

    .local v1, "barcodeColumn":I
    :goto_9
    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_31

    .line 74
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 75
    .local v2, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_18
    array-length v4, v2

    if-ge v3, v4, :cond_2e

    .line 76
    aget-object v4, v2, v3

    if-nez v4, :cond_20

    .line 77
    goto :goto_2b

    .line 79
    :cond_20
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 80
    invoke-direct {p0, v1, v3, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 75
    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 73
    .end local v2    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "codewordsRow":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 84
    .end local v1    # "barcodeColumn":I
    :cond_31
    return v0
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .registers 13
    .param p1, "barcodeColumn"    # I
    .param p2, "codewordsRow"    # I
    .param p3, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 191
    aget-object v0, p3, p2

    .line 192
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 193
    .local v1, "previousColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v2, v1

    .line 194
    .local v2, "nextColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_1f

    .line 195
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 198
    :cond_1f
    const/16 v3, 0xe

    new-array v3, v3, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 200
    .local v3, "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v4, v1, p2

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 201
    const/4 v4, 0x3

    aget-object v6, v2, p2

    aput-object v6, v3, v4

    .line 203
    const/4 v4, 0x0

    if-lez p2, :cond_44

    .line 204
    add-int/lit8 v6, p2, -0x1

    aget-object v6, p3, v6

    aput-object v6, v3, v4

    .line 205
    add-int/lit8 v6, p2, -0x1

    aget-object v6, v1, v6

    const/4 v7, 0x4

    aput-object v6, v3, v7

    .line 206
    add-int/lit8 v6, p2, -0x1

    aget-object v6, v2, v6

    const/4 v7, 0x5

    aput-object v6, v3, v7

    .line 208
    :cond_44
    const/4 v6, 0x1

    if-le p2, v6, :cond_5f

    .line 209
    add-int/lit8 v7, p2, -0x2

    aget-object v7, p3, v7

    const/16 v8, 0x8

    aput-object v7, v3, v8

    .line 210
    add-int/lit8 v7, p2, -0x2

    aget-object v7, v1, v7

    const/16 v8, 0xa

    aput-object v7, v3, v8

    .line 211
    add-int/lit8 v7, p2, -0x2

    aget-object v7, v2, v7

    const/16 v8, 0xb

    aput-object v7, v3, v8

    .line 213
    :cond_5f
    array-length v7, p3

    sub-int/2addr v7, v6

    if-ge p2, v7, :cond_77

    .line 214
    add-int/lit8 v7, p2, 0x1

    aget-object v7, p3, v7

    aput-object v7, v3, v6

    .line 215
    add-int/lit8 v6, p2, 0x1

    aget-object v6, v1, v6

    const/4 v7, 0x6

    aput-object v6, v3, v7

    .line 216
    add-int/lit8 v6, p2, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x7

    aput-object v6, v3, v7

    .line 218
    :cond_77
    array-length v6, p3

    sub-int/2addr v6, v5

    if-ge p2, v6, :cond_93

    .line 219
    add-int/lit8 v5, p2, 0x2

    aget-object v5, p3, v5

    const/16 v6, 0x9

    aput-object v5, v3, v6

    .line 220
    add-int/lit8 v5, p2, 0x2

    aget-object v5, v1, v5

    const/16 v6, 0xc

    aput-object v5, v3, v6

    .line 221
    add-int/lit8 v5, p2, 0x2

    aget-object v5, v2, v5

    const/16 v6, 0xd

    aput-object v5, v3, v6

    .line 223
    :cond_93
    array-length v5, v3

    :goto_94
    if-ge v4, v5, :cond_a2

    aget-object v6, v3, v4

    .line 224
    .local v6, "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-static {v0, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 225
    return-void

    .line 223
    .end local v6    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 228
    :cond_a2
    return-void
.end method

.method private adjustRowNumbersByRow()I
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    .local v0, "unadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private adjustRowNumbersFromBothRI()V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_12

    goto :goto_73

    .line 101
    :cond_12
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    .local v0, "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 103
    .local v1, "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_27
    array-length v3, v0

    if-ge v2, v3, :cond_72

    .line 104
    aget-object v3, v0, v2

    if-eqz v3, :cond_6f

    aget-object v3, v1, v2

    if-eqz v3, :cond_6f

    aget-object v3, v0, v2

    .line 106
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    if-ne v3, v4, :cond_6f

    .line 107
    const/4 v3, 0x1

    .local v3, "barcodeColumn":I
    :goto_41
    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v3, v4, :cond_6f

    .line 108
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    aget-object v4, v4, v2

    .line 109
    .local v4, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v4, :cond_52

    .line 110
    goto :goto_6c

    .line 112
    :cond_52
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-nez v5, :cond_6c

    .line 114
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 107
    .end local v4    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_6c
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 103
    .end local v3    # "barcodeColumn":I
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 119
    .end local v2    # "codewordsRow":I
    :cond_72
    return-void

    .line 99
    .end local v0    # "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v1    # "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_73
    :goto_73
    return-void
.end method

.method private adjustRowNumbersFromLRI()I
    .registers 9

    .line 149
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    .line 150
    return v1

    .line 152
    :cond_8
    const/4 v0, 0x0

    .line 153
    .local v0, "unadjustedCount":I
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 154
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_49

    .line 155
    aget-object v3, v1, v2

    if-nez v3, :cond_1a

    .line 156
    goto :goto_46

    .line 158
    :cond_1a
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 159
    .local v3, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 160
    .local v4, "invalidRowCounts":I
    const/4 v5, 0x1

    .line 161
    .local v5, "barcodeColumn":I
    :goto_22
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_46

    const/4 v6, 0x2

    if-ge v4, v6, :cond_46

    .line 163
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v2

    .line 164
    .local v6, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v6, :cond_43

    .line 165
    invoke-static {v3, v4, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 166
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_43

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 162
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 154
    .end local v3    # "rowIndicatorRowNumber":I
    .end local v4    # "invalidRowCounts":I
    .end local v5    # "barcodeColumn":I
    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 172
    .end local v2    # "codewordsRow":I
    :cond_49
    return v0
.end method

.method private adjustRowNumbersFromRRI()I
    .registers 9

    .line 122
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_c

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_c
    const/4 v0, 0x0

    .line 126
    .local v0, "unadjustedCount":I
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 127
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_1a
    array-length v3, v1

    if-ge v2, v3, :cond_50

    .line 128
    aget-object v3, v1, v2

    if-nez v3, :cond_22

    .line 129
    goto :goto_4d

    .line 131
    :cond_22
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 132
    .local v3, "rowIndicatorRowNumber":I
    const/4 v4, 0x0

    .line 133
    .local v4, "invalidRowCounts":I
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v5, v5, 0x1

    .line 134
    .local v5, "barcodeColumn":I
    :goto_2d
    if-lez v5, :cond_4d

    const/4 v6, 0x2

    if-ge v4, v6, :cond_4d

    .line 136
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v2

    .line 137
    .local v6, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v6, :cond_4a

    .line 138
    invoke-static {v3, v4, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v4

    .line 139
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 135
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 127
    .end local v3    # "rowIndicatorRowNumber":I
    .end local v4    # "invalidRowCounts":I
    .end local v5    # "barcodeColumn":I
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 145
    .end local v2    # "codewordsRow":I
    :cond_50
    return v0
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .registers 2

    .line 245
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 3
    .param p1, "barcodeColumn"    # I

    .line 269
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 45
    const/16 v0, 0x3a0

    .line 48
    .local v0, "unadjustedCodewordCount":I
    :cond_15
    move v1, v0

    .line 49
    .local v1, "previousUnadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v0

    .line 50
    if-lez v0, :cond_1e

    if-lt v0, v1, :cond_15

    .line 51
    :cond_1e
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v2
.end method

.method setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 2
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 257
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 258
    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 4
    .param p1, "barcodeColumn"    # I
    .param p2, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 265
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 274
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 275
    .local v0, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 276
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 278
    :cond_f
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 279
    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v4, 0x0

    .local v4, "codewordsRow":I
    :goto_15
    :try_start_15
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_78

    .line 280
    const-string v5, "CW %3d:"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {v3, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 281
    const/4 v5, 0x0

    .local v5, "barcodeColumn":I
    :goto_2a
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_6e

    .line 282
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_80

    const-string v8, "    |   "

    if-nez v6, :cond_3e

    .line 283
    :try_start_38
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 284
    goto :goto_6b

    .line 286
    :cond_3e
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v4

    .line 287
    .local v6, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v6, :cond_50

    .line 288
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 289
    goto :goto_6b

    .line 291
    :cond_50
    const-string v8, " %3d|%3d"

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v1

    aput-object v10, v7, v2

    invoke-virtual {v3, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 281
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :goto_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 293
    .end local v5    # "barcodeColumn":I
    :cond_6e
    const-string v5, "%n"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 295
    .end local v4    # "codewordsRow":I
    :cond_78
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7c
    .catchall {:try_start_38 .. :try_end_7c} :catchall_80

    .line 296
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 295
    return-object v1

    .line 278
    :catchall_80
    move-exception v1

    .end local v0    # "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v3    # "formatter":Ljava/util/Formatter;
    :try_start_81
    throw v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .line 296
    .restart local v0    # "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v3    # "formatter":Ljava/util/Formatter;
    :catchall_82
    move-exception v2

    :try_start_83
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v4

    invoke-static {v1, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8b
    goto :goto_8d

    :goto_8c
    throw v2

    :goto_8d
    goto :goto_8c
.end method
