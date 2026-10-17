.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .registers 10
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I
    .param p2, "totalWords"    # I

    .line 346
    new-array v0, p2, [I

    .line 349
    .local v0, "message":[I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    div-int/2addr v2, p1

    .local v2, "n":I
    :goto_8
    if-ge v1, v2, :cond_28

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, "value":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_c
    if-ge v4, p1, :cond_23

    .line 352
    mul-int v5, v1, p1

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    sub-int v5, p1, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int v5, v6, v5

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    or-int/2addr v3, v5

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 354
    .end local v4    # "j":I
    :cond_23
    aput v3, v0, v1

    .line 349
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 356
    :cond_28
    return-object v0
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .registers 6
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "center"    # I
    .param p2, "size"    # I

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_23

    .line 263
    sub-int v1, p1, v0

    .local v1, "j":I
    :goto_5
    add-int v2, p1, v0

    if-gt v1, v2, :cond_20

    .line 264
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 265
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 266
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 267
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 262
    .end local v1    # "j":I
    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 270
    .end local v0    # "i":I
    :cond_23
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 271
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 272
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 273
    add-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 274
    add-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 275
    add-int v0, p1, p2

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 276
    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "compact"    # Z
    .param p2, "matrixSize"    # I
    .param p3, "modeMessage"    # Lcom/google/zxing/common/BitArray;

    .line 293
    div-int/lit8 v0, p2, 0x2

    .line 294
    .local v0, "center":I
    if-eqz p1, :cond_41

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_40

    .line 296
    add-int/lit8 v2, v0, -0x3

    add-int/2addr v2, v1

    .line 297
    .local v2, "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 298
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 300
    :cond_16
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 301
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 303
    :cond_23
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 304
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 306
    :cond_30
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 307
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 295
    .end local v2    # "offset":I
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_40
    goto :goto_81

    .line 311
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_42
    const/16 v2, 0xa

    if-ge v1, v2, :cond_81

    .line 312
    add-int/lit8 v2, v0, -0x5

    add-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    .line 313
    .restart local v2    # "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 314
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 316
    :cond_57
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 317
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 319
    :cond_64
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 320
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 322
    :cond_71
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 323
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 311
    .end local v2    # "offset":I
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 327
    .end local v1    # "i":I
    :cond_81
    :goto_81
    return-void
.end method

.method public static encode(Ljava/lang/String;)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .line 54
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;II)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I

    .line 67
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 83
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 84
    .local v0, "bytes":[B
    invoke-static {v0, p1, p2, p3}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v1

    return-object v1
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 4
    .param p0, "data"    # [B

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-static {p0, v2, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I

    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 30
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 123
    new-instance v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 126
    .local v0, "bits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    mul-int v3, v3, p1

    div-int/lit8 v3, v3, 0x64

    const/16 v4, 0xb

    add-int/2addr v3, v4

    .line 127
    .local v3, "eccBits":I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    add-int/2addr v5, v3

    .line 133
    .local v5, "totalSizeBits":I
    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_77

    .line 134
    if-gez p2, :cond_27

    const/4 v10, 0x1

    goto :goto_28

    :cond_27
    const/4 v10, 0x0

    .line 135
    .local v10, "compact":Z
    :goto_28
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 136
    .local v11, "layers":I
    if-eqz v10, :cond_2f

    const/4 v6, 0x4

    :cond_2f
    if-gt v11, v6, :cond_63

    .line 140
    invoke-static {v11, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v6

    .line 141
    .local v6, "totalBitsInLayer":I
    sget-object v7, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v7, v7, v11

    .line 142
    .local v7, "wordSize":I
    rem-int v12, v6, v7

    sub-int v12, v6, v12

    .line 143
    .local v12, "usableBitsInLayers":I
    invoke-static {v0, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v13

    .line 144
    .local v13, "stuffedBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    add-int/2addr v14, v3

    const-string v15, "Data to large for user specified layer"

    if-gt v14, v12, :cond_5d

    .line 147
    if-eqz v10, :cond_5b

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    mul-int/lit8 v4, v7, 0x40

    if-gt v14, v4, :cond_55

    goto :goto_5b

    .line 149
    :cond_55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    .end local v12    # "usableBitsInLayers":I
    :cond_5b
    :goto_5b
    goto/16 :goto_cc

    .line 145
    .restart local v12    # "usableBitsInLayers":I
    :cond_5d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v6    # "totalBitsInLayer":I
    .end local v7    # "wordSize":I
    .end local v12    # "usableBitsInLayers":I
    .end local v13    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_63
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 138
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v7

    const-string v6, "Illegal value %s for layers"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    .end local v10    # "compact":Z
    .end local v11    # "layers":I
    :cond_77
    const/4 v4, 0x0

    .line 153
    .local v4, "wordSize":I
    const/4 v10, 0x0

    .line 157
    .local v10, "stuffedBits":Lcom/google/zxing/common/BitArray;
    const/4 v11, 0x0

    .line 158
    .local v11, "i":I
    :goto_7a
    if-gt v11, v6, :cond_282

    .line 161
    const/4 v12, 0x3

    if-gt v11, v12, :cond_81

    const/4 v12, 0x1

    goto :goto_82

    :cond_81
    const/4 v12, 0x0

    .line 162
    .local v12, "compact":Z
    :goto_82
    if-eqz v12, :cond_87

    add-int/lit8 v13, v11, 0x1

    goto :goto_88

    :cond_87
    move v13, v11

    .line 163
    .local v13, "layers":I
    :goto_88
    invoke-static {v13, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v14

    .line 164
    .local v14, "totalBitsInLayer":I
    if-le v5, v14, :cond_98

    .line 165
    move-object/from16 v21, v0

    move/from16 v22, v3

    const/16 v19, 0x4

    const/16 v20, 0x1

    goto/16 :goto_272

    .line 169
    :cond_98
    if-eqz v10, :cond_a0

    sget-object v15, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v15, v15, v13

    if-eq v4, v15, :cond_a8

    .line 170
    :cond_a0
    sget-object v15, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v4, v15, v13

    .line 171
    invoke-static {v0, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v10

    .line 173
    :cond_a8
    rem-int v15, v14, v4

    sub-int v15, v14, v15

    .line 174
    .local v15, "usableBitsInLayers":I
    if-eqz v12, :cond_c0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    mul-int/lit8 v7, v4, 0x40

    if-le v6, v7, :cond_c0

    .line 176
    move-object/from16 v21, v0

    move/from16 v22, v3

    const/16 v19, 0x4

    const/16 v20, 0x1

    goto/16 :goto_272

    .line 178
    :cond_c0
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/2addr v6, v3

    if-gt v6, v15, :cond_26a

    .line 179
    move v7, v4

    move v11, v13

    move v6, v14

    move-object v13, v10

    move v10, v12

    .line 183
    .end local v4    # "wordSize":I
    .end local v12    # "compact":Z
    .end local v14    # "totalBitsInLayer":I
    .end local v15    # "usableBitsInLayers":I
    .restart local v6    # "totalBitsInLayer":I
    .restart local v7    # "wordSize":I
    .local v10, "compact":Z
    .local v11, "layers":I
    .local v13, "stuffedBits":Lcom/google/zxing/common/BitArray;
    :goto_cc
    invoke-static {v13, v6, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    .line 186
    .local v4, "messageBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    div-int/2addr v12, v7

    .line 187
    .local v12, "messageSizeInWords":I
    invoke-static {v10, v11, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v14

    .line 190
    .local v14, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz v10, :cond_de

    const/16 v15, 0xb

    goto :goto_e0

    :cond_de
    const/16 v15, 0xe

    :goto_e0
    mul-int/lit8 v16, v11, 0x4

    add-int v15, v15, v16

    .line 191
    .local v15, "baseMatrixSize":I
    const/16 v19, 0x4

    new-array v8, v15, [I

    .line 193
    .local v8, "alignmentMap":[I
    const/16 v20, 0x1

    if-eqz v10, :cond_103

    .line 195
    move/from16 v16, v15

    .line 196
    .local v16, "matrixSize":I
    const/16 v17, 0x0

    move/from16 v9, v17

    const/16 v18, 0x2

    .local v9, "i":I
    :goto_f4
    move-object/from16 v21, v0

    .end local v0    # "bits":Lcom/google/zxing/common/BitArray;
    .local v21, "bits":Lcom/google/zxing/common/BitArray;
    array-length v0, v8

    if-ge v9, v0, :cond_100

    .line 197
    aput v9, v8, v9

    .line 196
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v21

    goto :goto_f4

    :cond_100
    move/from16 v0, v16

    .end local v9    # "i":I
    goto :goto_138

    .line 200
    .end local v16    # "matrixSize":I
    .end local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v0    # "bits":Lcom/google/zxing/common/BitArray;
    :cond_103
    move-object/from16 v21, v0

    const/16 v18, 0x2

    .end local v0    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v21    # "bits":Lcom/google/zxing/common/BitArray;
    add-int/lit8 v0, v15, 0x1

    div-int/lit8 v9, v15, 0x2

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0xf

    mul-int/lit8 v9, v9, 0x2

    add-int v16, v0, v9

    .line 201
    .restart local v16    # "matrixSize":I
    div-int/lit8 v0, v15, 0x2

    .line 202
    .local v0, "origCenter":I
    div-int/lit8 v9, v16, 0x2

    .line 203
    .local v9, "center":I
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i":I
    :goto_11b
    if-ge v1, v0, :cond_136

    .line 204
    div-int/lit8 v17, v1, 0xf

    add-int v17, v1, v17

    .line 205
    .local v17, "newOffset":I
    sub-int v22, v0, v1

    add-int/lit8 v22, v22, -0x1

    sub-int v23, v9, v17

    add-int/lit8 v23, v23, -0x1

    aput v23, v8, v22

    .line 206
    add-int v22, v0, v1

    add-int v23, v9, v17

    add-int/lit8 v23, v23, 0x1

    aput v23, v8, v22

    .line 203
    .end local v17    # "newOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11b

    :cond_136
    move/from16 v0, v16

    .line 209
    .end local v1    # "i":I
    .end local v9    # "center":I
    .end local v16    # "matrixSize":I
    .local v0, "matrixSize":I
    :goto_138
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 212
    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v9, 0x0

    .local v9, "i":I
    const/16 v16, 0x0

    .local v16, "rowOffset":I
    :goto_140
    if-ge v9, v11, :cond_20a

    .line 213
    sub-int v17, v11, v9

    mul-int/lit8 v17, v17, 0x4

    if-eqz v10, :cond_14b

    const/16 v22, 0x9

    goto :goto_14d

    :cond_14b
    const/16 v22, 0xc

    :goto_14d
    add-int v2, v17, v22

    .line 214
    .local v2, "rowSize":I
    const/16 v17, 0x0

    move/from16 v22, v3

    move/from16 v3, v17

    .local v3, "j":I
    .local v22, "eccBits":I
    :goto_155
    if-ge v3, v2, :cond_1f8

    .line 215
    mul-int/lit8 v17, v3, 0x2

    .line 216
    .local v17, "columnOffset":I
    const/16 v23, 0x0

    move/from16 v24, v2

    move/from16 v2, v23

    .local v2, "k":I
    .local v24, "rowSize":I
    :goto_15f
    move/from16 v23, v3

    const/4 v3, 0x2

    .end local v3    # "j":I
    .local v23, "j":I
    if-ge v2, v3, :cond_1ee

    .line 217
    add-int v18, v16, v17

    add-int v3, v18, v2

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 218
    mul-int/lit8 v3, v9, 0x2

    add-int/2addr v3, v2

    aget v3, v8, v3

    mul-int/lit8 v18, v9, 0x2

    add-int v18, v18, v23

    move/from16 v25, v2

    .end local v2    # "k":I
    .local v25, "k":I
    aget v2, v8, v18

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_181

    .line 217
    .end local v25    # "k":I
    .restart local v2    # "k":I
    :cond_17f
    move/from16 v25, v2

    .line 220
    .end local v2    # "k":I
    .restart local v25    # "k":I
    :goto_181
    mul-int/lit8 v2, v24, 0x2

    add-int v2, v16, v2

    add-int v2, v2, v17

    add-int v2, v2, v25

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 221
    mul-int/lit8 v2, v9, 0x2

    add-int v2, v2, v23

    aget v2, v8, v2

    add-int/lit8 v3, v15, -0x1

    mul-int/lit8 v18, v9, 0x2

    sub-int v3, v3, v18

    sub-int v3, v3, v25

    aget v3, v8, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 223
    :cond_1a2
    mul-int/lit8 v2, v24, 0x4

    add-int v2, v16, v2

    add-int v2, v2, v17

    add-int v2, v2, v25

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 224
    add-int/lit8 v2, v15, -0x1

    mul-int/lit8 v3, v9, 0x2

    sub-int/2addr v2, v3

    sub-int v2, v2, v25

    aget v2, v8, v2

    add-int/lit8 v3, v15, -0x1

    mul-int/lit8 v18, v9, 0x2

    sub-int v3, v3, v18

    sub-int v3, v3, v23

    aget v3, v8, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 226
    :cond_1c6
    mul-int/lit8 v2, v24, 0x6

    add-int v2, v16, v2

    add-int v2, v2, v17

    add-int v2, v2, v25

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 227
    add-int/lit8 v2, v15, -0x1

    mul-int/lit8 v3, v9, 0x2

    sub-int/2addr v2, v3

    sub-int v2, v2, v23

    aget v2, v8, v2

    mul-int/lit8 v3, v9, 0x2

    add-int v3, v3, v25

    aget v3, v8, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 216
    :cond_1e6
    add-int/lit8 v2, v25, 0x1

    move/from16 v3, v23

    const/16 v18, 0x2

    .end local v25    # "k":I
    .restart local v2    # "k":I
    goto/16 :goto_15f

    :cond_1ee
    move/from16 v25, v2

    .line 214
    .end local v2    # "k":I
    .end local v17    # "columnOffset":I
    add-int/lit8 v3, v23, 0x1

    move/from16 v2, v24

    const/16 v18, 0x2

    .end local v23    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_155

    .end local v24    # "rowSize":I
    .local v2, "rowSize":I
    :cond_1f8
    move/from16 v24, v2

    move/from16 v23, v3

    .line 231
    .end local v2    # "rowSize":I
    .end local v3    # "j":I
    .restart local v24    # "rowSize":I
    mul-int/lit8 v2, v24, 0x8

    add-int v16, v16, v2

    .line 212
    .end local v24    # "rowSize":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move/from16 v3, v22

    const/16 v18, 0x2

    goto/16 :goto_140

    .end local v22    # "eccBits":I
    .local v3, "eccBits":I
    :cond_20a
    move/from16 v22, v3

    .line 235
    .end local v3    # "eccBits":I
    .end local v9    # "i":I
    .end local v16    # "rowOffset":I
    .restart local v22    # "eccBits":I
    invoke-static {v1, v10, v0, v14}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 238
    if-eqz v10, :cond_218

    .line 239
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_255

    .line 241
    :cond_218
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 242
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_220
    div-int/lit8 v9, v15, 0x2

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_253

    .line 243
    div-int/lit8 v9, v0, 0x2

    and-int/lit8 v9, v9, 0x1

    .local v9, "k":I
    :goto_22a
    if-ge v9, v0, :cond_24c

    .line 244
    div-int/lit8 v16, v0, 0x2

    move/from16 v17, v2

    .end local v2    # "i":I
    .local v17, "i":I
    sub-int v2, v16, v3

    invoke-virtual {v1, v2, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 245
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 246
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 247
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 243
    add-int/lit8 v9, v9, 0x2

    move/from16 v2, v17

    goto :goto_22a

    .end local v17    # "i":I
    .restart local v2    # "i":I
    :cond_24c
    move/from16 v17, v2

    .line 242
    .end local v2    # "i":I
    .end local v9    # "k":I
    .restart local v17    # "i":I
    add-int/lit8 v2, v17, 0xf

    .end local v17    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v3, v3, 0x10

    goto :goto_220

    :cond_253
    move/from16 v17, v2

    .line 252
    .end local v2    # "i":I
    .end local v3    # "j":I
    :goto_255
    new-instance v2, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v2}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 253
    .local v2, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    invoke-virtual {v2, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 254
    invoke-virtual {v2, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 255
    invoke-virtual {v2, v11}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 256
    invoke-virtual {v2, v12}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 257
    invoke-virtual {v2, v1}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 258
    return-object v2

    .line 178
    .end local v1    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    .end local v6    # "totalBitsInLayer":I
    .end local v7    # "wordSize":I
    .end local v8    # "alignmentMap":[I
    .end local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v22    # "eccBits":I
    .local v0, "bits":Lcom/google/zxing/common/BitArray;
    .local v3, "eccBits":I
    .local v4, "wordSize":I
    .local v10, "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v11, "i":I
    .local v12, "compact":Z
    .local v13, "layers":I
    .local v14, "totalBitsInLayer":I
    .local v15, "usableBitsInLayers":I
    :cond_26a
    move-object/from16 v21, v0

    move/from16 v22, v3

    const/16 v19, 0x4

    const/16 v20, 0x1

    .line 157
    .end local v0    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v3    # "eccBits":I
    .end local v15    # "usableBitsInLayers":I
    .restart local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v22    # "eccBits":I
    :goto_272
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, v21

    move/from16 v3, v22

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7a

    .line 159
    .end local v12    # "compact":Z
    .end local v13    # "layers":I
    .end local v14    # "totalBitsInLayer":I
    .end local v21    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v22    # "eccBits":I
    .restart local v0    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v3    # "eccBits":I
    :cond_282
    move-object/from16 v21, v0

    .end local v0    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v21    # "bits":Lcom/google/zxing/common/BitArray;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_28d

    :goto_28c
    throw v0

    :goto_28d
    goto :goto_28c
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .registers 12
    .param p0, "bitArray"    # Lcom/google/zxing/common/BitArray;
    .param p1, "totalBits"    # I
    .param p2, "wordSize"    # I

    .line 331
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    .line 332
    .local v0, "messageSizeInWords":I
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 333
    .local v1, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v2, p1, p2

    .line 334
    .local v2, "totalWords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    .line 335
    .local v3, "messageWords":[I
    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 336
    rem-int v4, p1, p2

    .line 337
    .local v4, "startPad":I
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 338
    .local v5, "messageBits":Lcom/google/zxing/common/BitArray;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 339
    array-length v7, v3

    :goto_25
    if-ge v6, v7, :cond_2f

    aget v8, v3, v6

    .line 340
    .local v8, "messageWord":I
    invoke-virtual {v5, v8, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 339
    .end local v8    # "messageWord":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 342
    :cond_2f
    return-object v5
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .registers 7
    .param p0, "compact"    # Z
    .param p1, "layers"    # I
    .param p2, "messageSizeInWords"    # I

    .line 279
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 280
    .local v0, "modeMessage":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x4

    if-eqz p0, :cond_1b

    .line 281
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 282
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 283
    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_2e

    .line 285
    :cond_1b
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 286
    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 287
    const/16 v2, 0x28

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 289
    :goto_2e
    return-object v0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .registers 4
    .param p0, "wordSize"    # I

    .line 360
    packed-switch p0, :pswitch_data_2c

    .line 372
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported word size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :pswitch_1c
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 368
    :pswitch_1f
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 366
    :pswitch_22
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 364
    :pswitch_25
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 362
    :pswitch_28
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_28
        :pswitch_3
        :pswitch_25
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .registers 10
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I

    .line 377
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 379
    .local v0, "out":Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 380
    .local v1, "n":I
    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    .line 381
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v1, :cond_47

    .line 382
    const/4 v5, 0x0

    .line 383
    .local v5, "word":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_13
    if-ge v6, p1, :cond_2a

    .line 384
    add-int v7, v4, v6

    if-ge v7, v1, :cond_21

    add-int v7, v4, v6

    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 385
    :cond_21
    add-int/lit8 v7, p1, -0x1

    sub-int/2addr v7, v6

    shl-int v7, v2, v7

    or-int/2addr v5, v7

    .line 383
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 388
    .end local v6    # "j":I
    :cond_2a
    and-int v6, v5, v3

    if-ne v6, v3, :cond_36

    .line 389
    and-int v6, v5, v3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 390
    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 391
    :cond_36
    and-int v6, v5, v3

    if-nez v6, :cond_42

    .line 392
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 393
    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 395
    :cond_42
    invoke-virtual {v0, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 381
    .end local v5    # "word":I
    :goto_45
    add-int/2addr v4, p1

    goto :goto_f

    .line 398
    .end local v4    # "i":I
    :cond_47
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 4
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 402
    if-eqz p1, :cond_5

    const/16 v0, 0x58

    goto :goto_7

    :cond_5
    const/16 v0, 0x70

    :goto_7
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int v0, v0, p0

    return v0
.end method
