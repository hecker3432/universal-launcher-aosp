.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Edge"
.end annotation


# instance fields
.field private final cachedTotalSize:I

.field private final characterLength:I

.field private final charsetEncoderIndex:I

.field private final fromPosition:I

.field private final mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private final previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

.field final synthetic this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;


# direct methods
.method private constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V
    .registers 14
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "fromPosition"    # I
    .param p4, "charsetEncoderIndex"    # I
    .param p5, "characterLength"    # I
    .param p6, "previous"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .param p7, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .line 414
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 416
    iput p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    .line 417
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq p2, v0, :cond_13

    if-nez p6, :cond_10

    goto :goto_13

    :cond_10
    iget v0, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    goto :goto_14

    :cond_13
    :goto_13
    move v0, p4

    :goto_14
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    .line 419
    iput p5, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    .line 420
    iput-object p6, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 422
    const/4 v0, 0x0

    if-eqz p6, :cond_20

    iget v1, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 424
    .local v1, "size":I
    :goto_21
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v3, 0x1

    if-ne p2, v2, :cond_2c

    if-nez p6, :cond_2c

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    if-nez v2, :cond_34

    :cond_2c
    if-eqz p6, :cond_35

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    iget v4, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    if-eq v2, v4, :cond_35

    :cond_34
    const/4 v0, 0x1

    .line 428
    .local v0, "needECI":Z
    :cond_35
    const/4 v2, 0x4

    if-eqz p6, :cond_3e

    iget-object v4, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne p2, v4, :cond_3e

    if-eqz v0, :cond_44

    .line 429
    :cond_3e
    invoke-virtual {p2, p7}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 431
    :cond_44
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_86

    goto :goto_82

    .line 442
    :pswitch_50
    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$600(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/ECIEncoderSet;

    move-result-object v2

    # getter for: Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$500(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    move-result-object p1

    add-int v3, p3, p5

    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p4}, Lcom/google/zxing/common/ECIEncoderSet;->encode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    .line 444
    if-eqz v0, :cond_82

    .line 445
    add-int/lit8 v1, v1, 0xc

    goto :goto_82

    .line 439
    :pswitch_6b
    if-ne p5, v3, :cond_6e

    goto :goto_75

    :cond_6e
    const/4 p1, 0x2

    if-ne p5, p1, :cond_73

    const/4 v2, 0x7

    goto :goto_75

    :cond_73
    const/16 v2, 0xa

    :goto_75
    add-int/2addr v1, v2

    .line 440
    goto :goto_82

    .line 436
    :pswitch_77
    if-ne p5, v3, :cond_7b

    const/4 p1, 0x6

    goto :goto_7d

    :cond_7b
    const/16 p1, 0xb

    :goto_7d
    add-int/2addr v1, p1

    .line 437
    goto :goto_82

    .line 433
    :pswitch_7f
    add-int/lit8 v1, v1, 0xd

    .line 434
    nop

    .line 449
    :cond_82
    :goto_82
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    .line 450
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_77
        :pswitch_6b
        :pswitch_50
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
    .param p2, "x1"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .param p7, "x6"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p8, "x7"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;

    .line 405
    invoke-direct/range {p0 .. p7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 405
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 405
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 405
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 405
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 405
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 405
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    return v0
.end method
