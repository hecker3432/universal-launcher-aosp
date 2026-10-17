.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 19
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 60
    .local v2, "notFoundException":Lcom/google/zxing/NotFoundException;
    const/4 v3, 0x0

    .line 61
    .local v3, "formatException":Lcom/google/zxing/FormatException;
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v4, v0

    .line 62
    .local v4, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/4 v5, 0x0

    .line 63
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    .line 64
    .local v6, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/4 v7, 0x0

    .line 66
    .local v7, "errorsCorrected":I
    const/4 v8, 0x0

    :try_start_12
    invoke-virtual {v4, v8}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    .line 67
    .local v0, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    move-object v5, v9

    .line 68
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getErrorsCorrected()I

    move-result v9

    move v7, v9

    .line 69
    new-instance v9, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v9}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v9
    :try_end_29
    .catch Lcom/google/zxing/NotFoundException; {:try_start_12 .. :try_end_29} :catch_2e
    .catch Lcom/google/zxing/FormatException; {:try_start_12 .. :try_end_29} :catch_2b

    move-object v6, v9

    .end local v0    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    goto :goto_30

    .line 72
    :catch_2b
    move-exception v0

    .line 73
    .local v0, "e":Lcom/google/zxing/FormatException;
    move-object v3, v0

    goto :goto_31

    .line 70
    .end local v0    # "e":Lcom/google/zxing/FormatException;
    :catch_2e
    move-exception v0

    .line 71
    .local v0, "e":Lcom/google/zxing/NotFoundException;
    move-object v2, v0

    .line 74
    .end local v0    # "e":Lcom/google/zxing/NotFoundException;
    :goto_30
    nop

    .line 75
    :goto_31
    if-nez v6, :cond_58

    .line 77
    const/4 v0, 0x1

    :try_start_34
    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    .line 78
    .local v0, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    move-object v5, v9

    .line 79
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getErrorsCorrected()I

    move-result v9

    move v7, v9

    .line 80
    new-instance v9, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v9}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v9
    :try_end_4b
    .catch Lcom/google/zxing/NotFoundException; {:try_start_34 .. :try_end_4b} :catch_50
    .catch Lcom/google/zxing/FormatException; {:try_start_34 .. :try_end_4b} :catch_4e

    move-object v6, v9

    .line 89
    .end local v0    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v12, v5

    goto :goto_59

    .line 81
    :catch_4e
    move-exception v0

    goto :goto_51

    :catch_50
    move-exception v0

    .line 82
    .local v0, "e":Lcom/google/zxing/ReaderException;
    :goto_51
    if-nez v2, :cond_57

    .line 85
    if-eqz v3, :cond_56

    .line 86
    throw v3

    .line 88
    :cond_56
    throw v0

    .line 83
    :cond_57
    throw v2

    .line 75
    .end local v0    # "e":Lcom/google/zxing/ReaderException;
    :cond_58
    move-object v12, v5

    .line 92
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .local v12, "points":[Lcom/google/zxing/ResultPoint;
    :goto_59
    if-eqz v1, :cond_70

    .line 93
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    .line 94
    .local v0, "rpcb":Lcom/google/zxing/ResultPointCallback;
    if-eqz v0, :cond_70

    .line 95
    array-length v5, v12

    :goto_66
    if-ge v8, v5, :cond_70

    aget-object v9, v12, v8

    .line 96
    .local v9, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v0, v9}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 95
    .end local v9    # "point":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 101
    .end local v0    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_70
    new-instance v8, Lcom/google/zxing/Result;

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v10

    .line 103
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v11

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct/range {v8 .. v15}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 108
    .local v8, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v0, :cond_92

    .line 110
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, v5, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 112
    :cond_92
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "ecLevel":Ljava/lang/String;
    if-eqz v5, :cond_9d

    .line 114
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, v9, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 116
    :cond_9d
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getErrorsCorrected()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v7, v9

    .line 117
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 118
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "]z"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getSymbologyModifier()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 120
    return-object v8
.end method

.method public reset()V
    .registers 1

    .line 126
    return-void
.end method
