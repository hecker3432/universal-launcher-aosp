.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 10
    .param p1, "contents"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    .local v0, "length":I
    packed-switch v0, :pswitch_data_a8

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested contents should be 7 or 8 digits long, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_20
    :try_start_20
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 68
    goto :goto_4f

    .line 64
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Contents do not pass checksum"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "length":I
    .end local p1    # "contents":Ljava/lang/String;
    throw v1
    :try_end_2f
    .catch Lcom/google/zxing/FormatException; {:try_start_20 .. :try_end_2f} :catch_2f

    .line 66
    .restart local v0    # "length":I
    .restart local p1    # "contents":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 67
    .local v1, "ignored":Lcom/google/zxing/FormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal contents"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v1    # "ignored":Lcom/google/zxing/FormatException;
    :pswitch_38
    :try_start_38
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v1
    :try_end_3c
    .catch Lcom/google/zxing/FormatException; {:try_start_38 .. :try_end_3c} :catch_9f

    .line 58
    .local v1, "check":I
    nop

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    nop

    .line 75
    .end local v1    # "check":I
    :goto_4f
    invoke-static {p1}, Lcom/google/zxing/oned/EAN8Writer;->checkNumeric(Ljava/lang/String;)V

    .line 77
    const/16 v1, 0x43

    new-array v1, v1, [Z

    .line 78
    .local v1, "result":[Z
    const/4 v2, 0x0

    .line 80
    .local v2, "pos":I
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 82
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    const/4 v5, 0x3

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-gt v3, v5, :cond_7a

    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 84
    .local v5, "digit":I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v6, v6, v5

    invoke-static {v1, v2, v6, v7}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v2, v6

    .line 82
    .end local v5    # "digit":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 87
    .end local v3    # "i":I
    :cond_7a
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v1, v2, v3, v7}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 89
    const/4 v3, 0x4

    .restart local v3    # "i":I
    :goto_82
    const/4 v5, 0x7

    if-gt v3, v5, :cond_99

    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 91
    .restart local v5    # "digit":I
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v7, v7, v5

    invoke-static {v1, v2, v7, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v2, v7

    .line 89
    .end local v5    # "digit":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 93
    .end local v3    # "i":I
    :cond_99
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v1, v2, v3, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    .line 95
    return-object v1

    .line 56
    .end local v1    # "result":[Z
    .end local v2    # "pos":I
    :catch_9f
    move-exception v1

    .line 57
    .local v1, "fe":Lcom/google/zxing/FormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a7

    :goto_a6
    throw v2

    :goto_a7
    goto :goto_a6

    :pswitch_data_a8
    .packed-switch 0x7
        :pswitch_38
        :pswitch_20
    .end packed-switch
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
