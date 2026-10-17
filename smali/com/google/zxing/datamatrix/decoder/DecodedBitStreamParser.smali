.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_28

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 63
    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_54

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 72
    new-array v0, v0, [C

    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 79
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    .line 81
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_28
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_54
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_74
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_a0
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .registers 16
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 91
    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v1, Lcom/google/zxing/common/ECIStringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    .line 92
    .local v1, "result":Lcom/google/zxing/common/ECIStringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 92
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v2, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 93
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 96
    .local v5, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v7, "fnc1Positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 100
    .local v8, "isECIencoded":Z
    :cond_28
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v5, v9, :cond_31

    .line 101
    invoke-static {v0, v1, v2, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/lang/StringBuilder;Ljava/util/Set;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v5

    goto :goto_5d

    .line 103
    :cond_31
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_e0

    .line 124
    move-object v10, p0

    .end local p0    # "bytes":[B
    .local v10, "bytes":[B
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 120
    .end local v10    # "bytes":[B
    .restart local p0    # "bytes":[B
    :pswitch_42
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeECISegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    .line 121
    const/4 v8, 0x1

    .line 122
    goto :goto_5b

    .line 117
    :pswitch_47
    invoke-static {v0, v1, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Collection;)V

    .line 118
    goto :goto_5b

    .line 114
    :pswitch_4b
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    .line 115
    goto :goto_5b

    .line 111
    :pswitch_4f
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    .line 112
    goto :goto_5b

    .line 108
    :pswitch_53
    invoke-static {v0, v1, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V

    .line 109
    goto :goto_5b

    .line 105
    :pswitch_57
    invoke-static {v0, v1, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V

    .line 106
    nop

    .line 126
    :goto_5b
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 128
    :goto_5d
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v5, v9, :cond_67

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-gtz v9, :cond_28

    .line 129
    :cond_67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_70

    .line 130
    invoke-virtual {v1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendCharacters(Ljava/lang/StringBuilder;)V

    .line 132
    :cond_70
    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eqz v8, :cond_9f

    .line 135
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    goto :goto_9c

    .line 137
    :cond_85
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    goto :goto_99

    .line 140
    :cond_96
    const/4 v4, 0x4

    move v14, v4

    .local v4, "symbologyModifier":I
    goto :goto_c9

    .line 138
    .end local v4    # "symbologyModifier":I
    :cond_99
    :goto_99
    const/4 v4, 0x6

    move v14, v4

    .restart local v4    # "symbologyModifier":I
    goto :goto_c9

    .line 136
    .end local v4    # "symbologyModifier":I
    :cond_9c
    :goto_9c
    const/4 v4, 0x5

    move v14, v4

    .restart local v4    # "symbologyModifier":I
    goto :goto_c9

    .line 143
    .end local v4    # "symbologyModifier":I
    :cond_9f
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    goto :goto_c7

    .line 145
    :cond_b0
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c1

    goto :goto_c4

    .line 148
    :cond_c1
    const/4 v4, 0x1

    move v14, v4

    .restart local v4    # "symbologyModifier":I
    goto :goto_c9

    .line 146
    .end local v4    # "symbologyModifier":I
    :cond_c4
    :goto_c4
    const/4 v4, 0x3

    move v14, v4

    .restart local v4    # "symbologyModifier":I
    goto :goto_c9

    .line 144
    .end local v4    # "symbologyModifier":I
    :cond_c7
    :goto_c7
    const/4 v4, 0x2

    move v14, v4

    .line 152
    .local v14, "symbologyModifier":I
    :goto_c9
    new-instance v9, Lcom/google/zxing/common/DecoderResult;

    .line 153
    invoke-virtual {v1}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d8

    const/4 v4, 0x0

    move-object v12, v4

    goto :goto_d9

    :cond_d8
    move-object v12, v3

    :goto_d9
    const/4 v13, 0x0

    move-object v10, p0

    .end local p0    # "bytes":[B
    .restart local v10    # "bytes":[B
    invoke-direct/range {v9 .. v14}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 152
    return-object v9

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_42
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .registers 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 430
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 433
    .local v1, "cValues":[I
    :cond_3
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    .line 434
    return-void

    .line 436
    :cond_c
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 437
    .local v2, "firstByte":I
    const/16 v4, 0xfe

    if-ne v2, v4, :cond_15

    .line 438
    return-void

    .line 441
    :cond_15
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 443
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_59

    .line 444
    aget v4, v1, v3

    .line 445
    .local v4, "cValue":I
    packed-switch v4, :pswitch_data_60

    .line 459
    const/16 v5, 0xe

    if-ge v4, v5, :cond_47

    .line 460
    add-int/lit8 v5, v4, 0x2c

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_51

    .line 456
    :pswitch_2f
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 457
    goto :goto_51

    .line 453
    :pswitch_35
    const/16 v5, 0x3e

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 454
    goto :goto_51

    .line 450
    :pswitch_3b
    const/16 v5, 0x2a

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 451
    goto :goto_51

    .line 447
    :pswitch_41
    const/16 v5, 0xd

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 448
    goto :goto_51

    .line 461
    :cond_47
    const/16 v5, 0x28

    if-ge v4, v5, :cond_54

    .line 462
    add-int/lit8 v5, v4, 0x33

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 443
    .end local v4    # "cValue":I
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 464
    .restart local v4    # "cValue":I
    :cond_54
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 469
    .end local v2    # "firstByte":I
    .end local v3    # "i":I
    .end local v4    # "cValue":I
    :cond_59
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_3

    .line 470
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
    .end packed-switch
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/lang/StringBuilder;Ljava/util/Set;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .param p2, "resultTrailer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 166
    .local p3, "fnc1positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 168
    .local v0, "upperShift":Z
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 169
    .local v1, "oneByte":I
    if-eqz v1, :cond_8b

    .line 171
    const/16 v2, 0x80

    if-gt v1, v2, :cond_1a

    .line 172
    if-eqz v0, :cond_11

    .line 173
    add-int/lit16 v1, v1, 0x80

    .line 176
    :cond_11
    add-int/lit8 v2, v1, -0x1

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 177
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 178
    :cond_1a
    const/16 v2, 0x81

    if-ne v1, v2, :cond_21

    .line 179
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 180
    :cond_21
    const/16 v2, 0xe5

    if-gt v1, v2, :cond_34

    .line 181
    add-int/lit16 v2, v1, -0x82

    .line 182
    .local v2, "value":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_30

    .line 183
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 185
    :cond_30
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(I)V

    .line 186
    .end local v2    # "value":I
    goto :goto_7d

    .line 187
    :cond_34
    const-string v2, "\u001e\u0004"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_92

    .line 223
    const/16 v2, 0xfe

    if-ne v1, v2, :cond_86

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-nez v2, :cond_86

    goto :goto_7d

    .line 219
    :pswitch_45
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ECI_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 217
    :pswitch_48
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 215
    :pswitch_4b
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 213
    :pswitch_4e
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 209
    :pswitch_51
    const-string v4, "[)>\u001e06\u001d"

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    goto :goto_7d

    .line 205
    :pswitch_5a
    const-string v4, "[)>\u001e05\u001d"

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    goto :goto_7d

    .line 202
    :pswitch_63
    const/4 v0, 0x1

    .line 203
    goto :goto_7d

    .line 200
    :pswitch_65
    goto :goto_7d

    .line 193
    :pswitch_66
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 195
    goto :goto_7d

    .line 191
    :pswitch_77
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 189
    :pswitch_7a
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v2

    .line 229
    .end local v1    # "oneByte":I
    :goto_7d
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gtz v1, :cond_1

    .line 230
    sget-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v1

    .line 224
    .restart local v1    # "oneByte":I
    :cond_86
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 170
    :cond_8b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    goto :goto_91

    :goto_90
    throw v2

    :goto_91
    goto :goto_90

    :pswitch_data_92
    .packed-switch 0xe6
        :pswitch_7a
        :pswitch_77
        :pswitch_66
        :pswitch_65
        :pswitch_65
        :pswitch_63
        :pswitch_5a
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Collection;)V
    .registers 11
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 521
    .local p2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 522
    .local v0, "codewordPosition":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "codewordPosition":I
    .local v3, "codewordPosition":I
    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v0

    .line 524
    .local v0, "d1":I
    if-nez v0, :cond_1a

    .line 525
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    div-int/2addr v2, v1

    .local v2, "count":I
    goto :goto_30

    .line 526
    .end local v2    # "count":I
    :cond_1a
    const/16 v2, 0xfa

    if-ge v0, v2, :cond_20

    .line 527
    move v2, v0

    .restart local v2    # "count":I
    goto :goto_30

    .line 529
    .end local v2    # "count":I
    :cond_20
    add-int/lit16 v4, v0, -0xf9

    mul-int/lit16 v4, v4, 0xfa

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "codewordPosition":I
    .local v5, "codewordPosition":I
    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v2

    add-int/2addr v2, v4

    move v3, v5

    .line 533
    .end local v5    # "codewordPosition":I
    .restart local v2    # "count":I
    .restart local v3    # "codewordPosition":I
    :goto_30
    if-ltz v2, :cond_61

    .line 537
    new-array v4, v2, [B

    .line 538
    .local v4, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_35
    if-ge v5, v2, :cond_53

    .line 541
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-lt v6, v1, :cond_4e

    .line 544
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "codewordPosition":I
    .local v7, "codewordPosition":I
    invoke-static {v6, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 538
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_35

    .line 542
    .end local v7    # "codewordPosition":I
    .restart local v3    # "codewordPosition":I
    :cond_4e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 546
    .end local v5    # "i":I
    :cond_53
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v1, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 548
    return-void

    .line 534
    .end local v4    # "bytes":[B
    :cond_61
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    goto :goto_67

    :goto_66
    throw v1

    :goto_67
    goto :goto_66
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V
    .registers 12
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 241
    .local p2, "fnc1positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 243
    .local v0, "upperShift":Z
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 244
    .local v2, "cValues":[I
    const/4 v3, 0x0

    .line 248
    .local v3, "shift":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    .line 249
    return-void

    .line 251
    :cond_e
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 252
    .local v4, "firstByte":I
    const/16 v6, 0xfe

    if-ne v4, v6, :cond_17

    .line 253
    return-void

    .line 256
    :cond_17
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 258
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v1, :cond_a6

    .line 259
    aget v6, v2, v5

    .line 260
    .local v6, "cValue":I
    packed-switch v3, :pswitch_data_ae

    .line 319
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 310
    :pswitch_2b
    if-eqz v0, :cond_35

    .line 311
    add-int/lit16 v7, v6, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 312
    const/4 v0, 0x0

    goto :goto_3b

    .line 314
    :cond_35
    add-int/lit8 v7, v6, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 316
    :goto_3b
    const/4 v3, 0x0

    .line 317
    goto :goto_9d

    .line 286
    :pswitch_3d
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_54

    .line 287
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 288
    .local v7, "c40char":C
    if-eqz v0, :cond_50

    .line 289
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 290
    const/4 v0, 0x0

    goto :goto_53

    .line 292
    :cond_50
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 294
    .end local v7    # "c40char":C
    :goto_53
    goto :goto_6f

    .line 295
    :cond_54
    sparse-switch v6, :sswitch_data_ba

    .line 304
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 301
    :sswitch_5c
    const/4 v0, 0x1

    .line 302
    goto :goto_6f

    .line 297
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 299
    nop

    .line 307
    :goto_6f
    const/4 v3, 0x0

    .line 308
    goto :goto_9d

    .line 277
    :pswitch_71
    if-eqz v0, :cond_7b

    .line 278
    add-int/lit16 v7, v6, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 279
    const/4 v0, 0x0

    goto :goto_7f

    .line 281
    :cond_7b
    int-to-char v7, v6

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 283
    :goto_7f
    const/4 v3, 0x0

    .line 284
    goto :goto_9d

    .line 262
    :pswitch_81
    if-ge v6, v1, :cond_86

    .line 263
    add-int/lit8 v3, v6, 0x1

    goto :goto_9d

    .line 264
    :cond_86
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_a1

    .line 265
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 266
    .restart local v7    # "c40char":C
    if-eqz v0, :cond_99

    .line 267
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 268
    const/4 v0, 0x0

    goto :goto_9c

    .line 270
    :cond_99
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 272
    .end local v7    # "c40char":C
    :goto_9c
    nop

    .line 258
    .end local v6    # "cValue":I
    :goto_9d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1f

    .line 273
    .restart local v6    # "cValue":I
    :cond_a1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 322
    .end local v4    # "firstByte":I
    .end local v5    # "i":I
    .end local v6    # "cValue":I
    :cond_a6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_5

    .line 323
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_81
        :pswitch_71
        :pswitch_3d
        :pswitch_2b
    .end packed-switch

    :sswitch_data_ba
    .sparse-switch
        0x1b -> :sswitch_5e
        0x1e -> :sswitch_5c
    .end sparse-switch
.end method

.method private static decodeECISegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .registers 4
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_16

    .line 559
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 560
    .local v0, "c1":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_15

    .line 561
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 577
    :cond_15
    return-void

    .line 557
    .end local v0    # "c1":I
    :cond_16
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .registers 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;

    .line 488
    nop

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_a

    .line 489
    return-void

    .line 492
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/4 v1, 0x4

    if-ge v0, v1, :cond_32

    .line 493
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 496
    .local v1, "edifactValue":I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_25

    .line 498
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v2

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 499
    .local v2, "bitsLeft":I
    if-eq v2, v3, :cond_24

    .line 500
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 502
    :cond_24
    return-void

    .line 505
    .end local v2    # "bitsLeft":I
    :cond_25
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_2b

    .line 506
    or-int/lit8 v1, v1, 0x40

    .line 508
    :cond_2b
    int-to-char v2, v1

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 492
    .end local v1    # "edifactValue":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 510
    .end local v0    # "i":I
    :cond_32
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-gtz v0, :cond_1

    .line 511
    return-void
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V
    .registers 12
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Lcom/google/zxing/common/ECIStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 333
    .local p2, "fnc1positions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 335
    .local v0, "upperShift":Z
    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 336
    .local v2, "cValues":[I
    const/4 v3, 0x0

    .line 339
    .local v3, "shift":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    .line 340
    return-void

    .line 342
    :cond_e
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 343
    .local v4, "firstByte":I
    const/16 v6, 0xfe

    if-ne v4, v6, :cond_17

    .line 344
    return-void

    .line 347
    :cond_17
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 349
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v1, :cond_b1

    .line 350
    aget v6, v2, v5

    .line 351
    .local v6, "cValue":I
    packed-switch v3, :pswitch_data_b8

    .line 416
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 402
    :pswitch_2b
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_43

    .line 403
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 404
    .local v7, "textChar":C
    if-eqz v0, :cond_3e

    .line 405
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 406
    const/4 v0, 0x0

    goto :goto_41

    .line 408
    :cond_3e
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 410
    :goto_41
    const/4 v3, 0x0

    .line 411
    .end local v7    # "textChar":C
    goto :goto_a8

    .line 412
    :cond_43
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 378
    :pswitch_48
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_5f

    .line 379
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 380
    .restart local v7    # "textChar":C
    if-eqz v0, :cond_5b

    .line 381
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 382
    const/4 v0, 0x0

    goto :goto_5e

    .line 384
    :cond_5b
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 386
    .end local v7    # "textChar":C
    :goto_5e
    goto :goto_7a

    .line 387
    :cond_5f
    sparse-switch v6, :sswitch_data_c4

    .line 396
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 393
    :sswitch_67
    const/4 v0, 0x1

    .line 394
    goto :goto_7a

    .line 389
    :sswitch_69
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 391
    nop

    .line 399
    :goto_7a
    const/4 v3, 0x0

    .line 400
    goto :goto_a8

    .line 368
    :pswitch_7c
    if-eqz v0, :cond_86

    .line 369
    add-int/lit16 v7, v6, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 370
    const/4 v0, 0x0

    goto :goto_8a

    .line 372
    :cond_86
    int-to-char v7, v6

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 374
    :goto_8a
    const/4 v3, 0x0

    .line 375
    goto :goto_a8

    .line 353
    :pswitch_8c
    if-ge v6, v1, :cond_91

    .line 354
    add-int/lit8 v3, v6, 0x1

    goto :goto_a8

    .line 355
    :cond_91
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v6, v7, :cond_ac

    .line 356
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v7, v7, v6

    .line 357
    .restart local v7    # "textChar":C
    if-eqz v0, :cond_a4

    .line 358
    add-int/lit16 v8, v7, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 359
    const/4 v0, 0x0

    goto :goto_a7

    .line 361
    :cond_a4
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 363
    .end local v7    # "textChar":C
    :goto_a7
    nop

    .line 349
    .end local v6    # "cValue":I
    :goto_a8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1f

    .line 364
    .restart local v6    # "cValue":I
    :cond_ac
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 419
    .end local v4    # "firstByte":I
    .end local v5    # "i":I
    .end local v6    # "cValue":I
    :cond_b1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_5

    .line 420
    return-void

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_7c
        :pswitch_48
        :pswitch_2b
    .end packed-switch

    :sswitch_data_c4
    .sparse-switch
        0x1b -> :sswitch_69
        0x1e -> :sswitch_67
    .end sparse-switch
.end method

.method private static parseTwoBytes(II[I)V
    .registers 7
    .param p0, "firstByte"    # I
    .param p1, "secondByte"    # I
    .param p2, "result"    # [I

    .line 473
    shl-int/lit8 v0, p0, 0x8

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 474
    .local v0, "fullBitValue":I
    div-int/lit16 v2, v0, 0x640

    .line 475
    .local v2, "temp":I
    const/4 v3, 0x0

    aput v2, p2, v3

    .line 476
    mul-int/lit16 v3, v2, 0x640

    sub-int/2addr v0, v3

    .line 477
    div-int/lit8 v2, v0, 0x28

    .line 478
    aput v2, p2, v1

    .line 479
    mul-int/lit8 v1, v2, 0x28

    sub-int v1, v0, v1

    const/4 v3, 0x2

    aput v1, p2, v3

    .line 480
    return-void
.end method

.method private static unrandomize255State(II)I
    .registers 5
    .param p0, "randomizedBase256Codeword"    # I
    .param p1, "base256CodewordPosition"    # I

    .line 585
    mul-int/lit16 v0, p1, 0x95

    rem-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 586
    .local v0, "pseudoRandomNumber":I
    sub-int v1, p0, v0

    .line 587
    .local v1, "tempVariable":I
    if-ltz v1, :cond_c

    move v2, v1

    goto :goto_e

    :cond_c
    add-int/lit16 v2, v1, 0x100

    :goto_e
    return v2
.end method
