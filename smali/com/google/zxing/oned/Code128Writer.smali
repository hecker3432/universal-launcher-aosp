.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;,
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static check(Ljava/lang/String;Ljava/util/Map;)I
    .registers 9
    .param p0, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)I"
        }
    .end annotation

    .line 86
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    const/4 v0, -0x1

    .line 87
    .local v0, "forcedCodeSet":I
    if-eqz p1, :cond_61

    sget-object v1, Lcom/google/zxing/EncodeHintType;->FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 88
    sget-object v1, Lcom/google/zxing/EncodeHintType;->FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "codeSetHint":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_106

    :cond_1c
    goto :goto_3b

    :pswitch_1d
    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x2

    goto :goto_3c

    :pswitch_27
    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_3c

    :pswitch_31
    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_3c

    :goto_3b
    const/4 v2, -0x1

    :goto_3c
    packed-switch v2, :pswitch_data_110

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported code set hint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :pswitch_58
    const/16 v0, 0x63

    .line 98
    goto :goto_61

    .line 94
    :pswitch_5b
    const/16 v0, 0x64

    .line 95
    goto :goto_61

    .line 91
    :pswitch_5e
    const/16 v0, 0x65

    .line 92
    nop

    .line 105
    .end local v1    # "codeSetHint":Ljava/lang/String;
    :cond_61
    :goto_61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 106
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    if-ge v2, v1, :cond_105

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 109
    .local v3, "c":C
    const/16 v4, 0x7f

    packed-switch v3, :pswitch_data_11a

    .line 118
    if-gt v3, v4, :cond_ec

    goto :goto_75

    .line 115
    :pswitch_74
    nop

    .line 125
    :goto_75
    packed-switch v0, :pswitch_data_126

    goto/16 :goto_e8

    .line 128
    :pswitch_7a
    const/16 v5, 0x5f

    if-le v3, v5, :cond_e8

    if-le v3, v4, :cond_81

    goto :goto_e8

    .line 129
    :cond_81
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad character in input for forced code set A: ASCII value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :pswitch_9a
    const/16 v4, 0x20

    if-lt v3, v4, :cond_9f

    goto :goto_e8

    .line 135
    :cond_9f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad character in input for forced code set B: ASCII value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :pswitch_b8
    const/16 v5, 0x30

    if-lt v3, v5, :cond_cf

    const/16 v5, 0x39

    if-le v3, v5, :cond_c2

    if-le v3, v4, :cond_cf

    :cond_c2
    const/16 v4, 0xf2

    if-eq v3, v4, :cond_cf

    const/16 v4, 0xf3

    if-eq v3, v4, :cond_cf

    const/16 v4, 0xf4

    if-eq v3, v4, :cond_cf

    goto :goto_e8

    .line 141
    :cond_cf
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad character in input for forced code set C: ASCII value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    .end local v3    # "c":C
    :cond_e8
    :goto_e8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_66

    .line 121
    .restart local v3    # "c":C
    :cond_ec
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad character in input: ASCII value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_105
    return v0

    :pswitch_data_106
    .packed-switch 0x41
        :pswitch_31
        :pswitch_27
        :pswitch_1d
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0xf1
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x63
        :pswitch_b8
        :pswitch_9a
        :pswitch_7a
    .end packed-switch
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "oldCode"    # I

    .line 301
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    .line 302
    .local v0, "lookahead":Lcom/google/zxing/oned/Code128Writer$CType;
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v2, 0x65

    const/16 v3, 0x64

    if-ne v0, v1, :cond_10

    .line 303
    if-ne p2, v2, :cond_f

    .line 304
    return v2

    .line 306
    :cond_f
    return v3

    .line 308
    :cond_10
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v1, :cond_32

    .line 309
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_31

    .line 310
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 311
    .local v1, "c":C
    const/16 v4, 0x20

    if-lt v1, v4, :cond_30

    if-ne p2, v2, :cond_31

    const/16 v4, 0x60

    if-lt v1, v4, :cond_30

    const/16 v4, 0xf1

    if-lt v1, v4, :cond_31

    const/16 v4, 0xf4

    if-gt v1, v4, :cond_31

    .line 313
    :cond_30
    return v2

    .line 316
    .end local v1    # "c":C
    :cond_31
    return v3

    .line 318
    :cond_32
    if-ne p2, v2, :cond_39

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v1, :cond_39

    .line 319
    return v2

    .line 321
    :cond_39
    const/16 v1, 0x63

    if-ne p2, v1, :cond_3e

    .line 322
    return v1

    .line 324
    :cond_3e
    if-ne p2, v3, :cond_79

    .line 325
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_45

    .line 326
    return v3

    .line 329
    :cond_45
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    .line 330
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v0, v2, :cond_78

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_54

    goto :goto_78

    .line 333
    :cond_54
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_64

    .line 334
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    .line 335
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_63

    .line 336
    return v1

    .line 338
    :cond_63
    return v3

    .line 343
    :cond_64
    add-int/lit8 v2, p1, 0x4

    .line 344
    .local v2, "index":I
    :goto_66
    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v4

    move-object v0, v4

    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v4, v5, :cond_72

    .line 345
    add-int/lit8 v2, v2, 0x2

    goto :goto_66

    .line 347
    :cond_72
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v4, :cond_77

    .line 348
    return v3

    .line 350
    :cond_77
    return v1

    .line 331
    .end local v2    # "index":I
    :cond_78
    :goto_78
    return v3

    .line 353
    :cond_79
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_83

    .line 354
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v0

    .line 356
    :cond_83
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v0, v2, :cond_88

    .line 357
    return v1

    .line 359
    :cond_88
    return v3
.end method

.method private static encodeFast(Ljava/lang/String;I)[Z
    .registers 11
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "forcedCodeSet"    # I

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v2, 0x0

    .line 154
    .local v2, "checkSum":I
    const/4 v3, 0x1

    .line 155
    .local v3, "checkWeight":I
    const/4 v4, 0x0

    .line 156
    .local v4, "codeSet":I
    const/4 v5, 0x0

    .line 158
    .local v5, "position":I
    :goto_d
    if-ge v5, v0, :cond_84

    .line 161
    const/4 v6, -0x1

    if-ne p1, v6, :cond_17

    .line 162
    invoke-static {p0, v5, v4}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    move-result v6

    .local v6, "newCodeSet":I
    goto :goto_18

    .line 164
    .end local v6    # "newCodeSet":I
    :cond_17
    move v6, p1

    .line 169
    .restart local v6    # "newCodeSet":I
    :goto_18
    if-ne v6, v4, :cond_65

    .line 172
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_8a

    .line 191
    packed-switch v4, :pswitch_data_96

    .line 204
    add-int/lit8 v7, v5, 0x1

    if-eq v7, v0, :cond_5d

    .line 208
    add-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 209
    .local v7, "patternIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 183
    .end local v7    # "patternIndex":I
    :pswitch_35
    const/16 v7, 0x65

    if-ne v4, v7, :cond_3c

    .line 184
    const/16 v7, 0x65

    .restart local v7    # "patternIndex":I
    goto :goto_5a

    .line 186
    .end local v7    # "patternIndex":I
    :cond_3c
    const/16 v7, 0x64

    .line 188
    .restart local v7    # "patternIndex":I
    goto :goto_5a

    .line 180
    .end local v7    # "patternIndex":I
    :pswitch_3f
    const/16 v7, 0x60

    .line 181
    .restart local v7    # "patternIndex":I
    goto :goto_5a

    .line 177
    .end local v7    # "patternIndex":I
    :pswitch_42
    const/16 v7, 0x61

    .line 178
    .restart local v7    # "patternIndex":I
    goto :goto_5a

    .line 174
    .end local v7    # "patternIndex":I
    :pswitch_45
    const/16 v7, 0x66

    .line 175
    .restart local v7    # "patternIndex":I
    goto :goto_5a

    .line 193
    .end local v7    # "patternIndex":I
    :pswitch_48
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x20

    .line 194
    .restart local v7    # "patternIndex":I
    if-gez v7, :cond_5a

    .line 196
    add-int/lit8 v7, v7, 0x60

    goto :goto_5a

    .line 200
    .end local v7    # "patternIndex":I
    :pswitch_53
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x20

    .line 201
    .restart local v7    # "patternIndex":I
    nop

    .line 213
    :cond_5a
    :goto_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 206
    .end local v7    # "patternIndex":I
    :cond_5d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad number of characters for digit only encoding."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 217
    :cond_65
    if-nez v4, :cond_73

    .line 219
    packed-switch v6, :pswitch_data_9e

    .line 227
    const/16 v7, 0x69

    .line 228
    .restart local v7    # "patternIndex":I
    goto :goto_74

    .line 221
    .end local v7    # "patternIndex":I
    :pswitch_6d
    const/16 v7, 0x67

    .line 222
    .restart local v7    # "patternIndex":I
    goto :goto_74

    .line 224
    .end local v7    # "patternIndex":I
    :pswitch_70
    const/16 v7, 0x68

    .line 225
    .restart local v7    # "patternIndex":I
    goto :goto_74

    .line 232
    .end local v7    # "patternIndex":I
    :cond_73
    move v7, v6

    .line 234
    .restart local v7    # "patternIndex":I
    :goto_74
    move v4, v6

    .line 238
    :goto_75
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v8, v8, v7

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    mul-int v8, v7, v3

    add-int/2addr v2, v8

    .line 242
    if-eqz v5, :cond_83

    .line 243
    add-int/lit8 v3, v3, 0x1

    .line 245
    .end local v6    # "newCodeSet":I
    .end local v7    # "patternIndex":I
    :cond_83
    goto :goto_d

    .line 246
    :cond_84
    invoke-static {v1, v2}, Lcom/google/zxing/oned/Code128Writer;->produceResult(Ljava/util/Collection;I)[Z

    move-result-object v6

    return-object v6

    nop

    :pswitch_data_8a
    .packed-switch 0xf1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_35
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x64
        :pswitch_53
        :pswitch_48
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x64
        :pswitch_70
        :pswitch_6d
    .end packed-switch
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .registers 7
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 279
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 280
    .local v0, "last":I
    if-lt p1, v0, :cond_9

    .line 281
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v1

    .line 283
    :cond_9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 284
    .local v1, "c":C
    const/16 v2, 0xf1

    if-ne v1, v2, :cond_14

    .line 285
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v2

    .line 287
    :cond_14
    const/16 v2, 0x30

    if-lt v1, v2, :cond_35

    const/16 v3, 0x39

    if-le v1, v3, :cond_1d

    goto :goto_35

    .line 290
    :cond_1d
    add-int/lit8 v4, p1, 0x1

    if-lt v4, v0, :cond_24

    .line 291
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v2

    .line 293
    :cond_24
    add-int/lit8 v4, p1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 294
    if-lt v1, v2, :cond_32

    if-le v1, v3, :cond_2f

    goto :goto_32

    .line 297
    :cond_2f
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v2

    .line 295
    :cond_32
    :goto_32
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v2

    .line 288
    :cond_35
    :goto_35
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object v2
.end method

.method static produceResult(Ljava/util/Collection;I)[Z
    .registers 8
    .param p1, "checkSum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[I>;I)[Z"
        }
    .end annotation

    .line 251
    .local p0, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    rem-int/lit8 p1, p1, 0x67

    .line 252
    if-ltz p1, :cond_4b

    .line 255
    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v0, v0, p1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "codeWidth":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 263
    .local v2, "pattern":[I
    array-length v3, v2

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_2f

    aget v5, v2, v4

    .line 264
    .local v5, "width":I
    add-int/2addr v0, v5

    .line 263
    .end local v5    # "width":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 266
    .end local v2    # "pattern":[I
    :cond_2f
    goto :goto_19

    .line 269
    :cond_30
    new-array v1, v0, [Z

    .line 270
    .local v1, "result":[Z
    const/4 v2, 0x0

    .line 271
    .local v2, "pos":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 272
    .local v4, "pattern":[I
    const/4 v5, 0x1

    invoke-static {v1, v2, v4, v5}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v2, v5

    .line 273
    .end local v4    # "pattern":[I
    goto :goto_37

    .line 275
    :cond_4a
    return-object v1

    .line 253
    .end local v0    # "codeWidth":I
    .end local v1    # "result":[Z
    .end local v2    # "pos":I
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to compute a valid input checksum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/Code128Writer;->encode(Ljava/lang/String;Ljava/util/Map;)[Z

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Ljava/util/Map;)[Z
    .registers 7
    .param p1, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)[Z"
        }
    .end annotation

    .line 76
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-static {p1, p2}, Lcom/google/zxing/oned/Code128Writer;->check(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    .line 78
    .local v0, "forcedCodeSet":I
    if-eqz p2, :cond_20

    sget-object v1, Lcom/google/zxing/EncodeHintType;->CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/google/zxing/EncodeHintType;->CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 79
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 81
    .local v1, "hasCompactionHint":Z
    :goto_21
    if-eqz v1, :cond_2e

    new-instance v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>(Lcom/google/zxing/oned/Code128Writer$1;)V

    # invokes: Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/String;)[Z
    invoke-static {v2, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->access$100(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z

    move-result-object v2

    goto :goto_32

    :cond_2e
    invoke-static {p1, v0}, Lcom/google/zxing/oned/Code128Writer;->encodeFast(Ljava/lang/String;I)[Z

    move-result-object v2

    :goto_32
    return-object v2
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

    .line 65
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
