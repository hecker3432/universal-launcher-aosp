.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 32
    new-array v1, v0, [C

    fill-array-data v1, :array_26

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 33
    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 34
    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    :array_1e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_26
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2e
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 14
    .param p1, "contents"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_24

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_a8

    .line 49
    :cond_24
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 50
    .local v0, "firstChar":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 51
    .local v1, "lastChar":C
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    .line 52
    .local v4, "startsNormal":Z
    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v5, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    .line 53
    .local v5, "endsNormal":Z
    sget-object v6, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v6

    .line 54
    .local v6, "startsAlt":Z
    sget-object v7, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v7, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v7

    .line 55
    .local v7, "endsAlt":Z
    const-string v8, "Invalid start/end guards: "

    if-eqz v4, :cond_6f

    .line 56
    if-eqz v5, :cond_58

    goto :goto_a8

    .line 57
    :cond_58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_6f
    if-eqz v6, :cond_8b

    .line 61
    if-eqz v7, :cond_74

    goto :goto_a8

    .line 62
    :cond_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_8b
    if-nez v5, :cond_17a

    if-nez v7, :cond_17a

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v9, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-char v9, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    .end local v0    # "firstChar":C
    .end local v1    # "lastChar":C
    .end local v4    # "startsNormal":Z
    .end local v5    # "endsNormal":Z
    .end local v6    # "startsAlt":Z
    .end local v7    # "endsAlt":Z
    :goto_a8
    const/16 v0, 0x14

    .line 77
    .local v0, "resultLength":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_ab
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_104

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_ff

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_ff

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_cd

    goto :goto_ff

    .line 80
    :cond_cd
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 81
    add-int/lit8 v0, v0, 0xa

    goto :goto_101

    .line 83
    :cond_dc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot encode : \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_ff
    :goto_ff
    add-int/lit8 v0, v0, 0x9

    .line 77
    :goto_101
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 87
    .end local v1    # "i":I
    :cond_104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 89
    new-array v1, v0, [Z

    .line 90
    .local v1, "result":[Z
    const/4 v4, 0x0

    .line 91
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_10e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_179

    .line 92
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 93
    .local v6, "c":C
    if-eqz v5, :cond_125

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-ne v5, v7, :cond_135

    .line 95
    :cond_125
    sparse-switch v6, :sswitch_data_194

    goto :goto_135

    .line 97
    :sswitch_129
    const/16 v6, 0x41

    .line 98
    goto :goto_135

    .line 100
    :sswitch_12c
    const/16 v6, 0x42

    .line 101
    goto :goto_135

    .line 106
    :sswitch_12f
    const/16 v6, 0x44

    goto :goto_135

    .line 103
    :sswitch_132
    const/16 v6, 0x43

    .line 104
    nop

    .line 110
    :cond_135
    :goto_135
    const/4 v7, 0x0

    .line 111
    .local v7, "code":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_137
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v9, v9

    if-ge v8, v9, :cond_14a

    .line 113
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v9, v9, v8

    if-ne v6, v9, :cond_147

    .line 114
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v7, v9, v8

    .line 115
    goto :goto_14a

    .line 111
    :cond_147
    add-int/lit8 v8, v8, 0x1

    goto :goto_137

    .line 118
    .end local v8    # "i":I
    :cond_14a
    :goto_14a
    const/4 v8, 0x1

    .line 119
    .local v8, "color":Z
    const/4 v9, 0x0

    .line 120
    .local v9, "counter":I
    const/4 v10, 0x0

    .line 121
    .local v10, "bit":I
    :goto_14d
    const/4 v11, 0x7

    if-ge v10, v11, :cond_16b

    .line 122
    aput-boolean v8, v1, v4

    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    rsub-int/lit8 v11, v10, 0x6

    shr-int v11, v7, v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_161

    if-ne v9, v3, :cond_15e

    goto :goto_161

    .line 129
    :cond_15e
    add-int/lit8 v9, v9, 0x1

    goto :goto_14d

    .line 125
    :cond_161
    :goto_161
    if-nez v8, :cond_165

    const/4 v11, 0x1

    goto :goto_166

    :cond_165
    const/4 v11, 0x0

    :goto_166
    move v8, v11

    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    const/4 v9, 0x0

    goto :goto_14d

    .line 132
    :cond_16b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    if-ge v5, v11, :cond_176

    .line 133
    aput-boolean v2, v1, v4

    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 91
    .end local v6    # "c":C
    .end local v7    # "code":I
    .end local v8    # "color":Z
    .end local v9    # "counter":I
    .end local v10    # "bit":I
    :cond_176
    add-int/lit8 v5, v5, 0x1

    goto :goto_10e

    .line 137
    .end local v5    # "index":I
    :cond_179
    return-object v1

    .line 68
    .local v0, "firstChar":C
    .local v1, "lastChar":C
    .local v4, "startsNormal":Z
    .local v5, "endsNormal":Z
    .local v6, "startsAlt":Z
    .local v7, "endsAlt":Z
    :cond_17a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_192

    :goto_191
    throw v2

    :goto_192
    goto :goto_191

    nop

    :sswitch_data_194
    .sparse-switch
        0x2a -> :sswitch_132
        0x45 -> :sswitch_12f
        0x4e -> :sswitch_12c
        0x54 -> :sswitch_129
    .end sparse-switch
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

    .line 38
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
