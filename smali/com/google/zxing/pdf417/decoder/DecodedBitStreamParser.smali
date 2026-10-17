.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 73
    nop

    .line 74
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 76
    nop

    .line 77
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 87
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    .line 88
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 89
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 90
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_2b
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_41

    .line 91
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 93
    .end local v0    # "nineHundred":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private static byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I
    .registers 16
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "codeIndex"    # I
    .param p3, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, "end":Z
    :goto_1
    const/4 v1, 0x0

    aget v2, p1, v1

    if-ge p2, v2, :cond_91

    if-nez v0, :cond_91

    .line 574
    :goto_8
    aget v2, p1, v1

    const/16 v3, 0x39f

    if-ge p2, v2, :cond_1c

    aget v2, p1, p2

    if-ne v2, v3, :cond_1c

    .line 575
    add-int/lit8 p2, p2, 0x1

    aget v2, p1, p2

    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 576
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 579
    :cond_1c
    aget v2, p1, v1

    if-ge p2, v2, :cond_8e

    aget v2, p1, p2

    const/16 v4, 0x384

    if-lt v2, v4, :cond_28

    goto/16 :goto_8e

    .line 583
    :cond_28
    const-wide/16 v5, 0x0

    .line 584
    .local v5, "value":J
    const/4 v2, 0x0

    .line 586
    .local v2, "count":I
    :goto_2b
    const-wide/16 v7, 0x384

    mul-long v7, v7, v5

    add-int/lit8 v9, p2, 0x1

    .end local p2    # "codeIndex":I
    .local v9, "codeIndex":I
    aget p2, p1, p2

    int-to-long v10, p2

    add-long v5, v7, v10

    .line 587
    add-int/lit8 v2, v2, 0x1

    .line 588
    const/4 p2, 0x5

    if-ge v2, p2, :cond_46

    aget v7, p1, v1

    if-ge v9, v7, :cond_46

    aget v7, p1, v9

    if-lt v7, v4, :cond_44

    goto :goto_46

    :cond_44
    move p2, v9

    goto :goto_2b

    .line 591
    :cond_46
    :goto_46
    if-ne v2, p2, :cond_68

    const/16 p2, 0x39c

    if-eq p0, p2, :cond_54

    aget p2, p1, v1

    if-ge v9, p2, :cond_68

    aget p2, p1, v9

    if-ge p2, v4, :cond_68

    .line 594
    :cond_54
    const/4 p2, 0x0

    .local p2, "i":I
    :goto_55
    const/4 v1, 0x6

    if-ge p2, v1, :cond_66

    .line 595
    rsub-int/lit8 v1, p2, 0x5

    mul-int/lit8 v1, v1, 0x8

    shr-long v3, v5, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    .line 594
    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    :cond_66
    move p2, v9

    .end local p2    # "i":I
    goto :goto_8c

    .line 598
    :cond_68
    sub-int/2addr v9, v2

    .line 599
    :goto_69
    aget p2, p1, v1

    if-ge v9, p2, :cond_8b

    if-nez v0, :cond_8b

    .line 600
    add-int/lit8 p2, v9, 0x1

    .end local v9    # "codeIndex":I
    .local p2, "codeIndex":I
    aget v7, p1, v9

    .line 601
    .local v7, "code":I
    if-ge v7, v4, :cond_7b

    .line 602
    int-to-byte v8, v7

    invoke-virtual {p3, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    move v9, p2

    goto :goto_8a

    .line 603
    :cond_7b
    if-ne v7, v3, :cond_86

    .line 604
    add-int/lit8 v8, p2, 0x1

    .end local p2    # "codeIndex":I
    .local v8, "codeIndex":I
    aget p2, p1, p2

    invoke-virtual {p3, p2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    move v9, v8

    goto :goto_8a

    .line 606
    .end local v8    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :cond_86
    add-int/lit8 p2, p2, -0x1

    .line 607
    const/4 v0, 0x1

    move v9, p2

    .line 609
    .end local v7    # "code":I
    .end local p2    # "codeIndex":I
    .restart local v9    # "codeIndex":I
    :goto_8a
    goto :goto_69

    .line 611
    .end local v2    # "count":I
    .end local v5    # "value":J
    :cond_8b
    move p2, v9

    .end local v9    # "codeIndex":I
    .restart local p2    # "codeIndex":I
    :goto_8c
    goto/16 :goto_1

    .line 580
    :cond_8e
    :goto_8e
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 613
    :cond_91
    return p2
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/zxing/common/ECIStringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    .line 102
    .local v0, "result":Lcom/google/zxing/common/ECIStringBuilder;
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    .line 103
    .local v1, "codeIndex":I
    new-instance v2, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 104
    .local v2, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    :goto_12
    const/4 v3, 0x0

    aget v3, p0, v3

    if-ge v1, v3, :cond_5e

    .line 105
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "codeIndex":I
    .local v3, "codeIndex":I
    aget v1, p0, v1

    .line 106
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_7e

    .line 142
    add-int/lit8 v3, v3, -0x1

    .line 143
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v3

    move v1, v3

    goto :goto_5d

    .line 132
    :sswitch_26
    invoke-static {p0, v3, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v3

    .line 133
    move v1, v3

    goto :goto_5d

    .line 121
    :sswitch_2c
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v3, p0, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 122
    move v1, v4

    goto :goto_5d

    .line 125
    .end local v4    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_35
    add-int/lit8 v3, v3, 0x2

    .line 126
    move v1, v3

    goto :goto_5d

    .line 129
    :sswitch_39
    add-int/lit8 v3, v3, 0x1

    .line 130
    move v1, v3

    goto :goto_5d

    .line 137
    :sswitch_3d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 115
    :sswitch_42
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 116
    move v1, v4

    goto :goto_5d

    .line 118
    .end local v4    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_4c
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v3

    .line 119
    move v1, v3

    goto :goto_5d

    .line 112
    :sswitch_52
    invoke-static {v1, p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v3

    .line 113
    move v1, v3

    goto :goto_5d

    .line 108
    :sswitch_58
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v3

    .line 109
    move v1, v3

    .line 146
    .end local v3    # "codeIndex":I
    .local v1, "codeIndex":I
    :goto_5d
    goto :goto_12

    .line 147
    :cond_5e
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIStringBuilder;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->getFileId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    goto :goto_70

    .line 148
    :cond_6b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 150
    :cond_70
    :goto_70
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 151
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v2}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 152
    return-object v3

    :sswitch_data_7e
    .sparse-switch
        0x384 -> :sswitch_58
        0x385 -> :sswitch_52
        0x386 -> :sswitch_4c
        0x391 -> :sswitch_42
        0x39a -> :sswitch_3d
        0x39b -> :sswitch_3d
        0x39c -> :sswitch_52
        0x39d -> :sswitch_39
        0x39e -> :sswitch_35
        0x39f -> :sswitch_2c
        0x3a0 -> :sswitch_26
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 7
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 708
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 709
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x1

    if-ge v1, p1, :cond_1f

    .line 710
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v1

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    aget v3, p0, v1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 712
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_31

    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 714
    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 12
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 158
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_164

    .line 162
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 163
    .local v2, "segmentIndexArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_16

    .line 164
    aget v4, p0, p1

    aput v4, v2, v3

    .line 163
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 166
    .end local v3    # "i":I
    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "segmentIndexString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 168
    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    goto :goto_2c

    .line 171
    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_15e

    .line 175
    nop

    .line 181
    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v3, "fileId":Ljava/lang/StringBuilder;
    :goto_31
    aget v4, p0, v1

    const/16 v5, 0x39b

    const/4 v6, 0x1

    if-ge p1, v4, :cond_5b

    array-length v4, p0

    if-ge p1, v4, :cond_5b

    aget v4, p0, p1

    const/16 v7, 0x39a

    if-eq v4, v7, :cond_5b

    aget v4, p0, p1

    if-eq v4, v5, :cond_5b

    .line 186
    aget v4, p0, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "%03d"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 189
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_159

    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 195
    const/4 v4, -0x1

    .line 196
    .local v4, "optionalFieldsStart":I
    aget v7, p0, p1

    if-ne v7, v5, :cond_6f

    .line 197
    add-int/lit8 v4, p1, 0x1

    .line 200
    :cond_6f
    :goto_6f
    aget v5, p0, v1

    if-ge p1, v5, :cond_140

    .line 201
    aget v5, p0, p1

    packed-switch v5, :pswitch_data_16c

    .line 265
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 203
    :pswitch_7d
    add-int/lit8 p1, p1, 0x1

    .line 204
    aget v5, p0, p1

    packed-switch v5, :pswitch_data_174

    .line 257
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 239
    :pswitch_89
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 240
    .local v5, "checksum":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 242
    :try_start_94
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_9f} :catch_a0

    .line 245
    goto :goto_6f

    .line 243
    :catch_a0
    move-exception v1

    .line 244
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 248
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "checksum":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_a6
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 249
    .local v5, "fileSize":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 251
    :try_start_b1
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V
    :try_end_bc
    .catch Ljava/lang/NumberFormatException; {:try_start_b1 .. :try_end_bc} :catch_bd

    .line 254
    goto :goto_6f

    .line 252
    :catch_bd
    move-exception v1

    .line 253
    .restart local v1    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 216
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "fileSize":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_c3
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 217
    .local v5, "addressee":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 218
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    .line 219
    goto :goto_6f

    .line 211
    .end local v5    # "addressee":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_d6
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 212
    .local v5, "sender":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 213
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    .line 214
    goto :goto_6f

    .line 230
    .end local v5    # "sender":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_e9
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 231
    .local v5, "timestamp":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 233
    :try_start_f4
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V
    :try_end_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_ff} :catch_101

    .line 236
    goto/16 :goto_6f

    .line 234
    :catch_101
    move-exception v1

    .line 235
    .restart local v1    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 221
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "timestamp":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_107
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 222
    .local v5, "segmentCount":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 224
    :try_start_112
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V
    :try_end_11d
    .catch Ljava/lang/NumberFormatException; {:try_start_112 .. :try_end_11d} :catch_11f

    .line 227
    goto/16 :goto_6f

    .line 225
    :catch_11f
    move-exception v1

    .line 226
    .restart local v1    # "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 206
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "segmentCount":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_125
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 207
    .local v5, "fileName":Lcom/google/zxing/common/ECIStringBuilder;
    add-int/lit8 v7, p1, 0x1

    invoke-static {p0, v7, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 208
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    .line 209
    goto/16 :goto_6f

    .line 261
    .end local v5    # "fileName":Lcom/google/zxing/common/ECIStringBuilder;
    :pswitch_139
    add-int/lit8 p1, p1, 0x1

    .line 262
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 263
    goto/16 :goto_6f

    .line 270
    :cond_140
    const/4 v1, -0x1

    if-eq v4, v1, :cond_158

    .line 271
    sub-int v1, p1, v4

    .line 272
    .local v1, "optionalFieldsLength":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 274
    add-int/lit8 v1, v1, -0x1

    .line 276
    :cond_14d
    if-lez v1, :cond_158

    .line 277
    add-int v5, v4, v1

    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 282
    .end local v1    # "optionalFieldsLength":I
    :cond_158
    return p1

    .line 191
    .end local v4    # "optionalFieldsStart":I
    :cond_159
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 172
    .end local v3    # "fileId":Ljava/lang/StringBuilder;
    :catch_15e
    move-exception v1

    .line 174
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 160
    .end local v0    # "segmentIndexString":Ljava/lang/String;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "segmentIndexArray":[I
    :cond_164
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    goto :goto_16a

    :goto_169
    throw v0

    :goto_16a
    goto :goto_169

    nop

    :pswitch_data_16c
    .packed-switch 0x39a
        :pswitch_139
        :pswitch_7d
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_125
        :pswitch_107
        :pswitch_e9
        :pswitch_d6
        :pswitch_c3
        :pswitch_a6
        :pswitch_89
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 14
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .param p4, "startMode"    # Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 381
    move-object v0, p4

    .line 382
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    move-object v1, p4

    .line 383
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    move-object v2, p4

    .line 384
    .local v2, "latchedMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v3, 0x0

    .line 385
    .local v3, "i":I
    :goto_4
    if-ge v3, p2, :cond_de

    .line 386
    aget v4, p0, v3

    .line 387
    .local v4, "subModeCh":I
    const/4 v5, 0x0

    .line 388
    .local v5, "ch":C
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x1d

    const/16 v8, 0x1a

    packed-switch v6, :pswitch_data_e0

    goto/16 :goto_d4

    .line 528
    :pswitch_1a
    move-object v0, v1

    .line 529
    if-ge v4, v7, :cond_23

    .line 530
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v5, v6, v4

    goto/16 :goto_d4

    .line 532
    :cond_23
    sparse-switch v4, :sswitch_data_f0

    goto/16 :goto_d4

    .line 540
    :sswitch_28
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto/16 :goto_d4

    .line 535
    :sswitch_30
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 536
    goto/16 :goto_d4

    .line 511
    :pswitch_34
    move-object v0, v1

    .line 512
    if-ge v4, v8, :cond_3c

    .line 513
    add-int/lit8 v6, v4, 0x41

    int-to-char v5, v6

    goto/16 :goto_d4

    .line 515
    :cond_3c
    sparse-switch v4, :sswitch_data_fe

    goto :goto_46

    .line 520
    :sswitch_40
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_46

    .line 517
    :sswitch_43
    const/16 v5, 0x20

    .line 518
    nop

    .line 524
    :goto_46
    goto/16 :goto_d4

    .line 493
    :pswitch_48
    if-ge v4, v7, :cond_50

    .line 494
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v5, v6, v4

    goto/16 :goto_d4

    .line 496
    :cond_50
    sparse-switch v4, :sswitch_data_108

    goto :goto_5f

    .line 503
    :sswitch_54
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5f

    .line 499
    :sswitch_5b
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 500
    move-object v2, v0

    .line 501
    nop

    .line 507
    :goto_5f
    goto/16 :goto_d4

    .line 459
    :pswitch_61
    const/16 v6, 0x19

    if-ge v4, v6, :cond_6b

    .line 460
    sget-object v6, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v5, v6, v4

    goto/16 :goto_d4

    .line 462
    :cond_6b
    sparse-switch v4, :sswitch_data_116

    goto :goto_89

    .line 485
    :sswitch_6f
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_89

    .line 481
    :sswitch_76
    move-object v1, v0

    .line 482
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 483
    goto :goto_89

    .line 476
    :sswitch_7a
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 477
    move-object v2, v0

    .line 478
    goto :goto_89

    .line 471
    :sswitch_7e
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 472
    move-object v2, v0

    .line 473
    goto :goto_89

    .line 468
    :sswitch_82
    const/16 v5, 0x20

    .line 469
    goto :goto_89

    .line 464
    :sswitch_85
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 465
    move-object v2, v0

    .line 466
    nop

    .line 489
    :goto_89
    goto :goto_d4

    .line 425
    :pswitch_8a
    if-ge v4, v8, :cond_90

    .line 426
    add-int/lit8 v6, v4, 0x61

    int-to-char v5, v6

    goto :goto_d4

    .line 428
    :cond_90
    sparse-switch v4, :sswitch_data_134

    goto :goto_ae

    .line 447
    :sswitch_94
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 448
    goto :goto_ae

    .line 450
    :sswitch_9b
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 451
    move-object v2, v0

    goto :goto_ae

    .line 443
    :sswitch_9f
    move-object v1, v0

    .line 444
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 445
    goto :goto_ae

    .line 438
    :sswitch_a3
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 439
    move-object v2, v0

    .line 440
    goto :goto_ae

    .line 434
    :sswitch_a7
    move-object v1, v0

    .line 435
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 436
    goto :goto_ae

    .line 430
    :sswitch_ab
    const/16 v5, 0x20

    .line 431
    nop

    .line 455
    :goto_ae
    goto :goto_d4

    .line 391
    :pswitch_af
    if-ge v4, v8, :cond_b5

    .line 393
    add-int/lit8 v6, v4, 0x41

    int-to-char v5, v6

    goto :goto_d4

    .line 395
    :cond_b5
    sparse-switch v4, :sswitch_data_14e

    goto :goto_d3

    .line 413
    :sswitch_b9
    aget v6, p1, v3

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 414
    goto :goto_d3

    .line 416
    :sswitch_c0
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 417
    move-object v2, v0

    goto :goto_d3

    .line 409
    :sswitch_c4
    move-object v1, v0

    .line 410
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 411
    goto :goto_d3

    .line 404
    :sswitch_c8
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 405
    move-object v2, v0

    .line 406
    goto :goto_d3

    .line 400
    :sswitch_cc
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 401
    move-object v2, v0

    .line 402
    goto :goto_d3

    .line 397
    :sswitch_d0
    const/16 v5, 0x20

    .line 398
    nop

    .line 421
    :goto_d3
    nop

    .line 546
    :goto_d4
    if-eqz v5, :cond_d9

    .line 548
    invoke-virtual {p3, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 550
    :cond_d9
    nop

    .end local v4    # "subModeCh":I
    .end local v5    # "ch":C
    add-int/lit8 v3, v3, 0x1

    .line 551
    goto/16 :goto_4

    .line 552
    :cond_de
    return-object v2

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_af
        :pswitch_8a
        :pswitch_61
        :pswitch_48
        :pswitch_34
        :pswitch_1a
    .end packed-switch

    :sswitch_data_f0
    .sparse-switch
        0x1d -> :sswitch_30
        0x384 -> :sswitch_30
        0x391 -> :sswitch_28
    .end sparse-switch

    :sswitch_data_fe
    .sparse-switch
        0x1a -> :sswitch_43
        0x384 -> :sswitch_40
    .end sparse-switch

    :sswitch_data_108
    .sparse-switch
        0x1d -> :sswitch_5b
        0x384 -> :sswitch_5b
        0x391 -> :sswitch_54
    .end sparse-switch

    :sswitch_data_116
    .sparse-switch
        0x19 -> :sswitch_85
        0x1a -> :sswitch_82
        0x1b -> :sswitch_7e
        0x1c -> :sswitch_7a
        0x1d -> :sswitch_76
        0x384 -> :sswitch_7a
        0x391 -> :sswitch_6f
    .end sparse-switch

    :sswitch_data_134
    .sparse-switch
        0x1a -> :sswitch_ab
        0x1b -> :sswitch_a7
        0x1c -> :sswitch_a3
        0x1d -> :sswitch_9f
        0x384 -> :sswitch_9b
        0x391 -> :sswitch_94
    .end sparse-switch

    :sswitch_data_14e
    .sparse-switch
        0x1a -> :sswitch_d0
        0x1b -> :sswitch_cc
        0x1c -> :sswitch_c8
        0x1d -> :sswitch_c4
        0x384 -> :sswitch_c0
        0x391 -> :sswitch_b9
    .end sparse-switch
.end method

.method private static numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "count":I
    const/4 v1, 0x0

    .line 628
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 630
    .local v2, "numericCodewords":[I
    :goto_6
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_3c

    if-nez v1, :cond_3c

    .line 631
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 632
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_16

    .line 633
    const/4 v1, 0x1

    .line 635
    :cond_16
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1f

    .line 636
    aput p1, v2, v0

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 639
    :cond_1f
    sparse-switch p1, :sswitch_data_3e

    goto :goto_26

    .line 647
    :sswitch_23
    add-int/lit8 v4, v4, -0x1

    .line 648
    const/4 v1, 0x1

    .line 652
    :goto_26
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_30

    const/16 v3, 0x386

    if-eq p1, v3, :cond_30

    if-eqz v1, :cond_3a

    :cond_30
    if-lez v0, :cond_3a

    .line 657
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 658
    const/4 v0, 0x0

    .line 660
    .end local p1    # "code":I
    :cond_3a
    move p1, v4

    goto :goto_6

    .line 661
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_3c
    return p1

    nop

    :sswitch_data_3e
    .sparse-switch
        0x384 -> :sswitch_23
        0x385 -> :sswitch_23
        0x39a -> :sswitch_23
        0x39b -> :sswitch_23
        0x39c -> :sswitch_23
        0x39f -> :sswitch_23
        0x3a0 -> :sswitch_23
    .end sparse-switch
.end method

.method private static textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .registers 12
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 299
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 301
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 302
    .local v3, "index":I
    const/4 v4, 0x0

    .line 303
    .local v4, "end":Z
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 304
    .local v5, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    :goto_13
    aget v6, p0, v0

    if-ge p1, v6, :cond_73

    if-nez v4, :cond_73

    .line 305
    add-int/lit8 v6, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v6, "codeIndex":I
    aget p1, p0, p1

    .line 306
    .local p1, "code":I
    const/16 v7, 0x384

    if-ge p1, v7, :cond_2f

    .line 307
    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v3

    .line 308
    add-int/lit8 v7, v3, 0x1

    rem-int/lit8 v8, p1, 0x1e

    aput v8, v1, v7

    .line 309
    add-int/lit8 v3, v3, 0x2

    move p1, v6

    goto :goto_72

    .line 311
    :cond_2f
    sparse-switch p1, :sswitch_data_78

    move p1, v6

    goto :goto_72

    .line 338
    :sswitch_34
    invoke-static {v1, v2, v3, p2, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v5

    .line 339
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "codeIndex":I
    .local v7, "codeIndex":I
    aget v6, p0, v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 340
    aget v6, p0, v0

    if-gt v7, v6, :cond_54

    .line 343
    aget v6, p0, v0

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v1, v6, [I

    .line 344
    aget v6, p0, v0

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v2, v6, [I

    .line 345
    const/4 v3, 0x0

    move p1, v7

    goto :goto_72

    .line 341
    :cond_54
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 332
    .end local v7    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :sswitch_59
    const/16 v7, 0x391

    aput v7, v1, v3

    .line 333
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "codeIndex":I
    .restart local v7    # "codeIndex":I
    aget p1, p0, v6

    .line 334
    aput p1, v2, v3

    .line 335
    add-int/lit8 v3, v3, 0x1

    .line 336
    move p1, v7

    goto :goto_72

    .line 322
    .end local v7    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :sswitch_67
    add-int/lit8 v6, v6, -0x1

    .line 323
    const/4 v4, 0x1

    .line 324
    move p1, v6

    goto :goto_72

    .line 314
    :sswitch_6c
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    aput v7, v1, v3

    .line 315
    move p1, v6

    move v3, v8

    .line 349
    .end local v6    # "codeIndex":I
    .end local v8    # "index":I
    .restart local v3    # "index":I
    .local p1, "codeIndex":I
    :goto_72
    goto :goto_13

    .line 350
    :cond_73
    invoke-static {v1, v2, v3, p2, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 351
    return p1

    nop

    :sswitch_data_78
    .sparse-switch
        0x384 -> :sswitch_6c
        0x385 -> :sswitch_67
        0x386 -> :sswitch_67
        0x391 -> :sswitch_59
        0x39a -> :sswitch_67
        0x39b -> :sswitch_67
        0x39c -> :sswitch_67
        0x39f -> :sswitch_34
        0x3a0 -> :sswitch_67
    .end sparse-switch
.end method
