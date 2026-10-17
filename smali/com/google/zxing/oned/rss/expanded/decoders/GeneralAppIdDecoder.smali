.class final Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 3
    .param p1, "information"    # Lcom/google/zxing/common/BitArray;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    .line 44
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 45
    return-void
.end method

.method private decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .registers 7
    .param p1, "pos"    # I

    .line 386
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 387
    .local v1, "fiveBitValue":I
    const/16 v2, 0xf

    if-ne v1, v2, :cond_13

    .line 388
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x24

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v0

    .line 391
    :cond_13
    if-lt v1, v0, :cond_23

    if-ge v1, v2, :cond_23

    .line 392
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v4, v1, 0x30

    sub-int/2addr v4, v0

    int-to-char v0, v4

    invoke-direct {v2, v3, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    .line 395
    :cond_23
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 397
    .local v0, "sixBitValue":I
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3b

    const/16 v2, 0x3a

    if-ge v0, v2, :cond_3b

    .line 398
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x6

    add-int/lit8 v4, v0, 0x21

    int-to-char v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    .line 402
    :cond_3b
    packed-switch v0, :pswitch_data_6e

    .line 419
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoding invalid alphanumeric value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :pswitch_57
    const/16 v2, 0x2f

    .line 417
    .local v2, "c":C
    goto :goto_66

    .line 413
    .end local v2    # "c":C
    :pswitch_5a
    const/16 v2, 0x2e

    .line 414
    .restart local v2    # "c":C
    goto :goto_66

    .line 410
    .end local v2    # "c":C
    :pswitch_5d
    const/16 v2, 0x2d

    .line 411
    .restart local v2    # "c":C
    goto :goto_66

    .line 407
    .end local v2    # "c":C
    :pswitch_60
    const/16 v2, 0x2c

    .line 408
    .restart local v2    # "c":C
    goto :goto_66

    .line 404
    .end local v2    # "c":C
    :pswitch_63
    const/16 v2, 0x2a

    .line 405
    .restart local v2    # "c":C
    nop

    .line 421
    :goto_66
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v4, p1, 0x6

    invoke-direct {v3, v4, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v3

    :pswitch_data_6e
    .packed-switch 0x3a
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
    .end packed-switch
.end method

.method private decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .registers 8
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 276
    .local v1, "fiveBitValue":I
    const/16 v2, 0xf

    if-ne v1, v2, :cond_13

    .line 277
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x24

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v0

    .line 280
    :cond_13
    if-lt v1, v0, :cond_23

    if-ge v1, v2, :cond_23

    .line 281
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v4, v1, 0x30

    sub-int/2addr v4, v0

    int-to-char v0, v4

    invoke-direct {v2, v3, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    .line 284
    :cond_23
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 286
    .local v0, "sevenBitValue":I
    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v0, v2, :cond_3b

    if-ge v0, v3, :cond_3b

    .line 287
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x7

    add-int/lit8 v4, v0, 0x1

    int-to-char v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    .line 290
    :cond_3b
    if-lt v0, v3, :cond_4c

    const/16 v2, 0x74

    if-ge v0, v2, :cond_4c

    .line 291
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, p1, 0x7

    add-int/lit8 v4, v0, 0x7

    int-to-char v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    .line 294
    :cond_4c
    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 296
    .local v2, "eightBitValue":I
    packed-switch v2, :pswitch_data_a2

    .line 361
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 358
    :pswitch_5a
    const/16 v3, 0x20

    .line 359
    .local v3, "c":C
    goto :goto_99

    .line 355
    .end local v3    # "c":C
    :pswitch_5d
    const/16 v3, 0x5f

    .line 356
    .restart local v3    # "c":C
    goto :goto_99

    .line 352
    .end local v3    # "c":C
    :pswitch_60
    const/16 v3, 0x3f

    .line 353
    .restart local v3    # "c":C
    goto :goto_99

    .line 349
    .end local v3    # "c":C
    :pswitch_63
    const/16 v3, 0x3e

    .line 350
    .restart local v3    # "c":C
    goto :goto_99

    .line 346
    .end local v3    # "c":C
    :pswitch_66
    const/16 v3, 0x3d

    .line 347
    .restart local v3    # "c":C
    goto :goto_99

    .line 343
    .end local v3    # "c":C
    :pswitch_69
    const/16 v3, 0x3c

    .line 344
    .restart local v3    # "c":C
    goto :goto_99

    .line 340
    .end local v3    # "c":C
    :pswitch_6c
    const/16 v3, 0x3b

    .line 341
    .restart local v3    # "c":C
    goto :goto_99

    .line 337
    .end local v3    # "c":C
    :pswitch_6f
    const/16 v3, 0x3a

    .line 338
    .restart local v3    # "c":C
    goto :goto_99

    .line 334
    .end local v3    # "c":C
    :pswitch_72
    const/16 v3, 0x2f

    .line 335
    .restart local v3    # "c":C
    goto :goto_99

    .line 331
    .end local v3    # "c":C
    :pswitch_75
    const/16 v3, 0x2e

    .line 332
    .restart local v3    # "c":C
    goto :goto_99

    .line 328
    .end local v3    # "c":C
    :pswitch_78
    const/16 v3, 0x2d

    .line 329
    .restart local v3    # "c":C
    goto :goto_99

    .line 325
    .end local v3    # "c":C
    :pswitch_7b
    const/16 v3, 0x2c

    .line 326
    .restart local v3    # "c":C
    goto :goto_99

    .line 322
    .end local v3    # "c":C
    :pswitch_7e
    const/16 v3, 0x2b

    .line 323
    .restart local v3    # "c":C
    goto :goto_99

    .line 319
    .end local v3    # "c":C
    :pswitch_81
    const/16 v3, 0x2a

    .line 320
    .restart local v3    # "c":C
    goto :goto_99

    .line 316
    .end local v3    # "c":C
    :pswitch_84
    const/16 v3, 0x29

    .line 317
    .restart local v3    # "c":C
    goto :goto_99

    .line 313
    .end local v3    # "c":C
    :pswitch_87
    const/16 v3, 0x28

    .line 314
    .restart local v3    # "c":C
    goto :goto_99

    .line 310
    .end local v3    # "c":C
    :pswitch_8a
    const/16 v3, 0x27

    .line 311
    .restart local v3    # "c":C
    goto :goto_99

    .line 307
    .end local v3    # "c":C
    :pswitch_8d
    const/16 v3, 0x26

    .line 308
    .restart local v3    # "c":C
    goto :goto_99

    .line 304
    .end local v3    # "c":C
    :pswitch_90
    const/16 v3, 0x25

    .line 305
    .restart local v3    # "c":C
    goto :goto_99

    .line 301
    .end local v3    # "c":C
    :pswitch_93
    const/16 v3, 0x22

    .line 302
    .restart local v3    # "c":C
    goto :goto_99

    .line 298
    .end local v3    # "c":C
    :pswitch_96
    const/16 v3, 0x21

    .line 299
    .restart local v3    # "c":C
    nop

    .line 363
    :goto_99
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, p1, 0x8

    invoke-direct {v4, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v4

    nop

    :pswitch_data_a2
    .packed-switch 0xe8
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
    .end packed-switch
.end method

.method private decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    .registers 7
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 88
    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_2d

    .line 89
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 90
    .local v0, "numeric":I
    const/16 v1, 0xa

    if-nez v0, :cond_1f

    .line 91
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-direct {v2, v3, v1, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v2

    .line 93
    :cond_1f
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v2

    .line 95
    .end local v0    # "numeric":I
    :cond_2d
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 97
    .restart local v0    # "numeric":I
    add-int/lit8 v1, v0, -0x8

    div-int/lit8 v1, v1, 0xb

    .line 98
    .local v1, "digit1":I
    add-int/lit8 v2, v0, -0x8

    rem-int/lit8 v2, v2, 0xb

    .line 100
    .local v2, "digit2":I
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    add-int/lit8 v4, p1, 0x7

    invoke-direct {v3, v4, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v3
.end method

.method static extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I
    .registers 7
    .param p0, "information"    # Lcom/google/zxing/common/BitArray;
    .param p1, "pos"    # I
    .param p2, "bits"    # I

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_16

    .line 110
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 111
    sub-int v2, p2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v0, v2

    .line 109
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 115
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method private isAlphaOr646ToNumericLatch(I)Z
    .registers 5
    .param p1, "pos"    # I

    .line 444
    add-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 445
    return v2

    .line 448
    :cond_c
    move v0, p1

    .local v0, "i":I
    :goto_d
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_1d

    .line 449
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 450
    return v2

    .line 448
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 453
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private isAlphaTo646ToAlphaLatch(I)Z
    .registers 6
    .param p1, "pos"    # I

    .line 425
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 426
    return v2

    .line 429
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    const/4 v1, 0x5

    if-ge v0, v1, :cond_36

    add-int v1, v0, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 430
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 431
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 432
    return v2

    .line 434
    :cond_28
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v0

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 435
    return v2

    .line 429
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 439
    .end local v0    # "i":I
    :cond_36
    const/4 v0, 0x1

    return v0
.end method

.method private isNumericToAlphaNumericLatch(I)Z
    .registers 6
    .param p1, "pos"    # I

    .line 459
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 460
    return v2

    .line 463
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    const/4 v1, 0x4

    if-ge v0, v1, :cond_28

    add-int v1, v0, p1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 464
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int v3, p1, v0

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 465
    return v2

    .line 463
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 468
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method private isStillAlpha(I)Z
    .registers 8
    .param p1, "pos"    # I

    .line 367
    add-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 368
    return v2

    .line 372
    :cond_c
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 373
    .local v1, "fiveBitValue":I
    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_19

    if-ge v1, v4, :cond_19

    .line 374
    return v3

    .line 377
    :cond_19
    add-int/lit8 v0, p1, 0x6

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-le v0, v5, :cond_24

    .line 378
    return v2

    .line 381
    :cond_24
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 382
    .local v0, "sixBitValue":I
    if-lt v0, v4, :cond_30

    const/16 v4, 0x3f

    if-ge v0, v4, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2
.end method

.method private isStillIsoIec646(I)Z
    .registers 8
    .param p1, "pos"    # I

    .line 247
    add-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    .line 248
    return v2

    .line 251
    :cond_c
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 252
    .local v1, "fiveBitValue":I
    const/4 v3, 0x1

    if-lt v1, v0, :cond_19

    const/16 v0, 0x10

    if-ge v1, v0, :cond_19

    .line 253
    return v3

    .line 256
    :cond_19
    add-int/lit8 v0, p1, 0x7

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v0, v4, :cond_24

    .line 257
    return v2

    .line 260
    :cond_24
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    .line 261
    .local v0, "sevenBitValue":I
    const/16 v4, 0x40

    if-lt v0, v4, :cond_32

    const/16 v4, 0x74

    if-ge v0, v4, :cond_32

    .line 262
    return v3

    .line 265
    :cond_32
    add-int/lit8 v4, p1, 0x8

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-le v4, v5, :cond_3d

    .line 266
    return v2

    .line 269
    :cond_3d
    const/16 v4, 0x8

    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v4

    .line 270
    .local v4, "eightBitValue":I
    const/16 v5, 0xe8

    if-lt v4, v5, :cond_4c

    const/16 v5, 0xfd

    if-ge v4, v5, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2
.end method

.method private isStillNumeric(I)Z
    .registers 5
    .param p1, "pos"    # I

    .line 74
    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_18

    .line 75
    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-gt v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2

    .line 78
    :cond_18
    move v0, p1

    .local v0, "i":I
    :goto_19
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_29

    .line 79
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 80
    return v2

    .line 78
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 84
    .end local v0    # "i":I
    :cond_29
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 5

    .line 219
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 220
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 221
    .local v0, "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 223
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 224
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 225
    .local v1, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v2

    .line 228
    .end local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_3e
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .end local v0    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    goto :goto_1

    .line 231
    :cond_48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 232
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 233
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    goto :goto_92

    .line 234
    :cond_60
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 235
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_82

    .line 236
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    goto :goto_8d

    .line 238
    :cond_82
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 241
    :goto_8d
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V

    .line 243
    :cond_92
    :goto_92
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>()V

    return-object v0
.end method

.method private parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 139
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    .line 141
    .local v0, "initialPosition":I
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 142
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 143
    .local v1, "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    .local v2, "isFinished":Z
    goto :goto_31

    .line 144
    .end local v1    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .end local v2    # "isFinished":Z
    :cond_18
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 145
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 146
    .restart local v1    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    .restart local v2    # "isFinished":Z
    goto :goto_31

    .line 148
    .end local v1    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .end local v2    # "isFinished":Z
    :cond_29
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 149
    .restart local v1    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    .line 152
    .restart local v2    # "isFinished":Z
    :goto_31
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 153
    .local v3, "positionChanged":Z
    :goto_3c
    if-nez v3, :cond_41

    if-nez v2, :cond_41

    .line 154
    goto :goto_43

    .line 156
    .end local v0    # "initialPosition":I
    .end local v3    # "positionChanged":Z
    :cond_41
    if-eqz v2, :cond_1

    .line 158
    :goto_43
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v0

    return-object v0
.end method

.method private parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 192
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 193
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 194
    .local v0, "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 196
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 197
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 198
    .local v1, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v2

    .line 200
    .end local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_3e
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .end local v0    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    goto :goto_1

    .line 203
    :cond_48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 204
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 205
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    goto :goto_92

    .line 206
    :cond_60
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 207
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_82

    .line 208
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    goto :goto_8d

    .line 210
    :cond_82
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 213
    :goto_8d
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 215
    :cond_92
    :goto_92
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>()V

    return-object v0
.end method

.method private parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 162
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 163
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-result-object v0

    .line 164
    .local v0, "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 166
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5a

    .line 168
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 169
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .local v1, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    goto :goto_54

    .line 171
    .end local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_3f
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    .line 173
    .restart local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_54
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v3

    .line 175
    .end local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_5a
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 178
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 179
    .restart local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v3

    .line 181
    .end local v1    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_80
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .end local v0    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    goto/16 :goto_1

    .line 184
    :cond_8b
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 185
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 186
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 188
    :cond_a2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>()V

    return-object v0
.end method


# virtual methods
.method decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 8
    .param p1, "buff"    # Ljava/lang/StringBuilder;
    .param p2, "initialPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 48
    move v0, p2

    .line 49
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .line 51
    .local v1, "remaining":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v2

    .line 52
    .local v2, "info":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "parsedFields":Ljava/lang/String;
    if-eqz v3, :cond_13

    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_13
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 57
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 59
    :cond_22
    const/4 v1, 0x0

    .line 62
    :goto_23
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v4

    if-ne v0, v4, :cond_2f

    .line 63
    nop

    .line 68
    .end local v2    # "info":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .end local v3    # "parsedFields":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 65
    .restart local v2    # "info":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .restart local v3    # "parsedFields":Ljava/lang/String;
    :cond_2f
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v0

    .line 66
    .end local v2    # "info":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .end local v3    # "parsedFields":Ljava/lang/String;
    goto :goto_2
.end method

.method decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .registers 8
    .param p1, "pos"    # I
    .param p2, "remaining"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    if-eqz p2, :cond_d

    .line 122
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_d
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 127
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v0

    .line 128
    .local v0, "lastDecoded":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 129
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    .line 129
    return-object v1

    .line 132
    :cond_34
    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method extractNumericValueFromBitArray(II)I
    .registers 4
    .param p1, "pos"    # I
    .param p2, "bits"    # I

    .line 104
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-static {v0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v0

    return v0
.end method
