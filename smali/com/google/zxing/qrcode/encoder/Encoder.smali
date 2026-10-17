.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    return-void

    :array_e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V
    .registers 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;

    .line 608
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 609
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-byte v3, v0, v2

    .line 610
    .local v3, "b":B
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 609
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 612
    :cond_12
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 584
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 585
    .local v0, "length":I
    const/4 v1, 0x0

    .line 586
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_41

    .line 587
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v2

    .line 588
    .local v2, "code1":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    .line 591
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_34

    .line 592
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    .line 593
    .local v4, "code2":I
    if-eq v4, v3, :cond_2e

    .line 597
    mul-int/lit8 v3, v2, 0x2d

    add-int/2addr v3, v4

    const/16 v5, 0xb

    invoke-virtual {p1, v3, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 598
    nop

    .end local v4    # "code2":I
    add-int/lit8 v1, v1, 0x2

    .line 599
    goto :goto_3a

    .line 594
    .restart local v4    # "code2":I
    :cond_2e
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3}, Lcom/google/zxing/WriterException;-><init>()V

    throw v3

    .line 601
    .end local v4    # "code2":I
    :cond_34
    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 602
    add-int/lit8 v1, v1, 0x1

    .line 604
    .end local v2    # "code1":I
    :goto_3a
    goto :goto_5

    .line 589
    .restart local v2    # "code1":I
    :cond_3b
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3}, Lcom/google/zxing/WriterException;-><init>()V

    throw v3

    .line 605
    .end local v2    # "code1":I
    :cond_41
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 555
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_24
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    .line 553
    goto :goto_34

    .line 549
    :pswitch_28
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    .line 550
    goto :goto_34

    .line 546
    :pswitch_2c
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 547
    goto :goto_34

    .line 543
    :pswitch_30
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 544
    nop

    .line 557
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .registers 4
    .param p0, "eci"    # Lcom/google/zxing/common/CharacterSetECI;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 643
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 645
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 646
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .registers 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 615
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_62

    .line 619
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 620
    .local v0, "bytes":[B
    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5a

    .line 623
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 624
    .local v1, "maxI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_59

    .line 625
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 626
    .local v3, "byte1":I
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 627
    .local v4, "byte2":I
    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v5, v4

    .line 628
    .local v5, "code":I
    const/4 v6, -0x1

    .line 629
    .local v6, "subtracted":I
    const v7, 0x8140

    if-lt v5, v7, :cond_30

    const v8, 0x9ffc

    if-gt v5, v8, :cond_30

    .line 630
    sub-int v6, v5, v7

    goto :goto_3f

    .line 631
    :cond_30
    const v7, 0xe040

    if-lt v5, v7, :cond_3f

    const v7, 0xebbf

    if-gt v5, v7, :cond_3f

    .line 632
    const v7, 0xc140

    sub-int v6, v5, v7

    .line 634
    :cond_3f
    :goto_3f
    const/4 v7, -0x1

    if-eq v6, v7, :cond_51

    .line 637
    shr-int/lit8 v7, v6, 0x8

    mul-int/lit16 v7, v7, 0xc0

    and-int/lit16 v8, v6, 0xff

    add-int/2addr v7, v8

    .line 638
    .local v7, "encoded":I
    const/16 v8, 0xd

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 624
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    .end local v7    # "encoded":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_13

    .line 635
    .restart local v3    # "byte1":I
    .restart local v4    # "byte2":I
    .restart local v5    # "code":I
    .restart local v6    # "subtracted":I
    :cond_51
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Invalid byte sequence"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 640
    .end local v2    # "i":I
    .end local v3    # "byte1":I
    .end local v4    # "byte2":I
    .end local v5    # "code":I
    .end local v6    # "subtracted":I
    :cond_59
    return-void

    .line 621
    .end local v1    # "maxI":I
    :cond_5a
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Kanji byte size not even"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    .end local v0    # "bytes":[B
    :cond_62
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "SJIS Charset not supported on this platform"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 9
    .param p0, "numLetters"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p3, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 527
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 528
    .local v0, "numBits":I
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-ge p0, v2, :cond_d

    .line 531
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 532
    return-void

    .line 529
    :cond_d
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is bigger than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shl-int v4, v1, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 4
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 519
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 520
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 9
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;

    .line 560
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 561
    .local v0, "length":I
    const/4 v1, 0x0

    .line 562
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4e

    .line 563
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 564
    .local v2, "num1":I
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_30

    .line 566
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 567
    .local v3, "num2":I
    add-int/lit8 v4, v1, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 568
    .local v4, "num3":I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 569
    nop

    .end local v3    # "num2":I
    .end local v4    # "num3":I
    add-int/lit8 v1, v1, 0x3

    .line 570
    goto :goto_4d

    :cond_30
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_47

    .line 572
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 573
    .restart local v3    # "num2":I
    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, v3

    const/4 v5, 0x7

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 574
    nop

    .end local v3    # "num2":I
    add-int/lit8 v1, v1, 0x2

    .line 575
    goto :goto_4d

    .line 577
    :cond_47
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 580
    .end local v2    # "num1":I
    :goto_4d
    goto :goto_5

    .line 581
    :cond_4e
    return-void
.end method

.method private static calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 6
    .param p0, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p1, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p2, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "version"    # Lcom/google/zxing/qrcode/decoder/Version;

    .line 229
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 62
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 299
    const v0, 0x7fffffff

    .line 300
    .local v0, "minPenalty":I
    const/4 v1, -0x1

    .line 302
    .local v1, "bestMaskPattern":I
    const/4 v2, 0x0

    .local v2, "maskPattern":I
    :goto_5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_17

    .line 303
    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 304
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 305
    .local v3, "penalty":I
    if-ge v3, v0, :cond_14

    .line 306
    move v0, v3

    .line 307
    move v1, v2

    .line 302
    .end local v3    # "penalty":I
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 310
    .end local v2    # "maskPattern":I
    :cond_17
    return v1
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .line 252
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 253
    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 254
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 256
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0

    .line 258
    :cond_15
    const/4 v0, 0x0

    .line 259
    .local v0, "hasNumeric":Z
    const/4 v1, 0x0

    .line 260
    .local v1, "hasAlphanumeric":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 261
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 262
    .local v3, "c":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2c

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2c

    .line 263
    const/4 v0, 0x1

    goto :goto_34

    .line 264
    :cond_2c
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_37

    .line 265
    const/4 v1, 0x1

    .line 260
    .end local v3    # "c":C
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 267
    .restart local v3    # "c":C
    :cond_37
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v4

    .line 270
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_3a
    if-eqz v1, :cond_3f

    .line 271
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v2

    .line 273
    :cond_3f
    if-eqz v0, :cond_44

    .line 274
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v2

    .line 276
    :cond_44
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v2
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 5
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x1

    .local v0, "versionNum":I
    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_13

    .line 315
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 316
    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 317
    return-object v1

    .line 314
    .end local v1    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    .end local v0    # "versionNum":I
    :cond_13
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 22
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 86
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    sget-object v5, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    .line 87
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    .line 88
    .local v5, "hasGS1FormatHint":Z
    :goto_25
    if-eqz v3, :cond_41

    sget-object v6, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    sget-object v6, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 89
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    .line 92
    .local v6, "hasCompactionHint":Z
    :goto_42
    sget-object v7, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    .line 93
    .local v7, "encoding":Ljava/nio/charset/Charset;
    if-eqz v3, :cond_4f

    sget-object v8, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    move v4, v0

    .line 94
    .local v4, "hasEncodingHint":Z
    if-eqz v4, :cond_64

    .line 96
    :try_start_53
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_61
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_53 .. :try_end_61} :catch_63

    move-object v7, v0

    .line 99
    goto :goto_64

    .line 97
    :catch_63
    move-exception v0

    .line 102
    :cond_64
    :goto_64
    if-eqz v6, :cond_86

    .line 103
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 105
    .local v0, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    sget-object v8, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_73

    move-object v8, v9

    goto :goto_74

    :cond_73
    move-object v8, v7

    .line 106
    .local v8, "priorityEncoding":Ljava/nio/charset/Charset;
    :goto_74
    invoke-static {v1, v9, v8, v5, v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v9

    .line 108
    .local v9, "rn":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 109
    .local v10, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v9, v10}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getBits(Lcom/google/zxing/common/BitArray;)V

    .line 110
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    .line 112
    .end local v9    # "rn":Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .local v8, "version":Lcom/google/zxing/qrcode/decoder/Version;
    goto/16 :goto_101

    .line 116
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v8    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v10    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    :cond_86
    invoke-static {v1, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    .line 120
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v8, Lcom/google/zxing/common/BitArray;

    invoke-direct {v8}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 123
    .local v8, "headerBits":Lcom/google/zxing/common/BitArray;
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v9, :cond_9e

    if-eqz v4, :cond_9e

    .line 124
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v9

    .line 125
    .local v9, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v9, :cond_9e

    .line 126
    invoke-static {v9, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 131
    .end local v9    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_9e
    if-eqz v5, :cond_a5

    .line 133
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-static {v9, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 137
    :cond_a5
    invoke-static {v0, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 141
    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 142
    .local v9, "dataBits":Lcom/google/zxing/common/BitArray;
    invoke-static {v1, v0, v9, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    .line 144
    if-eqz v3, :cond_e0

    sget-object v10, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e0

    .line 145
    sget-object v10, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 146
    .local v10, "versionNumber":I
    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v11

    .line 147
    .local v11, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {v0, v8, v9, v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v12

    .line 148
    .local v12, "bitsNeeded":I
    invoke-static {v12, v11, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v13

    if-eqz v13, :cond_d8

    .line 151
    .end local v10    # "versionNumber":I
    .end local v12    # "bitsNeeded":I
    move-object v10, v11

    goto :goto_e4

    .line 149
    .restart local v10    # "versionNumber":I
    .restart local v12    # "bitsNeeded":I
    :cond_d8
    new-instance v13, Lcom/google/zxing/WriterException;

    const-string v14, "Data too big for requested version"

    invoke-direct {v13, v14}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 152
    .end local v10    # "versionNumber":I
    .end local v11    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v12    # "bitsNeeded":I
    :cond_e0
    invoke-static {v2, v0, v8, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    .line 155
    .local v10, "version":Lcom/google/zxing/qrcode/decoder/Version;
    :goto_e4
    new-instance v11, Lcom/google/zxing/common/BitArray;

    invoke-direct {v11}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 156
    .local v11, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v11, v8}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 158
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v12, :cond_f5

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v12

    goto :goto_f9

    :cond_f5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    .line 159
    .local v12, "numLetters":I
    :goto_f9
    invoke-static {v12, v10, v0, v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 161
    invoke-virtual {v11, v9}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    move-object v8, v10

    move-object v10, v11

    .line 164
    .end local v9    # "dataBits":Lcom/google/zxing/common/BitArray;
    .end local v11    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .end local v12    # "numLetters":I
    .local v8, "version":Lcom/google/zxing/qrcode/decoder/Version;
    .local v10, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    :goto_101
    invoke-virtual {v8, v2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v9

    .line 165
    .local v9, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v12

    sub-int/2addr v11, v12

    .line 168
    .local v11, "numDataBytes":I
    invoke-static {v11, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 171
    nop

    .line 172
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v12

    .line 174
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v13

    .line 171
    invoke-static {v10, v12, v11, v13}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v12

    .line 176
    .local v12, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v13, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v13}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 178
    .local v13, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    invoke-virtual {v13, v2}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 179
    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 180
    invoke-virtual {v13, v8}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 183
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v14

    .line 184
    .local v14, "dimension":I
    new-instance v15, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v15, v14, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 187
    .local v15, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/16 v16, -0x1

    .line 188
    .local v16, "maskPattern":I
    move-object/from16 v17, v0

    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v17, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    if-eqz v3, :cond_161

    sget-object v0, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 189
    sget-object v0, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "hintMaskPattern":I
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v18

    if-eqz v18, :cond_15a

    move/from16 v18, v0

    goto :goto_15c

    :cond_15a
    const/16 v18, -0x1

    :goto_15c
    move/from16 v16, v18

    move/from16 v0, v16

    goto :goto_163

    .line 193
    .end local v0    # "hintMaskPattern":I
    :cond_161
    move/from16 v0, v16

    .end local v16    # "maskPattern":I
    .local v0, "maskPattern":I
    :goto_163
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16a

    .line 194
    invoke-static {v12, v2, v8, v15}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 196
    :cond_16a
    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 199
    invoke-static {v12, v2, v8, v0, v15}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 200
    invoke-virtual {v13, v15}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 202
    return-object v13
.end method

.method static generateECBytes([BI)[B
    .registers 7
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .line 501
    array-length v0, p0

    .line 502
    .local v0, "numDataBytes":I
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 503
    .local v1, "toEncode":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_11

    .line 504
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 506
    .end local v2    # "i":I
    :cond_11
    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v2, v1, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 508
    new-array v2, p1, [B

    .line 509
    .local v2, "ecBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, p1, :cond_2a

    .line 510
    add-int v4, v0, v3

    aget v4, v1, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 512
    .end local v3    # "i":I
    :cond_2a
    return-object v2
.end method

.method static getAlphanumericCode(I)I
    .registers 2
    .param p0, "code"    # I

    .line 237
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 238
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    return v0

    .line 240
    :cond_a
    const/4 v0, -0x1

    return v0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .registers 16
    .param p0, "numTotalBytes"    # I
    .param p1, "numDataBytes"    # I
    .param p2, "numRSBlocks"    # I
    .param p3, "blockID"    # I
    .param p4, "numDataBytesInBlock"    # [I
    .param p5, "numECBytesInBlock"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 382
    if-ge p3, p2, :cond_48

    .line 386
    rem-int v0, p0, p2

    .line 388
    .local v0, "numRsBlocksInGroup2":I
    sub-int v1, p2, v0

    .line 390
    .local v1, "numRsBlocksInGroup1":I
    div-int v2, p0, p2

    .line 392
    .local v2, "numTotalBytesInGroup1":I
    add-int/lit8 v3, v2, 0x1

    .line 394
    .local v3, "numTotalBytesInGroup2":I
    div-int v4, p1, p2

    .line 396
    .local v4, "numDataBytesInGroup1":I
    add-int/lit8 v5, v4, 0x1

    .line 398
    .local v5, "numDataBytesInGroup2":I
    sub-int v6, v2, v4

    .line 400
    .local v6, "numEcBytesInGroup1":I
    sub-int v7, v3, v5

    .line 403
    .local v7, "numEcBytesInGroup2":I
    if-ne v6, v7, :cond_40

    .line 407
    add-int v8, v1, v0

    if-ne p2, v8, :cond_38

    .line 411
    add-int v8, v4, v6

    mul-int v8, v8, v1

    add-int v9, v5, v7

    mul-int v9, v9, v0

    add-int/2addr v8, v9

    if-ne p0, v8, :cond_30

    .line 419
    const/4 v8, 0x0

    if-ge p3, v1, :cond_2b

    .line 420
    aput v4, p4, v8

    .line 421
    aput v6, p5, v8

    goto :goto_2f

    .line 423
    :cond_2b
    aput v5, p4, v8

    .line 424
    aput v7, p5, v8

    .line 426
    :goto_2f
    return-void

    .line 416
    :cond_30
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 408
    :cond_38
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 404
    :cond_40
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 383
    .end local v0    # "numRsBlocksInGroup2":I
    .end local v1    # "numRsBlocksInGroup1":I
    .end local v2    # "numTotalBytesInGroup1":I
    .end local v3    # "numTotalBytesInGroup2":I
    .end local v4    # "numDataBytesInGroup1":I
    .end local v5    # "numDataBytesInGroup2":I
    .end local v6    # "numEcBytesInGroup1":I
    .end local v7    # "numEcBytesInGroup2":I
    :cond_48
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .registers 16
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    if-ne v0, p2, :cond_d5

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "dataBytesOffset":I
    const/4 v1, 0x0

    .line 446
    .local v1, "maxNumDataBytes":I
    const/4 v2, 0x0

    .line 449
    .local v2, "maxNumEcBytes":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 451
    .local v3, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v4, 0x0

    move v7, v4

    .local v7, "i":I
    :goto_10
    if-ge v7, p3, :cond_47

    .line 452
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 453
    .local v8, "numDataBytesInBlock":[I
    new-array v9, v4, [I

    .line 454
    .local v9, "numEcBytesInBlock":[I
    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "numTotalBytes":I
    .end local p2    # "numDataBytes":I
    .end local p3    # "numRSBlocks":I
    .local v4, "numTotalBytes":I
    .local v5, "numDataBytes":I
    .local v6, "numRSBlocks":I
    invoke-static/range {v4 .. v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 458
    const/4 p1, 0x0

    aget p2, v8, p1

    .line 459
    .local p2, "size":I
    new-array p3, p2, [B

    .line 460
    .local p3, "dataBytes":[B
    mul-int/lit8 v10, v0, 0x8

    invoke-virtual {p0, v10, p3, p1, p2}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 461
    aget v10, v9, p1

    invoke-static {p3, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v10

    .line 462
    .local v10, "ecBytes":[B
    new-instance v11, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v11, p3, v10}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 465
    array-length v11, v10

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 466
    aget p1, v8, p1

    add-int/2addr v0, p1

    .line 451
    .end local v8    # "numDataBytesInBlock":[I
    .end local v9    # "numEcBytesInBlock":[I
    .end local v10    # "ecBytes":[B
    .end local p2    # "size":I
    .end local p3    # "dataBytes":[B
    add-int/lit8 v7, v7, 0x1

    move p1, v4

    move p2, v5

    move p3, v6

    goto :goto_10

    .end local v4    # "numTotalBytes":I
    .end local v5    # "numDataBytes":I
    .end local v6    # "numRSBlocks":I
    .restart local p1    # "numTotalBytes":I
    .local p2, "numDataBytes":I
    .local p3, "numRSBlocks":I
    :cond_47
    move v4, p1

    move v5, p2

    move v6, p3

    .line 468
    .end local v7    # "i":I
    .end local p1    # "numTotalBytes":I
    .end local p2    # "numDataBytes":I
    .end local p3    # "numRSBlocks":I
    .restart local v4    # "numTotalBytes":I
    .restart local v5    # "numDataBytes":I
    .restart local v6    # "numRSBlocks":I
    if-ne v5, v0, :cond_cd

    .line 472
    new-instance p1, Lcom/google/zxing/common/BitArray;

    invoke-direct {p1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 475
    .local p1, "result":Lcom/google/zxing/common/BitArray;
    const/4 p2, 0x0

    .local p2, "i":I
    :goto_52
    const/16 p3, 0x8

    if-ge p2, v1, :cond_76

    .line 476
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 477
    .local v8, "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v9

    .line 478
    .local v9, "dataBytes":[B
    array-length v10, v9

    if-ge p2, v10, :cond_72

    .line 479
    aget-byte v10, v9, p2

    invoke-virtual {p1, v10, p3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 481
    .end local v8    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v9    # "dataBytes":[B
    :cond_72
    goto :goto_5a

    .line 475
    :cond_73
    add-int/lit8 p2, p2, 0x1

    goto :goto_52

    .line 484
    .end local p2    # "i":I
    :cond_76
    const/4 p2, 0x0

    .restart local p2    # "i":I
    :goto_77
    if-ge p2, v2, :cond_99

    .line 485
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 486
    .restart local v8    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v9

    .line 487
    .local v9, "ecBytes":[B
    array-length v10, v9

    if-ge p2, v10, :cond_95

    .line 488
    aget-byte v10, v9, p2

    invoke-virtual {p1, v10, p3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 490
    .end local v8    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v9    # "ecBytes":[B
    :cond_95
    goto :goto_7d

    .line 484
    :cond_96
    add-int/lit8 p2, p2, 0x1

    goto :goto_77

    .line 492
    .end local p2    # "i":I
    :cond_99
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result p2

    if-ne v4, p2, :cond_a0

    .line 497
    return-object p1

    .line 493
    :cond_a0
    new-instance p2, Lcom/google/zxing/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interleaving error: "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v7, " and "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 494
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v7, " differ."

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 469
    .end local p1    # "result":Lcom/google/zxing/common/BitArray;
    :cond_cd
    new-instance p1, Lcom/google/zxing/WriterException;

    const-string p2, "Data bytes does not match offset"

    invoke-direct {p1, p2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    .end local v0    # "dataBytesOffset":I
    .end local v1    # "maxNumDataBytes":I
    .end local v2    # "maxNumEcBytes":I
    .end local v3    # "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    .end local v4    # "numTotalBytes":I
    .end local v5    # "numDataBytes":I
    .end local v6    # "numRSBlocks":I
    .local p1, "numTotalBytes":I
    .local p2, "numDataBytes":I
    .restart local p3    # "numRSBlocks":I
    :cond_d5
    move v4, p1

    move v5, p2

    .end local p1    # "numTotalBytes":I
    .end local p2    # "numDataBytes":I
    .restart local v4    # "numTotalBytes":I
    .restart local v5    # "numDataBytes":I
    new-instance p1, Lcom/google/zxing/WriterException;

    const-string p2, "Number of bits and data bytes does not match"

    invoke-direct {p1, p2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_e0

    :goto_df
    throw p1

    :goto_e0
    goto :goto_df
.end method

.method static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 281
    .local v0, "bytes":[B
    array-length v1, v0

    .line 282
    .local v1, "length":I
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 283
    return v3

    .line 285
    :cond_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_29

    .line 286
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    .line 287
    .local v4, "byte1":I
    const/16 v5, 0x81

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x9f

    if-le v4, v5, :cond_25

    :cond_1c
    const/16 v5, 0xe0

    if-lt v4, v5, :cond_28

    const/16 v5, 0xeb

    if-le v4, v5, :cond_25

    goto :goto_28

    .line 285
    .end local v4    # "byte1":I
    :cond_25
    add-int/lit8 v2, v2, 0x2

    goto :goto_e

    .line 288
    .restart local v4    # "byte1":I
    :cond_28
    :goto_28
    return v3

    .line 291
    .end local v2    # "i":I
    .end local v4    # "byte1":I
    :cond_29
    const/4 v2, 0x1

    return v2
.end method

.method private static recommendVersion(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 8
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "mode"    # Lcom/google/zxing/qrcode/decoder/Mode;
    .param p2, "headerBits"    # Lcom/google/zxing/common/BitArray;
    .param p3, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 218
    .local v0, "provisionalBitsNeeded":I
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 221
    .local v1, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {p1, p2, p3, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    .line 222
    .local v2, "bitsNeeded":I
    invoke-static {v2, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v3

    return-object v3
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 344
    mul-int/lit8 v0, p0, 0x8

    .line 345
    .local v0, "capacity":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-gt v1, v0, :cond_53

    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_19

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v0, :cond_19

    .line 351
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 355
    .end local v1    # "i":I
    :cond_19
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 356
    .local v1, "numBitsInLastByte":I
    const/16 v2, 0x8

    if-lez v1, :cond_2c

    .line 357
    move v4, v1

    .local v4, "i":I
    :goto_24
    if-ge v4, v2, :cond_2c

    .line 358
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 362
    .end local v4    # "i":I
    :cond_2c
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    sub-int v3, p0, v3

    .line 363
    .local v3, "numPaddingBytes":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_33
    if-ge v4, v3, :cond_44

    .line 364
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_3c

    const/16 v5, 0xec

    goto :goto_3e

    :cond_3c
    const/16 v5, 0x11

    :goto_3e
    invoke-virtual {p1, v5, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 363
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 366
    .end local v4    # "i":I
    :cond_44
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ne v2, v0, :cond_4b

    .line 369
    return-void

    .line 367
    :cond_4b
    new-instance v2, Lcom/google/zxing/WriterException;

    const-string v4, "Bits size does not equal capacity"

    invoke-direct {v2, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    .end local v1    # "numBitsInLastByte":I
    .end local v3    # "numPaddingBytes":I
    :cond_53
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data bits cannot fit in the QR Code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :goto_7a
    throw v1

    :goto_7b
    goto :goto_7a
.end method

.method static willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .registers 9
    .param p0, "numInputBits"    # I
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 330
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    .line 332
    .local v0, "numBytes":I
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    .line 333
    .local v1, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v2

    .line 335
    .local v2, "numEcBytes":I
    sub-int v3, v0, v2

    .line 336
    .local v3, "numDataBytes":I
    add-int/lit8 v4, p0, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 337
    .local v4, "totalInputBytes":I
    if-lt v3, v4, :cond_16

    const/4 v5, 0x1

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    return v5
.end method
