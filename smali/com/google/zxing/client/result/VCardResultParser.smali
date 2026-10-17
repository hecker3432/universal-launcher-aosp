.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/lang/String;

    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 225
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v1, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v2, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_50

    .line 228
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 229
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_58

    .line 248
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 234
    :sswitch_1f
    add-int/lit8 v5, v0, -0x2

    if-ge v3, v5, :cond_4d

    .line 235
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 236
    .local v5, "nextChar":C
    const/16 v6, 0xd

    if-eq v5, v6, :cond_4b

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4b

    .line 237
    add-int/lit8 v6, v3, 0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 238
    .local v6, "nextNextChar":C
    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v7

    .line 239
    .local v7, "firstDigit":I
    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v8

    .line 240
    .local v8, "secondDigit":I
    if-ltz v7, :cond_49

    if-ltz v8, :cond_49

    .line 241
    shl-int/lit8 v9, v7, 0x4

    add-int/2addr v9, v8

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    :cond_49
    add-int/lit8 v3, v3, 0x2

    .line 245
    .end local v5    # "nextChar":C
    .end local v6    # "nextNextChar":C
    .end local v7    # "firstDigit":I
    .end local v8    # "secondDigit":I
    :cond_4b
    goto :goto_4d

    .line 232
    :sswitch_4c
    nop

    .line 227
    .end local v4    # "c":C
    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 252
    .end local v3    # "i":I
    :cond_50
    invoke-static {v2, p1, v1}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_58
    .sparse-switch
        0xa -> :sswitch_4c
        0xd -> :sswitch_4c
        0x3d -> :sswitch_1f
    .end sparse-switch
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    .local p0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_62

    .line 342
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 343
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 344
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 345
    .local v4, "components":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 347
    .local v5, "start":I
    const/4 v6, 0x0

    .line 348
    .local v6, "componentIndex":I
    :goto_1e
    array-length v7, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_37

    const/16 v7, 0x3b

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    move v9, v7

    .local v9, "end":I
    if-ltz v7, :cond_37

    .line 349
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 350
    add-int/lit8 v6, v6, 0x1

    .line 351
    add-int/lit8 v5, v9, 0x1

    goto :goto_1e

    .line 353
    .end local v9    # "end":I
    :cond_37
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .local v7, "newName":Ljava/lang/StringBuilder;
    const/4 v9, 0x3

    invoke-static {v4, v9, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 356
    invoke-static {v4, v8, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 357
    const/4 v8, 0x2

    invoke-static {v4, v8, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 358
    invoke-static {v4, v2, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 359
    const/4 v8, 0x4

    invoke-static {v4, v8, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 360
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v2, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "components":[Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "componentIndex":I
    .end local v7    # "newName":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 363
    :cond_62
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 331
    if-eqz p0, :cond_11

    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_15

    :cond_d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x0

    :goto_16
    return-object v1
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 25
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .param p3, "parseFieldDivider"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 108
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 109
    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 111
    .local v3, "max":I
    :goto_8
    if-ge v2, v3, :cond_1c1

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(?:^|\n)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(?:;([^:]*))?:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 116
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 117
    .local v4, "matcher":Ljava/util/regex/Matcher;
    if-lez v2, :cond_32

    .line 118
    add-int/lit8 v2, v2, -0x1

    .line 120
    :cond_32
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 121
    move-object/from16 v17, v0

    goto/16 :goto_1c5

    .line 123
    :cond_3c
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    .line 125
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "metadataString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 127
    .local v10, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 128
    .local v11, "quotedPrintable":Z
    const/4 v12, 0x0

    .line 129
    .local v12, "quotedPrintableCharset":Ljava/lang/String;
    const/4 v13, 0x0

    .line 130
    .local v13, "valueType":Ljava/lang/String;
    if-eqz v9, :cond_b7

    .line 131
    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    const/16 v16, 0x0

    :goto_55
    if-ge v7, v15, :cond_b2

    aget-object v6, v14, v7

    .line 132
    .local v6, "metadatum":Ljava/lang/String;
    if-nez v10, :cond_64

    .line 133
    move-object/from16 v17, v0

    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v17, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .end local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_66

    .line 132
    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_64
    move-object/from16 v17, v0

    .line 135
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_66
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const/4 v8, 0x2

    invoke-virtual {v0, v6, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "metadatumTokens":[Ljava/lang/String;
    array-length v8, v0

    move/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "i":I
    .local v19, "i":I
    if-le v8, v2, :cond_a7

    .line 138
    aget-object v8, v0, v16

    .line 139
    .local v8, "key":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v2, v0, v18

    .line 140
    .local v2, "value":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "metadatumTokens":[Ljava/lang/String;
    .local v20, "metadatumTokens":[Ljava/lang/String;
    const-string v0, "ENCODING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 141
    const/4 v0, 0x1

    move v11, v0

    .end local v11    # "quotedPrintable":Z
    .local v0, "quotedPrintable":Z
    goto :goto_a9

    .line 142
    .end local v0    # "quotedPrintable":Z
    .restart local v11    # "quotedPrintable":Z
    :cond_91
    const-string v0, "CHARSET"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 143
    move-object v0, v2

    move-object v12, v0

    .end local v12    # "quotedPrintableCharset":Ljava/lang/String;
    .local v0, "quotedPrintableCharset":Ljava/lang/String;
    goto :goto_a9

    .line 144
    .end local v0    # "quotedPrintableCharset":Ljava/lang/String;
    .restart local v12    # "quotedPrintableCharset":Ljava/lang/String;
    :cond_9c
    const-string v0, "VALUE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 145
    move-object v0, v2

    move-object v13, v0

    .end local v13    # "valueType":Ljava/lang/String;
    .local v0, "valueType":Ljava/lang/String;
    goto :goto_a9

    .line 137
    .end local v2    # "value":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v20    # "metadatumTokens":[Ljava/lang/String;
    .local v0, "metadatumTokens":[Ljava/lang/String;
    .restart local v13    # "valueType":Ljava/lang/String;
    :cond_a7
    move-object/from16 v20, v0

    .line 131
    .end local v0    # "metadatumTokens":[Ljava/lang/String;
    .end local v6    # "metadatum":Ljava/lang/String;
    :cond_a9
    :goto_a9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    move/from16 v2, v19

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto :goto_55

    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19    # "i":I
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v2, "i":I
    :cond_b2
    move-object/from16 v17, v0

    move/from16 v19, v2

    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "i":I
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19    # "i":I
    goto :goto_bd

    .line 130
    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v19    # "i":I
    .restart local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "i":I
    :cond_b7
    move-object/from16 v17, v0

    move/from16 v19, v2

    const/16 v16, 0x0

    .line 151
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "i":I
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v19    # "i":I
    :goto_bd
    move/from16 v2, v19

    move/from16 v0, v19

    .line 153
    .end local v19    # "i":I
    .local v0, "i":I
    .local v2, "matchStart":I
    :goto_c1
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v0, v6

    if-ltz v6, :cond_10b

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_eb

    add-int/lit8 v6, v0, 0x1

    .line 155
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_e8

    add-int/lit8 v6, v0, 0x1

    .line 156
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_eb

    .line 157
    :cond_e8
    add-int/lit8 v0, v0, 0x2

    goto :goto_c1

    .line 158
    :cond_eb
    if-eqz v11, :cond_10b

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-lt v0, v7, :cond_fd

    add-int/lit8 v7, v0, -0x1

    .line 159
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_fb

    goto :goto_fd

    :cond_fb
    const/4 v8, 0x2

    goto :goto_108

    :cond_fd
    :goto_fd
    const/4 v8, 0x2

    if-lt v0, v8, :cond_10b

    add-int/lit8 v7, v0, -0x2

    .line 160
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_10b

    .line 161
    :goto_108
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 167
    :cond_10b
    if-gez v0, :cond_113

    .line 169
    move v0, v3

    move v2, v0

    move-object/from16 v0, v17

    goto/16 :goto_1bf

    .line 170
    :cond_113
    if-le v0, v2, :cond_1ba

    .line 172
    if-nez v17, :cond_11e

    .line 173
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v6, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_121

    .line 172
    .end local v6    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_11e
    const/4 v7, 0x1

    move-object/from16 v6, v17

    .line 175
    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_121
    if-lt v0, v7, :cond_131

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_131

    .line 176
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    goto :goto_132

    .line 178
    :cond_131
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    :goto_132
    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "element":Ljava/lang/String;
    if-eqz p2, :cond_13c

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_13c
    const-string v8, "\n"

    if-eqz v11, :cond_158

    .line 183
    invoke-static {v0, v12}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz p3, :cond_156

    .line 185
    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_18b

    .line 184
    :cond_156
    move-object v8, v0

    goto :goto_18b

    .line 188
    :cond_158
    if-eqz p3, :cond_168

    .line 189
    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_168
    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v8, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    const-string v14, "$1"

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 196
    .end local v0    # "element":Ljava/lang/String;
    .local v8, "element":Ljava/lang/String;
    :goto_18b
    const-string v0, "uri"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 200
    :try_start_193
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0
    :try_end_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_193 .. :try_end_19b} :catch_19d

    move-object v8, v0

    .line 203
    goto :goto_19e

    .line 201
    :catch_19d
    move-exception v0

    .line 205
    :cond_19e
    :goto_19e
    if-nez v10, :cond_1ad

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v0, "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v0    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1b4

    .line 210
    :cond_1ad
    const/4 v14, 0x0

    invoke-interface {v10, v14, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :goto_1b4
    nop

    .end local v8    # "element":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 214
    move-object v0, v6

    move v2, v7

    goto :goto_1bf

    .line 215
    .end local v6    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "i":I
    .local v0, "i":I
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1ba
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move-object/from16 v0, v17

    .line 218
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "metadataString":Ljava/lang/String;
    .end local v10    # "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "quotedPrintable":Z
    .end local v12    # "quotedPrintableCharset":Ljava/lang/String;
    .end local v13    # "valueType":Ljava/lang/String;
    .end local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v2, "i":I
    :goto_1bf
    goto/16 :goto_8

    .line 111
    :cond_1c1
    move-object/from16 v5, p0

    move-object/from16 v17, v0

    .line 220
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_1c5
    return-object v17
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .registers 4
    .param p0, "components"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "newName"    # Ljava/lang/StringBuilder;

    .line 366
    aget-object v0, p0, p1

    if-eqz v0, :cond_1c

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 368
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_17
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1c
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p0, "fragmentBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 260
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 262
    .local v0, "fragmentBytes":[B
    if-nez p1, :cond_14

    .line 263
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .local v1, "fragment":Ljava/lang/String;
    goto :goto_23

    .line 266
    .end local v1    # "fragment":Ljava/lang/String;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 269
    .restart local v1    # "fragment":Ljava/lang/String;
    goto :goto_23

    .line 267
    .end local v1    # "fragment":Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 268
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    .line 271
    .local v1, "fragment":Ljava/lang/String;
    :goto_23
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 272
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .end local v0    # "fragmentBytes":[B
    .end local v1    # "fragment":Ljava/lang/String;
    :cond_29
    return-void
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 285
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 289
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_3e

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3e

    .line 292
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 294
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 296
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_34
    goto :goto_16

    .line 299
    :cond_35
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 290
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 303
    .local p0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_6c

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6c

    .line 306
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 308
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 309
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_62

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_62

    .line 310
    const/4 v5, 0x0

    .line 311
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5f

    .line 312
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 313
    .local v7, "metadatum":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 314
    .local v8, "equals":I
    if-gez v8, :cond_49

    .line 316
    move-object v5, v7

    .line 317
    goto :goto_5f

    .line 319
    :cond_49
    const-string v9, "TYPE"

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 320
    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 321
    goto :goto_5f

    .line 311
    .end local v7    # "metadatum":Ljava/lang/String;
    .end local v8    # "equals":I
    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 324
    .end local v6    # "i":I
    :cond_5f
    :goto_5f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_62
    goto :goto_16

    .line 327
    :cond_63
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 304
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 35
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "rawText":Ljava/lang/String;
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 57
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_e9

    .line 60
    :cond_19
    const-string v2, "FN"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v2, :cond_2c

    .line 63
    const-string v6, "N"

    invoke-static {v6, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    .line 66
    :cond_2c
    const-string v6, "NICKNAME"

    invoke-static {v6, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    .line 67
    .local v6, "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_36

    move-object v7, v3

    goto :goto_42

    :cond_36
    sget-object v7, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    :goto_42
    move-object v10, v7

    .line 68
    .local v10, "nicknames":[Ljava/lang/String;
    const-string v7, "TEL"

    invoke-static {v7, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    .line 69
    .local v7, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "EMAIL"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v25

    .line 70
    .local v25, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "NOTE"

    invoke-static {v8, v0, v5, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v26

    .line 71
    .local v26, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "ADR"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v27

    .line 72
    .local v27, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "ORG"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v28

    .line 73
    .local v28, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "BDAY"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    .line 74
    .local v8, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_79

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 75
    const/4 v8, 0x0

    move-object/from16 v29, v8

    goto :goto_7b

    .line 77
    :cond_79
    move-object/from16 v29, v8

    .end local v8    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v29, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7b
    const-string v8, "TITLE"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v30

    .line 78
    .local v30, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "URL"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v31

    .line 79
    .local v31, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, "IMPP"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v32

    .line 80
    .local v32, "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "GEO"

    invoke-static {v8, v0, v4, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_96

    goto :goto_a2

    :cond_96
    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "geo":[Ljava/lang/String;
    :goto_a2
    if-eqz v3, :cond_ac

    array-length v5, v3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_ac

    .line 83
    const/4 v3, 0x0

    move-object/from16 v24, v3

    goto :goto_ae

    .line 85
    :cond_ac
    move-object/from16 v24, v3

    .end local v3    # "geo":[Ljava/lang/String;
    .local v24, "geo":[Ljava/lang/String;
    :goto_ae
    new-instance v8, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-static {v7}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    .line 89
    invoke-static {v7}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    .line 90
    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v14

    .line 91
    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v15

    .line 92
    invoke-static/range {v32 .. v32}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 93
    invoke-static/range {v26 .. v26}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 94
    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    .line 95
    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    .line 96
    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 97
    invoke-static/range {v29 .. v29}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    .line 98
    invoke-static/range {v30 .. v30}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v22

    .line 99
    invoke-static/range {v31 .. v31}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v23

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v24}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    return-object v8

    .line 58
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "geoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nicknameString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "nicknames":[Ljava/lang/String;
    .end local v24    # "geo":[Ljava/lang/String;
    .end local v25    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v26    # "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v28    # "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v32    # "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e9
    :goto_e9
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
