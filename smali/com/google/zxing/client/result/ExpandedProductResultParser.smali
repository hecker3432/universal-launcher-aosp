.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 179
    return-object v2

    .line 182
    :cond_a
    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 186
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 187
    .local v5, "currentChar":C
    const/16 v6, 0x29

    if-ne v5, v6, :cond_29

    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 190
    :cond_29
    const/16 v6, 0x30

    if-lt v5, v6, :cond_38

    const/16 v6, 0x39

    if-le v5, v6, :cond_32

    goto :goto_38

    .line 193
    :cond_32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .end local v5    # "currentChar":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 191
    .restart local v5    # "currentChar":C
    :cond_38
    :goto_38
    return-object v2

    .line 195
    .end local v4    # "index":I
    .end local v5    # "currentChar":C
    :cond_39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 204
    .local v3, "c":C
    const/16 v4, 0x28

    if-ne v3, v4, :cond_23

    .line 207
    invoke-static {v2, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 208
    goto :goto_29

    .line 210
    :cond_1f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 212
    :cond_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .end local v3    # "c":C
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 215
    .end local v2    # "index":I
    :cond_29
    :goto_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .registers 25
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    .local v0, "format":Lcom/google/zxing/BarcodeFormat;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 48
    return-object v2

    .line 50
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "rawText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "productID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 54
    .local v3, "sscc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 55
    .local v5, "lotNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 56
    .local v6, "productionDate":Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, "packagingDate":Ljava/lang/String;
    const/4 v8, 0x0

    .line 58
    .local v8, "bestBeforeDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 59
    .local v9, "expirationDate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 60
    .local v10, "weight":Ljava/lang/String;
    const/4 v11, 0x0

    .line 61
    .local v11, "weightType":Ljava/lang/String;
    const/4 v12, 0x0

    .line 62
    .local v12, "weightIncrement":Ljava/lang/String;
    const/4 v13, 0x0

    .line 63
    .local v13, "price":Ljava/lang/String;
    const/4 v14, 0x0

    .line 64
    .local v14, "priceIncrement":Ljava/lang/String;
    const/4 v15, 0x0

    .line 65
    .local v15, "priceCurrency":Ljava/lang/String;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v18

    .line 67
    .local v16, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, 0x0

    move-object/from16 v18, v5

    move-object v5, v1

    move/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v13

    move-object v13, v11

    move-object v11, v9

    move-object v9, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v14

    move-object v14, v12

    move-object v12, v10

    move-object v10, v8

    move-object v8, v6

    move-object v6, v3

    .line 69
    .end local v3    # "sscc":Ljava/lang/String;
    .local v1, "i":I
    .local v5, "productID":Ljava/lang/String;
    .local v6, "sscc":Ljava/lang/String;
    .local v7, "lotNumber":Ljava/lang/String;
    .local v8, "productionDate":Ljava/lang/String;
    .local v9, "packagingDate":Ljava/lang/String;
    .local v10, "bestBeforeDate":Ljava/lang/String;
    .local v11, "expirationDate":Ljava/lang/String;
    .local v12, "weight":Ljava/lang/String;
    .local v13, "weightType":Ljava/lang/String;
    .local v14, "weightIncrement":Ljava/lang/String;
    .local v15, "price":Ljava/lang/String;
    .local v16, "priceIncrement":Ljava/lang/String;
    .local v17, "priceCurrency":Ljava/lang/String;
    .local v18, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_29a

    .line 70
    invoke-static {v1, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "ai":Ljava/lang/String;
    if-nez v3, :cond_47

    .line 74
    return-object v2

    .line 76
    :cond_47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int v1, v1, v19

    .line 77
    move-object/from16 v19, v2

    invoke-static {v1, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v21

    add-int v1, v1, v21

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v21

    move-object/from16 v22, v0

    .end local v0    # "format":Lcom/google/zxing/BarcodeFormat;
    .local v22, "format":Lcom/google/zxing/BarcodeFormat;
    sparse-switch v21, :sswitch_data_2a0

    :cond_66
    goto/16 :goto_201

    :sswitch_68
    const-string v0, "3933"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x22

    goto/16 :goto_203

    :sswitch_74
    const-string v0, "3932"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x21

    goto/16 :goto_203

    :sswitch_80
    const-string v0, "3931"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x20

    goto/16 :goto_203

    :sswitch_8c
    const-string v0, "3930"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1f

    goto/16 :goto_203

    :sswitch_98
    const-string v0, "3923"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1e

    goto/16 :goto_203

    :sswitch_a4
    const-string v0, "3922"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1d

    goto/16 :goto_203

    :sswitch_b0
    const-string v0, "3921"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1c

    goto/16 :goto_203

    :sswitch_bc
    const-string v0, "3920"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1b

    goto/16 :goto_203

    :sswitch_c8
    const-string v0, "3209"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1a

    goto/16 :goto_203

    :sswitch_d4
    const-string v0, "3208"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x19

    goto/16 :goto_203

    :sswitch_e0
    const-string v0, "3207"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x18

    goto/16 :goto_203

    :sswitch_ec
    const-string v0, "3206"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x17

    goto/16 :goto_203

    :sswitch_f8
    const-string v0, "3205"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x16

    goto/16 :goto_203

    :sswitch_104
    const-string v0, "3204"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x15

    goto/16 :goto_203

    :sswitch_110
    const-string v0, "3203"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x14

    goto/16 :goto_203

    :sswitch_11c
    const-string v0, "3202"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x13

    goto/16 :goto_203

    :sswitch_128
    const-string v0, "3201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x12

    goto/16 :goto_203

    :sswitch_134
    const-string v0, "3200"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x11

    goto/16 :goto_203

    :sswitch_140
    const-string v0, "3109"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x10

    goto/16 :goto_203

    :sswitch_14c
    const-string v0, "3108"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0xf

    goto/16 :goto_203

    :sswitch_158
    const-string v0, "3107"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0xe

    goto/16 :goto_203

    :sswitch_164
    const-string v0, "3106"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0xd

    goto/16 :goto_203

    :sswitch_170
    const-string v0, "3105"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0xc

    goto/16 :goto_203

    :sswitch_17c
    const-string v0, "3104"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0xb

    goto/16 :goto_203

    :sswitch_188
    const-string v0, "3103"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0xa

    goto/16 :goto_203

    :sswitch_194
    const-string v0, "3102"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x9

    goto/16 :goto_203

    :sswitch_1a0
    const-string v0, "3101"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x8

    goto :goto_203

    :sswitch_1ab
    const-string v0, "3100"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x7

    goto :goto_203

    :sswitch_1b6
    const-string v0, "17"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x6

    goto :goto_203

    :sswitch_1c1
    const-string v0, "15"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x5

    goto :goto_203

    :sswitch_1cc
    const-string v0, "13"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x4

    goto :goto_203

    :sswitch_1d7
    const-string v0, "11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x3

    goto :goto_203

    :sswitch_1e2
    const-string v0, "10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_203

    :sswitch_1eb
    const-string v0, "01"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x1

    goto :goto_203

    :sswitch_1f6
    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v20, 0x0

    goto :goto_203

    :goto_201
    const/16 v20, -0x1

    :goto_203
    packed-switch v20, :pswitch_data_32e

    .line 153
    move/from16 v20, v1

    .end local v1    # "i":I
    .local v20, "i":I
    move-object/from16 v0, v18

    .end local v18    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_290

    .line 141
    .end local v0    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v18    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_20f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v20, v1

    const/4 v1, 0x4

    .end local v1    # "i":I
    .restart local v20    # "i":I
    if-ge v0, v1, :cond_219

    .line 145
    return-object v19

    .line 147
    :cond_219
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .end local v15    # "price":Ljava/lang/String;
    .local v1, "price":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v2, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 149
    .end local v17    # "priceCurrency":Ljava/lang/String;
    .local v15, "priceCurrency":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v16    # "priceIncrement":Ljava/lang/String;
    .local v0, "priceIncrement":Ljava/lang/String;
    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v0, v18

    move-object v15, v1

    goto/16 :goto_290

    .line 134
    .end local v0    # "priceIncrement":Ljava/lang/String;
    .end local v20    # "i":I
    .local v1, "i":I
    .local v15, "price":Ljava/lang/String;
    .restart local v16    # "priceIncrement":Ljava/lang/String;
    .restart local v17    # "priceCurrency":Ljava/lang/String;
    :pswitch_230
    move/from16 v20, v1

    const/4 v0, 0x3

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v1, v2

    .line 135
    .end local v15    # "price":Ljava/lang/String;
    .local v1, "price":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .end local v16    # "priceIncrement":Ljava/lang/String;
    .restart local v0    # "priceIncrement":Ljava/lang/String;
    move-object/from16 v16, v0

    move-object v15, v1

    move-object/from16 v0, v18

    goto/16 :goto_290

    .line 126
    .end local v0    # "priceIncrement":Ljava/lang/String;
    .end local v20    # "i":I
    .local v1, "i":I
    .restart local v15    # "price":Ljava/lang/String;
    .restart local v16    # "priceIncrement":Ljava/lang/String;
    :pswitch_23f
    move/from16 v20, v1

    const/4 v0, 0x3

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v1, v2

    .line 127
    .end local v12    # "weight":Ljava/lang/String;
    .local v1, "weight":Ljava/lang/String;
    const-string v12, "LB"

    .line 128
    .end local v13    # "weightType":Ljava/lang/String;
    .local v12, "weightType":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .end local v14    # "weightIncrement":Ljava/lang/String;
    .local v0, "weightIncrement":Ljava/lang/String;
    move-object v14, v0

    move-object v13, v12

    move-object/from16 v0, v18

    move-object v12, v1

    goto/16 :goto_290

    .line 112
    .end local v0    # "weightIncrement":Ljava/lang/String;
    .end local v20    # "i":I
    .local v1, "i":I
    .local v12, "weight":Ljava/lang/String;
    .restart local v13    # "weightType":Ljava/lang/String;
    .restart local v14    # "weightIncrement":Ljava/lang/String;
    :pswitch_250
    move/from16 v20, v1

    const/4 v0, 0x3

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v1, v2

    .line 113
    .end local v12    # "weight":Ljava/lang/String;
    .local v1, "weight":Ljava/lang/String;
    const-string v12, "KG"

    .line 114
    .end local v13    # "weightType":Ljava/lang/String;
    .local v12, "weightType":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .end local v14    # "weightIncrement":Ljava/lang/String;
    .restart local v0    # "weightIncrement":Ljava/lang/String;
    move-object v14, v0

    move-object v13, v12

    move-object/from16 v0, v18

    move-object v12, v1

    goto :goto_290

    .line 100
    .end local v0    # "weightIncrement":Ljava/lang/String;
    .end local v20    # "i":I
    .local v1, "i":I
    .local v12, "weight":Ljava/lang/String;
    .restart local v13    # "weightType":Ljava/lang/String;
    .restart local v14    # "weightIncrement":Ljava/lang/String;
    :pswitch_260
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 101
    .end local v11    # "expirationDate":Ljava/lang/String;
    .local v0, "expirationDate":Ljava/lang/String;
    move-object v11, v0

    move-object/from16 v0, v18

    goto :goto_290

    .line 97
    .end local v0    # "expirationDate":Ljava/lang/String;
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v11    # "expirationDate":Ljava/lang/String;
    :pswitch_267
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 98
    .end local v10    # "bestBeforeDate":Ljava/lang/String;
    .local v0, "bestBeforeDate":Ljava/lang/String;
    move-object v10, v0

    move-object/from16 v0, v18

    goto :goto_290

    .line 94
    .end local v0    # "bestBeforeDate":Ljava/lang/String;
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v10    # "bestBeforeDate":Ljava/lang/String;
    :pswitch_26e
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 95
    .end local v9    # "packagingDate":Ljava/lang/String;
    .local v0, "packagingDate":Ljava/lang/String;
    move-object v9, v0

    move-object/from16 v0, v18

    goto :goto_290

    .line 91
    .end local v0    # "packagingDate":Ljava/lang/String;
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v9    # "packagingDate":Ljava/lang/String;
    :pswitch_275
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 92
    .end local v8    # "productionDate":Ljava/lang/String;
    .local v0, "productionDate":Ljava/lang/String;
    move-object v8, v0

    move-object/from16 v0, v18

    goto :goto_290

    .line 88
    .end local v0    # "productionDate":Ljava/lang/String;
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v8    # "productionDate":Ljava/lang/String;
    :pswitch_27c
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 89
    .end local v7    # "lotNumber":Ljava/lang/String;
    .local v0, "lotNumber":Ljava/lang/String;
    move-object v7, v0

    move-object/from16 v0, v18

    goto :goto_290

    .line 85
    .end local v0    # "lotNumber":Ljava/lang/String;
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v7    # "lotNumber":Ljava/lang/String;
    :pswitch_283
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 86
    .end local v5    # "productID":Ljava/lang/String;
    .local v0, "productID":Ljava/lang/String;
    move-object v5, v0

    move-object/from16 v0, v18

    goto :goto_290

    .line 82
    .end local v0    # "productID":Ljava/lang/String;
    .end local v20    # "i":I
    .restart local v1    # "i":I
    .restart local v5    # "productID":Ljava/lang/String;
    :pswitch_28a
    move/from16 v20, v1

    .end local v1    # "i":I
    .restart local v20    # "i":I
    move-object v0, v2

    .line 83
    .end local v6    # "sscc":Ljava/lang/String;
    .local v0, "sscc":Ljava/lang/String;
    move-object v6, v0

    move-object/from16 v0, v18

    .line 156
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "ai":Ljava/lang/String;
    .end local v18    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "sscc":Ljava/lang/String;
    :goto_290
    move-object/from16 v18, v0

    move-object/from16 v2, v19

    move/from16 v1, v20

    move-object/from16 v0, v22

    goto/16 :goto_3a

    .line 158
    .end local v20    # "i":I
    .end local v22    # "format":Lcom/google/zxing/BarcodeFormat;
    .local v0, "format":Lcom/google/zxing/BarcodeFormat;
    .restart local v1    # "i":I
    .restart local v18    # "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_29a
    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3

    :sswitch_data_2a0
    .sparse-switch
        0x600 -> :sswitch_1f6
        0x601 -> :sswitch_1eb
        0x61f -> :sswitch_1e2
        0x620 -> :sswitch_1d7
        0x622 -> :sswitch_1cc
        0x624 -> :sswitch_1c1
        0x626 -> :sswitch_1b6
        0x17ecde -> :sswitch_1ab
        0x17ecdf -> :sswitch_1a0
        0x17ece0 -> :sswitch_194
        0x17ece1 -> :sswitch_188
        0x17ece2 -> :sswitch_17c
        0x17ece3 -> :sswitch_170
        0x17ece4 -> :sswitch_164
        0x17ece5 -> :sswitch_158
        0x17ece6 -> :sswitch_14c
        0x17ece7 -> :sswitch_140
        0x17f09f -> :sswitch_134
        0x17f0a0 -> :sswitch_128
        0x17f0a1 -> :sswitch_11c
        0x17f0a2 -> :sswitch_110
        0x17f0a3 -> :sswitch_104
        0x17f0a4 -> :sswitch_f8
        0x17f0a5 -> :sswitch_ec
        0x17f0a6 -> :sswitch_e0
        0x17f0a7 -> :sswitch_d4
        0x17f0a8 -> :sswitch_c8
        0x180b24 -> :sswitch_bc
        0x180b25 -> :sswitch_b0
        0x180b26 -> :sswitch_a4
        0x180b27 -> :sswitch_98
        0x180b43 -> :sswitch_8c
        0x180b44 -> :sswitch_80
        0x180b45 -> :sswitch_74
        0x180b46 -> :sswitch_68
    .end sparse-switch

    :pswitch_data_32e
    .packed-switch 0x0
        :pswitch_28a
        :pswitch_283
        :pswitch_27c
        :pswitch_275
        :pswitch_26e
        :pswitch_267
        :pswitch_260
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_23f
        :pswitch_230
        :pswitch_230
        :pswitch_230
        :pswitch_230
        :pswitch_20f
        :pswitch_20f
        :pswitch_20f
        :pswitch_20f
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
