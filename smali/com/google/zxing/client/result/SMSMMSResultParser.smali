.class public final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSMMSResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 6
    .param p2, "numberPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    .local p0, "numbers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "vias":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 93
    .local v0, "numberEnd":I
    if-gez v0, :cond_10

    .line 94
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 97
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "maybeVia":Ljava/lang/String;
    const-string v2, "via="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 101
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "via":Ljava/lang/String;
    goto :goto_2d

    .line 103
    .end local v2    # "via":Ljava/lang/String;
    :cond_2c
    const/4 v2, 0x0

    .line 105
    .restart local v2    # "via":Ljava/lang/String;
    :goto_2d
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v1    # "maybeVia":Ljava/lang/String;
    .end local v2    # "via":Ljava/lang/String;
    :goto_30
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .registers 16
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-static {p1}, Lcom/google/zxing/client/result/SMSMMSResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "rawText":Ljava/lang/String;
    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "SMS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 47
    const-string v1, "mms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 48
    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_26
    invoke-static {v0}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 53
    .local v1, "nameValuePairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 54
    .local v2, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, "body":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "querySyntax":Z
    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    .line 57
    const-string v5, "subject"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 58
    const-string v5, "body"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .line 59
    const/4 v4, 0x1

    .line 63
    :cond_48
    const/16 v5, 0x3f

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 66
    .local v5, "queryStart":I
    if-ltz v5, :cond_59

    if-nez v4, :cond_54

    goto :goto_59

    .line 69
    :cond_54
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "smsURIWithoutQuery":Ljava/lang/String;
    goto :goto_5d

    .line 67
    .end local v6    # "smsURIWithoutQuery":Ljava/lang/String;
    :cond_59
    :goto_59
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    .restart local v6    # "smsURIWithoutQuery":Ljava/lang/String;
    :goto_5d
    const/4 v7, -0x1

    .line 74
    .local v7, "lastComma":I
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v8, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v10, "vias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_69
    add-int/lit8 v9, v7, 0x1

    const/16 v11, 0x2c

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    move v11, v9

    .local v11, "comma":I
    if-le v9, v7, :cond_7f

    .line 77
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "numberPart":Ljava/lang/String;
    invoke-static {v8, v10, v9}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 79
    move v7, v11

    .line 80
    .end local v9    # "numberPart":Ljava/lang/String;
    goto :goto_69

    .line 81
    :cond_7f
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 83
    new-instance v9, Lcom/google/zxing/client/result/SMSParsedResult;

    sget-object v12, Lcom/google/zxing/client/result/SMSMMSResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    sget-object v13, Lcom/google/zxing/client/result/SMSMMSResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    .line 84
    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-direct {v9, v12, v13, v2, v3}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v9
.end method
