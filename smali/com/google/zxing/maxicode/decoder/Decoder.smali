.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final ALL:I = 0x0

.field private static final EVEN:I = 0x1

.field private static final ODD:I = 0x2


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 46
    return-void
.end method

.method private correctErrors([BIIII)I
    .registers 13
    .param p1, "codewordBytes"    # [B
    .param p2, "start"    # I
    .param p3, "dataCodewords"    # I
    .param p4, "ecCodewords"    # I
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 90
    add-int v0, p3, p4

    .line 93
    .local v0, "codewords":I
    if-nez p5, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    .line 96
    .local v1, "divisor":I
    :goto_7
    div-int v2, v0, v1

    new-array v2, v2, [I

    .line 97
    .local v2, "codewordsInts":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_23

    .line 98
    if-eqz p5, :cond_16

    rem-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, p5, -0x1

    if-ne v4, v5, :cond_20

    .line 99
    :cond_16
    div-int v4, v3, v1

    add-int v5, v3, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v4

    .line 97
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 102
    .end local v3    # "i":I
    :cond_23
    const/4 v3, 0x0

    .line 104
    .local v3, "errorsCorrected":I
    :try_start_24
    iget-object v4, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    div-int v5, p4, v1

    invoke-virtual {v4, v2, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I

    move-result v4
    :try_end_2c
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_24 .. :try_end_2c} :catch_45

    .line 107
    .end local v3    # "errorsCorrected":I
    .local v4, "errorsCorrected":I
    nop

    .line 110
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, p3, :cond_44

    .line 111
    if-eqz p5, :cond_38

    rem-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_41

    .line 112
    :cond_38
    add-int v5, v3, p2

    div-int v6, v3, v1

    aget v6, v2, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 110
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 115
    .end local v3    # "i":I
    :cond_44
    return v4

    .line 105
    .end local v4    # "errorsCorrected":I
    .local v3, "errorsCorrected":I
    :catch_45
    move-exception v4

    .line 106
    .local v4, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    goto :goto_4c

    :goto_4b
    throw v5

    :goto_4c
    goto :goto_4b
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 3
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 13
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 55
    .local v0, "parser":Lcom/google/zxing/maxicode/decoder/BitMatrixParser;
    invoke-virtual {v0}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 57
    .local v2, "codewords":[B
    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)I

    move-result v7

    .line 58
    .local v7, "errorsCorrected":I
    const/4 v8, 0x0

    aget-byte v1, v2, v8

    and-int/lit8 v9, v1, 0xf

    .line 60
    .local v9, "mode":I
    packed-switch v9, :pswitch_data_6e

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 69
    :pswitch_21
    const/16 v5, 0x38

    const/4 v6, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x44

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)I

    move-result v3

    add-int/2addr v7, v3

    .line 70
    const/4 v6, 0x2

    const/16 v3, 0x14

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)I

    move-result v3

    add-int/2addr v7, v3

    .line 71
    const/16 v1, 0x4e

    new-array v1, v1, [B

    .line 72
    .local v1, "datawords":[B
    goto :goto_55

    .line 64
    .end local v1    # "datawords":[B
    :pswitch_3b
    const/16 v5, 0x28

    const/4 v6, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x54

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)I

    move-result v3

    add-int/2addr v7, v3

    .line 65
    const/4 v6, 0x2

    const/16 v3, 0x14

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)I

    move-result v3

    add-int/2addr v7, v3

    .line 66
    const/16 v1, 0x5e

    new-array v1, v1, [B

    .line 67
    .restart local v1    # "datawords":[B
    nop

    .line 77
    :goto_55
    const/16 v3, 0xa

    invoke-static {v2, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v4, v1

    sub-int/2addr v4, v3

    const/16 v5, 0x14

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {v1, v9}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->decode([BI)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    .line 81
    .local v3, "result":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 82
    return-object v3

    nop

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_21
    .end packed-switch
.end method
