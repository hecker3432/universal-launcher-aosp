.class public final Lcom/google/zxing/common/ECIEncoderSet;
.super Ljava/lang/Object;
.source "ECIEncoderSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENCODERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encoders:[Ljava/nio/charset/CharsetEncoder;

.field private final priorityEncoderIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 40
    nop

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    .line 45
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IBM437"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ISO-8859-2"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "ISO-8859-3"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "ISO-8859-4"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "ISO-8859-5"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "ISO-8859-6"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "ISO-8859-7"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "ISO-8859-8"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "ISO-8859-9"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "ISO-8859-10"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "ISO-8859-11"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "ISO-8859-13"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "ISO-8859-14"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "ISO-8859-15"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "ISO-8859-16"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "windows-1250"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "windows-1251"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "windows-1252"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "windows-1256"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v3, "Shift_JIS"

    aput-object v3, v0, v1

    .line 65
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    :goto_7d
    if-ge v2, v1, :cond_99

    aget-object v3, v0, v2

    .line 66
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    if-eqz v4, :cond_96

    .line 68
    :try_start_87
    sget-object v4, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_87 .. :try_end_94} :catch_95

    .line 71
    goto :goto_96

    .line 69
    :catch_95
    move-exception v4

    .line 65
    .end local v3    # "name":Ljava/lang/String;
    :cond_96
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 74
    .end local v0    # "names":[Ljava/lang/String;
    :cond_99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .registers 14
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "fnc1"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "neededEncoders":Ljava/util/List;, "Ljava/util/List<Ljava/nio/charset/CharsetEncoder;>;"
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .line 95
    .local v3, "needUnicodeEncoder":Z
    :goto_24
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, "canEncode":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    .line 98
    .local v7, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 99
    .local v8, "c":C
    if-eq v8, p3, :cond_4a

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v9

    if-eqz v9, :cond_49

    goto :goto_4a

    .line 103
    .end local v7    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v8    # "c":C
    :cond_49
    goto :goto_30

    .line 100
    .restart local v7    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v8    # "c":C
    :cond_4a
    :goto_4a
    const/4 v5, 0x1

    .line 101
    nop

    .line 105
    .end local v7    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v8    # "c":C
    :cond_4c
    if-nez v5, :cond_70

    .line 107
    sget-object v6, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    .line 108
    .restart local v7    # "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 111
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v5, 0x1

    .line 113
    goto :goto_70

    .line 115
    .end local v7    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_6f
    goto :goto_54

    .line 118
    :cond_70
    :goto_70
    if-nez v5, :cond_73

    .line 121
    const/4 v3, 0x1

    .line 95
    .end local v5    # "canEncode":Z
    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 125
    .end local v4    # "i":I
    :cond_76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_8b

    if-nez v3, :cond_8b

    .line 127
    new-array v2, v2, [Ljava/nio/charset/CharsetEncoder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/CharsetEncoder;

    aput-object v4, v2, v1

    iput-object v2, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    goto :goto_c4

    .line 131
    :cond_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/nio/charset/CharsetEncoder;

    iput-object v1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/CharsetEncoder;

    .line 134
    .local v4, "encoder":Ljava/nio/charset/CharsetEncoder;
    iget-object v5, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    aput-object v4, v5, v1

    .line 135
    .end local v4    # "encoder":Ljava/nio/charset/CharsetEncoder;
    move v1, v6

    goto :goto_9a

    .line 137
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_ae
    iget-object v2, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    aput-object v4, v2, v1

    .line 138
    iget-object v2, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    aput-object v5, v2, v4

    .line 142
    .end local v1    # "index":I
    :goto_c4
    const/4 v1, -0x1

    .line 143
    .local v1, "priorityEncoderIndexValue":I
    if-eqz p2, :cond_ee

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c8
    iget-object v4, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v4, v4

    if-ge v2, v4, :cond_ee

    .line 145
    iget-object v4, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v4, v4, v2

    if-eqz v4, :cond_eb

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 146
    move v1, v2

    .line 147
    goto :goto_ee

    .line 144
    :cond_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 151
    .end local v2    # "i":I
    :cond_ee
    :goto_ee
    iput v1, p0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    .line 153
    nop

    .line 154
    return-void
.end method


# virtual methods
.method public canEncode(CI)Z
    .registers 6
    .param p1, "c"    # C
    .param p2, "encoderIndex"    # I

    .line 182
    nop

    .line 183
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p2

    .line 184
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public encode(CI)[B
    .registers 6
    .param p1, "c"    # C
    .param p2, "encoderIndex"    # I

    .line 188
    nop

    .line 189
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p2

    .line 190
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    nop

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/String;I)[B
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "encoderIndex"    # I

    .line 195
    nop

    .line 196
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p2

    .line 197
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public getCharset(I)Ljava/nio/charset/Charset;
    .registers 3
    .param p1, "index"    # I

    .line 166
    nop

    .line 167
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 161
    nop

    .line 162
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getECIValue(I)I
    .registers 3
    .param p1, "encoderIndex"    # I

    .line 171
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    return v0
.end method

.method public getPriorityEncoderIndex()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    return v0
.end method

.method public length()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, v0

    return v0
.end method
