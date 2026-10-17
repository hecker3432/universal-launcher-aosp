.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .registers 3
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "isLeft"    # Z

    .line 30
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 31
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    .line 32
    return-void
.end method

.method private adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 16
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 130
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 131
    .local v1, "top":Lcom/google/zxing/ResultPoint;
    :goto_11
    iget-boolean v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 132
    .local v2, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_1e
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v3

    .line 133
    .local v3, "firstRow":I
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v4

    .line 135
    .local v4, "lastRow":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    .line 136
    .local v5, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v6, -0x1

    .line 137
    .local v6, "barcodeRow":I
    const/4 v7, 0x1

    .line 138
    .local v7, "maxRowHeight":I
    const/4 v8, 0x0

    .line 139
    .local v8, "currentRowHeight":I
    move v9, v3

    .local v9, "codewordsRow":I
    :goto_38
    if-ge v9, v4, :cond_71

    .line 140
    aget-object v10, v5, v9

    if-nez v10, :cond_3f

    .line 141
    goto :goto_6e

    .line 143
    :cond_3f
    aget-object v10, v5, v9

    .line 145
    .local v10, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 147
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    sub-int/2addr v11, v6

    .line 151
    .local v11, "rowDifference":I
    if-nez v11, :cond_4e

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 153
    :cond_4e
    const/4 v12, 0x1

    if-ne v11, v12, :cond_5b

    .line 154
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 155
    const/4 v8, 0x1

    .line 156
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    goto :goto_6e

    .line 157
    :cond_5b
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v13

    if-lt v12, v13, :cond_69

    .line 158
    const/4 v12, 0x0

    aput-object v12, v5, v9

    goto :goto_6e

    .line 160
    :cond_69
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    .line 161
    const/4 v8, 0x1

    .line 139
    .end local v10    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v11    # "rowDifference":I
    :goto_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 165
    .end local v9    # "codewordsRow":I
    :cond_71
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 10
    .param p1, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p2, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 217
    const/4 v0, 0x0

    .local v0, "codewordRow":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_58

    .line 218
    aget-object v1, p1, v0

    .line 219
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v2, p1, v0

    if-nez v2, :cond_b

    .line 220
    goto :goto_55

    .line 222
    :cond_b
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    .line 223
    .local v2, "rowIndicatorValue":I
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 224
    .local v3, "codewordRowNumber":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_1f

    .line 225
    aput-object v5, p1, v0

    .line 226
    goto :goto_55

    .line 228
    :cond_1f
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_25

    .line 229
    add-int/lit8 v3, v3, 0x2

    .line 231
    :cond_25
    rem-int/lit8 v4, v3, 0x3

    packed-switch v4, :pswitch_data_5a

    goto :goto_55

    .line 244
    :pswitch_2b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v6

    if-eq v4, v6, :cond_55

    .line 245
    aput-object v5, p1, v0

    goto :goto_55

    .line 238
    :pswitch_36
    div-int/lit8 v4, v2, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v6

    if-ne v4, v6, :cond_46

    rem-int/lit8 v4, v2, 0x3

    .line 239
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v6

    if-eq v4, v6, :cond_55

    .line 240
    :cond_46
    aput-object v5, p1, v0

    goto :goto_55

    .line 233
    :pswitch_49
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v6

    if-eq v4, v6, :cond_55

    .line 234
    aput-object v5, p1, v0

    .line 217
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "rowIndicatorValue":I
    .end local v3    # "codewordRowNumber":I
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "codewordRow":I
    :cond_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_49
        :pswitch_36
        :pswitch_2b
    .end packed-switch
.end method

.method private setRowNumbers()V
    .registers 5

    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 36
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v3, :cond_f

    .line 37
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 35
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 40
    :cond_12
    return-void
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 22
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 47
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 48
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 49
    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 51
    .local v3, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v4, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 52
    .local v4, "top":Lcom/google/zxing/ResultPoint;
    :goto_1f
    iget-boolean v5, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v5, :cond_28

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    goto :goto_2c

    :cond_28
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 53
    .local v5, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_2c
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v6

    .line 54
    .local v6, "firstRow":I
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v7

    .line 58
    .local v7, "lastRow":I
    const/4 v8, -0x1

    .line 59
    .local v8, "barcodeRow":I
    const/4 v9, 0x1

    .line 60
    .local v9, "maxRowHeight":I
    const/4 v10, 0x0

    .line 61
    .local v10, "currentRowHeight":I
    move v11, v6

    .local v11, "codewordsRow":I
    :goto_42
    if-ge v11, v7, :cond_ae

    .line 62
    aget-object v12, v1, v11

    if-nez v12, :cond_4a

    .line 63
    goto/16 :goto_ab

    .line 65
    :cond_4a
    aget-object v12, v1, v11

    .line 67
    .local v12, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v13

    sub-int/2addr v13, v8

    .line 71
    .local v13, "rowDifference":I
    if-nez v13, :cond_56

    .line 72
    add-int/lit8 v10, v10, 0x1

    goto :goto_ab

    .line 73
    :cond_56
    const/4 v14, 0x1

    if-ne v13, v14, :cond_63

    .line 74
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 75
    const/4 v10, 0x1

    .line 76
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    goto :goto_ab

    .line 77
    :cond_63
    if-ltz v13, :cond_a7

    .line 78
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v15

    if-ge v14, v15, :cond_a9

    if-le v13, v11, :cond_74

    goto :goto_a9

    .line 83
    :cond_74
    const/4 v14, 0x2

    if-le v9, v14, :cond_7c

    .line 84
    add-int/lit8 v14, v9, -0x2

    mul-int v14, v14, v13

    .local v14, "checkedRows":I
    goto :goto_7d

    .line 86
    .end local v14    # "checkedRows":I
    :cond_7c
    move v14, v13

    .line 88
    .restart local v14    # "checkedRows":I
    :goto_7d
    if-lt v14, v11, :cond_82

    const/16 v17, 0x1

    goto :goto_84

    :cond_82
    const/16 v17, 0x0

    .line 89
    .local v17, "closePreviousCodewordFound":Z
    :goto_84
    const/16 v18, 0x1

    move/from16 v15, v18

    .local v15, "i":I
    :goto_88
    if-gt v15, v14, :cond_9c

    if-nez v17, :cond_9c

    .line 92
    sub-int v19, v11, v15

    aget-object v19, v1, v19

    if-eqz v19, :cond_95

    const/16 v19, 0x1

    goto :goto_97

    :cond_95
    const/16 v19, 0x0

    :goto_97
    move/from16 v17, v19

    .line 89
    add-int/lit8 v15, v15, 0x1

    goto :goto_88

    .line 94
    .end local v15    # "i":I
    :cond_9c
    if-eqz v17, :cond_a1

    .line 95
    aput-object v16, v1, v11

    goto :goto_ab

    .line 97
    :cond_a1
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    .line 98
    const/4 v10, 0x1

    goto :goto_ab

    .line 77
    .end local v14    # "checkedRows":I
    .end local v17    # "closePreviousCodewordFound":Z
    :cond_a7
    const/16 v16, 0x0

    .line 80
    :cond_a9
    :goto_a9
    aput-object v16, v1, v11

    .line 61
    .end local v12    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "rowDifference":I
    :goto_ab
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    .line 103
    .end local v11    # "codewordsRow":I
    :cond_ae
    return-void
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 14

    .line 168
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 169
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 170
    .local v1, "barcodeColumnCount":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 171
    .local v2, "barcodeRowCountUpperPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 172
    .local v3, "barcodeRowCountLowerPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 173
    .local v4, "barcodeECLevel":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1b
    const/4 v8, 0x1

    if-ge v7, v5, :cond_57

    aget-object v9, v0, v7

    .line 174
    .local v9, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v9, :cond_23

    .line 175
    goto :goto_54

    .line 177
    :cond_23
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 178
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v10

    rem-int/lit8 v10, v10, 0x1e

    .line 179
    .local v10, "rowIndicatorValue":I
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    .line 180
    .local v11, "codewordRowNumber":I
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v12, :cond_36

    .line 181
    add-int/lit8 v11, v11, 0x2

    .line 183
    :cond_36
    rem-int/lit8 v12, v11, 0x3

    packed-switch v12, :pswitch_data_c0

    goto :goto_54

    .line 192
    :pswitch_3c
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v1, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_54

    .line 188
    :pswitch_42
    div-int/lit8 v8, v10, 0x3

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 189
    rem-int/lit8 v8, v10, 0x3

    invoke-virtual {v3, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 190
    goto :goto_54

    .line 185
    :pswitch_4d
    mul-int/lit8 v12, v10, 0x3

    add-int/2addr v12, v8

    invoke-virtual {v2, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 186
    nop

    .line 173
    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowIndicatorValue":I
    .end local v11    # "codewordRowNumber":I
    :goto_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 197
    :cond_57
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_be

    .line 198
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_be

    .line 199
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_be

    .line 200
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_be

    .line 201
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    if-lt v5, v8, :cond_be

    .line 202
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/4 v7, 0x3

    if-lt v5, v7, :cond_be

    .line 204
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_9d

    goto :goto_be

    .line 208
    :cond_9d
    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    .line 209
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v6

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    aget v6, v10, v6

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 210
    .local v5, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    invoke-direct {p0, v0, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 211
    return-object v5

    .line 206
    .end local v5    # "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_be
    :goto_be
    const/4 v5, 0x0

    return-object v5

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_42
        :pswitch_3c
    .end packed-switch
.end method

.method getRowHeights()[I
    .registers 9

    .line 106
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 107
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v0, :cond_8

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 110
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 111
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    new-array v1, v1, [I

    .line 112
    .local v1, "result":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2e

    aget-object v5, v2, v4

    .line 113
    .local v5, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v5, :cond_2b

    .line 114
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    .line 115
    .local v6, "rowNumber":I
    array-length v7, v1

    if-lt v6, v7, :cond_25

    .line 117
    goto :goto_2b

    .line 119
    :cond_25
    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6

    .line 112
    .end local v5    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "rowNumber":I
    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 122
    :cond_2e
    return-object v1
.end method

.method isLeft()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
