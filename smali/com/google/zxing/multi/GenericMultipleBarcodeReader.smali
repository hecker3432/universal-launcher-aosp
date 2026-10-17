.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 56
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .registers 29
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "currentDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .line 80
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object/from16 v1, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    const/4 v0, 0x4

    if-le v9, v0, :cond_c

    .line 81
    return-void

    .line 86
    :cond_c
    move-object/from16 v2, p0

    :try_start_e
    iget-object v0, v2, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v4, p2

    invoke-interface {v0, v1, v4}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/zxing/ReaderException; {:try_start_e .. :try_end_16} :catch_113

    .line 89
    .local v0, "result":Lcom/google/zxing/Result;
    nop

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "alreadyFound":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/Result;

    .line 92
    .local v8, "existingResult":Lcom/google/zxing/Result;
    invoke-virtual {v8}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 93
    const/4 v3, 0x1

    .line 94
    move v10, v3

    goto :goto_3b

    .line 96
    .end local v8    # "existingResult":Lcom/google/zxing/Result;
    :cond_39
    goto :goto_1c

    .line 91
    :cond_3a
    move v10, v3

    .line 97
    .end local v3    # "alreadyFound":Z
    .local v10, "alreadyFound":Z
    :goto_3b
    if-nez v10, :cond_47

    .line 98
    invoke-static {v0, v6, v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v3

    move-object/from16 v5, p3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 97
    :cond_47
    move-object/from16 v5, p3

    .line 100
    :goto_49
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 101
    .local v11, "resultPoints":[Lcom/google/zxing/ResultPoint;
    if-eqz v11, :cond_110

    array-length v3, v11

    if-nez v3, :cond_56

    move-object/from16 v16, v0

    goto/16 :goto_112

    .line 104
    :cond_56
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v12

    .line 105
    .local v12, "width":I
    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v13

    .line 106
    .local v13, "height":I
    int-to-float v3, v12

    .line 107
    .local v3, "minX":F
    int-to-float v8, v13

    .line 108
    .local v8, "minY":F
    const/4 v14, 0x0

    .line 109
    .local v14, "maxX":F
    const/4 v15, 0x0

    .line 110
    .local v15, "maxY":F
    move-object/from16 v16, v0

    .end local v0    # "result":Lcom/google/zxing/Result;
    .local v16, "result":Lcom/google/zxing/Result;
    array-length v0, v11

    move v9, v14

    move v14, v3

    move v3, v9

    move v9, v15

    move v15, v8

    move v8, v9

    const/4 v9, 0x0

    .local v3, "maxX":F
    .local v8, "maxY":F
    .local v14, "minX":F
    .local v15, "minY":F
    :goto_6c
    if-ge v9, v0, :cond_96

    aget-object v17, v11, v9

    .line 111
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    if-nez v17, :cond_73

    .line 112
    goto :goto_93

    .line 114
    :cond_73
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 115
    .local v18, "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 116
    .local v19, "y":F
    cmpg-float v20, v18, v14

    if-gez v20, :cond_81

    .line 117
    move/from16 v14, v18

    .line 119
    :cond_81
    cmpg-float v20, v19, v15

    if-gez v20, :cond_87

    .line 120
    move/from16 v15, v19

    .line 122
    :cond_87
    cmpl-float v20, v18, v3

    if-lez v20, :cond_8d

    .line 123
    move/from16 v3, v18

    .line 125
    :cond_8d
    cmpl-float v20, v19, v8

    if-lez v20, :cond_93

    .line 126
    move/from16 v8, v19

    .line 110
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_93
    :goto_93
    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    .line 131
    :cond_96
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v9, v14, v0

    if-lez v9, :cond_b1

    .line 132
    float-to-int v9, v14

    const/4 v0, 0x0

    const/high16 v17, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0, v0, v9, v13}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    move v0, v8

    .end local v8    # "maxY":F
    .local v0, "maxY":F
    add-int/lit8 v8, p6, 0x1

    move-object/from16 v21, v9

    move v9, v0

    move v0, v3

    move-object/from16 v3, v21

    .end local v3    # "maxX":F
    .local v0, "maxX":F
    .local v9, "maxY":F
    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_b5

    .line 131
    .end local v0    # "maxX":F
    .end local v9    # "maxY":F
    .restart local v3    # "maxX":F
    .restart local v8    # "maxY":F
    :cond_b1
    move v0, v3

    move v9, v8

    const/high16 v17, 0x42c80000    # 100.0f

    .line 138
    .end local v3    # "maxX":F
    .end local v8    # "maxY":F
    .restart local v0    # "maxX":F
    .restart local v9    # "maxY":F
    :goto_b5
    cmpl-float v2, v15, v17

    if-lez v2, :cond_cf

    .line 139
    float-to-int v2, v15

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v12, v2}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    add-int/lit8 v8, p6, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v3, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 145
    :cond_cf
    add-int/lit8 v2, v12, -0x64

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_ef

    .line 146
    float-to-int v2, v0

    float-to-int v3, v0

    sub-int v3, v12, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v13}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    float-to-int v2, v0

    add-int v6, p4, v2

    add-int/lit8 v8, p6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 152
    :cond_ef
    add-int/lit8 v2, v13, -0x64

    int-to-float v2, v2

    cmpg-float v2, v9, v2

    if-gez v2, :cond_10f

    .line 153
    float-to-int v2, v9

    float-to-int v3, v9

    sub-int v3, v13, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v12, v3}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    float-to-int v2, v9

    add-int v7, p5, v2

    add-int/lit8 v8, p6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 158
    :cond_10f
    return-void

    .line 101
    .end local v9    # "maxY":F
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "minX":F
    .end local v15    # "minY":F
    .end local v16    # "result":Lcom/google/zxing/Result;
    .local v0, "result":Lcom/google/zxing/Result;
    :cond_110
    move-object/from16 v16, v0

    .line 102
    .end local v0    # "result":Lcom/google/zxing/Result;
    .restart local v16    # "result":Lcom/google/zxing/Result;
    :goto_112
    return-void

    .line 87
    .end local v10    # "alreadyFound":Z
    .end local v11    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v16    # "result":Lcom/google/zxing/Result;
    :catch_113
    move-exception v0

    .line 88
    .local v0, "ignored":Lcom/google/zxing/ReaderException;
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .registers 13
    .param p0, "result"    # Lcom/google/zxing/Result;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .line 161
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 162
    .local v0, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    if-nez v0, :cond_7

    .line 163
    return-object p0

    .line 165
    :cond_7
    array-length v1, v0

    new-array v6, v1, [Lcom/google/zxing/ResultPoint;

    .line 166
    .local v6, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 167
    aget-object v2, v0, v1

    .line 168
    .local v2, "oldPoint":Lcom/google/zxing/ResultPoint;
    if-eqz v2, :cond_25

    .line 169
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    int-to-float v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    int-to-float v7, p2

    add-float/2addr v5, v7

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v6, v1

    .line 166
    .end local v2    # "oldPoint":Lcom/google/zxing/ResultPoint;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 172
    .end local v1    # "i":I
    :cond_28
    new-instance v2, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v4

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    move-result v5

    .line 176
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    .line 177
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 178
    .local v2, "newResult":Lcom/google/zxing/Result;
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 179
    return-object v2
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .registers 11
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 66
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 67
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "image":Lcom/google/zxing/BinaryBitmap;
    .end local p2    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v2, "image":Lcom/google/zxing/BinaryBitmap;
    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 68
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 71
    sget-object p1, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/Result;

    return-object p1

    .line 69
    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
