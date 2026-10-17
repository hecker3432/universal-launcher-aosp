.class final Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeChar(CLjava/lang/StringBuilder;)V
    .registers 3
    .param p0, "c"    # C
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 109
    const/16 v0, 0x20

    if-lt p0, v0, :cond_c

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_c

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 111
    :cond_c
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_1b

    .line 112
    add-int/lit8 v0, p0, -0x40

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 114
    :cond_1b
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    .line 116
    :goto_1e
    return-void
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 13
    .param p0, "sb"    # Ljava/lang/CharSequence;

    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 120
    .local v0, "len":I
    if-eqz v0, :cond_52

    .line 123
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 124
    .local v2, "c1":C
    const/4 v3, 0x2

    if-lt v0, v3, :cond_14

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    .line 125
    .local v4, "c2":C
    :goto_15
    const/4 v5, 0x3

    if-lt v0, v5, :cond_1d

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    .line 126
    .local v6, "c3":C
    :goto_1e
    const/4 v7, 0x4

    if-lt v0, v7, :cond_25

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 128
    .local v1, "c4":C
    :cond_25
    shl-int/lit8 v7, v2, 0x12

    shl-int/lit8 v8, v4, 0xc

    add-int/2addr v7, v8

    shl-int/lit8 v8, v6, 0x6

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    .line 129
    .local v7, "v":I
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 130
    .local v8, "cw1":C
    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    .line 131
    .local v9, "cw2":C
    and-int/lit16 v10, v7, 0xff

    int-to-char v10, v10

    .line 132
    .local v10, "cw3":C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v11, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    if-lt v0, v3, :cond_48

    .line 135
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_48
    if-lt v0, v5, :cond_4d

    .line 138
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_4d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 121
    .end local v1    # "c4":C
    .end local v2    # "c1":C
    .end local v4    # "c2":C
    .end local v6    # "c3":C
    .end local v7    # "v":I
    .end local v8    # "cw1":C
    .end local v9    # "cw2":C
    .end local v10    # "cw3":C
    .end local v11    # "res":Ljava/lang/StringBuilder;
    :cond_52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "StringBuilder must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V
    .registers 11
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .line 60
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_99

    .line 61
    .local v1, "count":I
    if-nez v1, :cond_b

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 62
    return-void

    .line 64
    :cond_b
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_43

    .line 66
    :try_start_f
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    sub-int/2addr v4, v5

    .line 68
    .local v4, "available":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v5

    .line 70
    .local v5, "remaining":I
    if-le v5, v4, :cond_3b

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_99

    sub-int v4, v6, v7

    .line 74
    :cond_3b
    if-gt v5, v4, :cond_43

    if-gt v4, v2, :cond_43

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 75
    return-void

    .line 79
    .end local v4    # "available":I
    .end local v5    # "remaining":I
    :cond_43
    const/4 v4, 0x4

    if-gt v1, v4, :cond_91

    .line 82
    add-int/lit8 v4, v1, -0x1

    .line 83
    .local v4, "restChars":I
    :try_start_48
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "encoded":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    xor-int/2addr v6, v3

    .line 85
    .local v6, "endOfSymbolReached":Z
    if-eqz v6, :cond_56

    if-gt v4, v2, :cond_56

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    .line 87
    .local v3, "restInAscii":Z
    :goto_57
    if-gt v4, v2, :cond_7e

    .line 88
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 89
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7

    sub-int/2addr v2, v7

    .line 90
    .local v2, "available":I
    const/4 v7, 0x3

    if-lt v2, v7, :cond_7e

    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 97
    .end local v2    # "available":I
    :cond_7e
    if-eqz v3, :cond_89

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 99
    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_8c

    .line 101
    :cond_89
    invoke-virtual {p0, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_48 .. :try_end_8c} :catchall_99

    .line 104
    .end local v1    # "count":I
    .end local v3    # "restInAscii":Z
    .end local v4    # "restChars":I
    .end local v5    # "encoded":Ljava/lang/String;
    .end local v6    # "endOfSymbolReached":Z
    :goto_8c
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 105
    nop

    .line 106
    return-void

    .line 80
    .restart local v1    # "count":I
    :cond_91
    :try_start_91
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Count must not exceed 4"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .end local p1    # "buffer":Ljava/lang/CharSequence;
    throw v2
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_99

    .line 104
    .end local v1    # "count":I
    .restart local p0    # "context":Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .restart local p1    # "buffer":Ljava/lang/CharSequence;
    :catchall_99
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 105
    throw v1
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 9
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    .local v1, "c":C
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeChar(CLjava/lang/StringBuilder;)V

    .line 33
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 36
    .local v2, "count":I
    const/4 v3, 0x4

    if-lt v2, v3, :cond_42

    .line 37
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 41
    .local v3, "newMode":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v5

    if-eq v3, v5, :cond_42

    .line 43
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 44
    goto :goto_43

    .line 47
    .end local v1    # "c":C
    .end local v2    # "count":I
    .end local v3    # "newMode":I
    :cond_42
    goto :goto_5

    .line 48
    :cond_43
    :goto_43
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public getEncodingMode()I
    .registers 2

    .line 23
    const/4 v0, 0x4

    return v0
.end method
