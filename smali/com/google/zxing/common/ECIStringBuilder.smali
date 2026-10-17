.class public final Lcom/google/zxing/common/ECIStringBuilder;
.super Ljava/lang/Object;
.source "ECIStringBuilder.java"


# instance fields
.field private currentBytes:Ljava/lang/StringBuilder;

.field private currentCharset:Ljava/nio/charset/Charset;

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method

.method private encodeCurrentBytesIfAny()V
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 94
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6b

    .line 95
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    if-nez v0, :cond_22

    .line 96
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 99
    :cond_22
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 103
    :cond_31
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6b

    .line 104
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 105
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    if-nez v1, :cond_5f

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 109
    :cond_5f
    iget-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .end local v0    # "bytes":[B
    :cond_6b
    :goto_6b
    return-void
.end method


# virtual methods
.method public append(B)V
    .registers 4
    .param p1, "value"    # B

    .line 56
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    return-void
.end method

.method public append(C)V
    .registers 4
    .param p1, "value"    # C

    .line 47
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return-void
.end method

.method public append(I)V
    .registers 3
    .param p1, "value"    # I

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method

.method public appendCharacters(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p0}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    .line 121
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 122
    return-void
.end method

.method public appendECI(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    .line 85
    invoke-static {p1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    .line 86
    .local v0, "characterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v0, :cond_10

    .line 89
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentCharset:Ljava/nio/charset/Charset;

    .line 90
    return-void

    .line 87
    :cond_10
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public length()I
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 142
    invoke-direct {p0}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    .line 143
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    if-nez v0, :cond_a

    const-string v0, ""

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method
