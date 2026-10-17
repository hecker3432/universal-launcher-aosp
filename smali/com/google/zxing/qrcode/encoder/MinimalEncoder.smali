.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    }
.end annotation


# instance fields
.field private final ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private final encoders:Lcom/google/zxing/common/ECIEncoderSet;

.field private final isGS1:Z

.field private final stringToEncode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .registers 7
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "isGS1"    # Z
    .param p4, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    .line 96
    new-instance v0, Lcom/google/zxing/common/ECIEncoderSet;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 97
    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 98
    return-void
.end method

.method static synthetic access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 58
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 58
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/ECIEncoderSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 58
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 58
    iget-boolean v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    return v0
.end method

.method static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .registers 6
    .param p0, "stringToEncode"    # Ljava/lang/String;
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "isGS1"    # Z
    .param p4, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encode(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v0

    return-object v0
.end method

.method static getCompactedOrdinal(Lcom/google/zxing/qrcode/decoder/Mode;)I
    .registers 4
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;

    .line 194
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 195
    return v0

    .line 197
    :cond_4
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_28
    const/4 v0, 0x3

    return v0

    .line 203
    :pswitch_2a
    const/4 v0, 0x2

    return v0

    .line 201
    :pswitch_2c
    const/4 v0, 0x1

    return v0

    .line 199
    :pswitch_2e
    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
    .end packed-switch
.end method

.method static getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 3
    .param p0, "versionSize"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 158
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$encoder$MinimalEncoder$VersionSize:[I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 165
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_12
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_19
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method static getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .registers 3
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_b

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_18

    :cond_b
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_16

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_18

    :cond_16
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    :goto_18
    return-object v0
.end method

.method static isAlphanumeric(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 178
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static isDoubleByteKanji(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 174
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isNumeric(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 170
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .registers 9
    .param p1, "edges"    # [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .param p2, "position"    # I
    .param p3, "edge"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 212
    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v0

    add-int/2addr v0, p2

    .line 213
    .local v0, "vertexIndex":I
    aget-object v1, p1, v0

    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v2

    aget-object v1, v1, v2

    .line 214
    .local v1, "modeEdges":[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getCompactedOrdinal(Lcom/google/zxing/qrcode/decoder/Mode;)I

    move-result v2

    .line 215
    .local v2, "modeOrdinal":I
    aget-object v3, v1, v2

    if-eqz v3, :cond_25

    aget-object v3, v1, v2

    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v3

    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v4

    if-le v3, v4, :cond_27

    .line 216
    :cond_25
    aput-object p3, v1, v2

    .line 218
    :cond_27
    return-void
.end method

.method addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .registers 21
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "edges"    # [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .param p3, "from"    # I
    .param p4, "previous"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 221
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move/from16 v3, p3

    const/4 v0, 0x0

    .line 222
    .local v0, "start":I
    iget-object v2, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v2}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v2

    .line 223
    .local v2, "end":I
    iget-object v4, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v4}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v10

    .line 224
    .local v10, "priorityEncoderIndex":I
    if-ltz v10, :cond_29

    iget-object v4, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v5, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5, v10}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 225
    move v0, v10

    .line 226
    add-int/lit8 v2, v10, 0x1

    move v11, v0

    move v12, v2

    goto :goto_2b

    .line 229
    :cond_29
    move v11, v0

    move v12, v2

    .end local v0    # "start":I
    .end local v2    # "end":I
    .local v11, "start":I
    .local v12, "end":I
    :goto_2b
    move v0, v11

    move v4, v0

    .local v4, "i":I
    :goto_2d
    if-ge v4, v12, :cond_50

    .line 230
    iget-object v0, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v2, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2, v4}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 231
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    invoke-virtual {v1, v9, v3, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 229
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 235
    .end local v4    # "i":I
    :cond_50
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v2, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 236
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    invoke-virtual {v1, v9, v3, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 239
    :cond_6f
    iget-object v0, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    .line 240
    .local v13, "inputLength":I
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v2, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v0, :cond_ad

    .line 241
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v13, :cond_a0

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v5, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .line 242
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v4

    if-nez v4, :cond_9e

    goto :goto_a0

    :cond_9e
    const/4 v5, 0x2

    goto :goto_a1

    :cond_a0
    :goto_a0
    const/4 v5, 0x1

    :goto_a1
    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 241
    invoke-virtual {v1, v9, v3, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 245
    :cond_ad
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v2, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 246
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v13, :cond_ee

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v5, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v4

    if-nez v4, :cond_d4

    goto :goto_ee

    :cond_d4
    add-int/lit8 v4, v3, 0x2

    if-ge v4, v13, :cond_ec

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v5, v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v4

    if-nez v4, :cond_e9

    goto :goto_ec

    :cond_e9
    const/4 v14, 0x3

    const/4 v5, 0x3

    goto :goto_ef

    :cond_ec
    :goto_ec
    const/4 v5, 0x2

    goto :goto_ef

    .line 247
    :cond_ee
    :goto_ee
    const/4 v5, 0x1

    .line 248
    :goto_ef
    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 246
    invoke-virtual {v1, v9, v3, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 250
    :cond_fb
    return-void
.end method

.method canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .registers 5
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "c"    # C

    .line 182
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 189
    const/4 v0, 0x0

    return v0

    .line 186
    :pswitch_d
    const/4 v0, 0x1

    return v0

    .line 185
    :pswitch_f
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isNumeric(C)Z

    move-result v0

    return v0

    .line 184
    :pswitch_14
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isAlphanumeric(C)Z

    move-result v0

    return v0

    .line 183
    :pswitch_19
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isDoubleByteKanji(C)Z

    move-result v0

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method encode(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .registers 11
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 123
    if-nez p1, :cond_65

    .line 124
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 125
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 126
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 127
    .local v1, "versions":[Lcom/google/zxing/qrcode/decoder/Version;
    new-array v2, v0, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    aget-object v6, v1, v3

    invoke-virtual {p0, v6}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v6

    aput-object v6, v2, v3

    aget-object v3, v1, v4

    .line 128
    invoke-virtual {p0, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v3

    aput-object v3, v2, v4

    aget-object v3, v1, v5

    .line 129
    invoke-virtual {p0, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v3

    aput-object v3, v2, v5

    .line 130
    .local v2, "results":[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    const v3, 0x7fffffff

    .line 131
    .local v3, "smallestSize":I
    const/4 v4, -0x1

    .line 132
    .local v4, "smallestResult":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3f
    if-ge v5, v0, :cond_58

    .line 133
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize()I

    move-result v6

    .line 134
    .local v6, "size":I
    aget-object v7, v1, v5

    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v6, v7, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v7

    if-eqz v7, :cond_55

    if-ge v6, v3, :cond_55

    .line 135
    move v3, v6

    .line 136
    move v4, v5

    .line 132
    .end local v6    # "size":I
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 139
    .end local v5    # "i":I
    :cond_58
    if-ltz v4, :cond_5d

    .line 142
    aget-object v0, v2, v4

    return-object v0

    .line 140
    :cond_5d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v5, "Data too big for any version"

    invoke-direct {v0, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v1    # "versions":[Lcom/google/zxing/qrcode/decoder/Version;
    .end local v2    # "results":[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .end local v3    # "smallestSize":I
    .end local v4    # "smallestResult":I
    :cond_65
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v0

    .line 145
    .local v0, "result":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 148
    return-object v0

    .line 146
    :cond_82
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data too big for version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_9c

    :goto_9b
    throw v1

    :goto_9c
    goto :goto_9b
.end method

.method encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .registers 12
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    .local v0, "inputLength":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v2}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 372
    .local v1, "edges":[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 374
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_28
    if-gt v2, v0, :cond_52

    .line 375
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2b
    iget-object v4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v4}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 376
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_34
    if-ge v4, v5, :cond_4c

    .line 377
    aget-object v6, v1, v2

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    if-eqz v6, :cond_49

    if-ge v2, v0, :cond_49

    .line 378
    aget-object v6, v1, v2

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    invoke-virtual {p0, p1, v1, v2, v6}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 376
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 375
    .end local v4    # "k":I
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 374
    .end local v3    # "j":I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 384
    .end local v2    # "i":I
    :cond_52
    const/4 v2, -0x1

    .line 385
    .local v2, "minimalJ":I
    const/4 v3, -0x1

    .line 386
    .local v3, "minimalK":I
    const v4, 0x7fffffff

    .line 387
    .local v4, "minimalSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_58
    iget-object v7, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    invoke-virtual {v7}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v7

    if-ge v6, v7, :cond_83

    .line 388
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_61
    if-ge v7, v5, :cond_80

    .line 389
    aget-object v8, v1, v0

    aget-object v8, v8, v6

    aget-object v8, v8, v7

    if-eqz v8, :cond_7d

    .line 390
    aget-object v8, v1, v0

    aget-object v8, v8, v6

    aget-object v8, v8, v7

    .line 391
    .local v8, "edge":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v9

    if-ge v9, v4, :cond_7d

    .line 392
    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    move-result v4

    .line 393
    move v2, v6

    .line 394
    move v3, v7

    .line 388
    .end local v8    # "edge":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 387
    .end local v7    # "k":I
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 399
    .end local v6    # "j":I
    :cond_83
    if-ltz v2, :cond_91

    .line 402
    new-instance v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    aget-object v6, v1, v0

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    invoke-direct {v5, p0, p1, v6}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    return-object v5

    .line 400
    :cond_91
    new-instance v5, Lcom/google/zxing/WriterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error: failed to encode \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_b3

    :goto_b2
    throw v5

    :goto_b3
    goto :goto_b2
.end method
