.class public final Lcom/google/zxing/client/result/AddressBookAUResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AddressBookAUResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "rawText"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x3

    if-gt v1, v2, :cond_34

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v5, 0x1

    invoke-static {v3, p1, v4, v5}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_26

    .line 76
    goto :goto_34

    .line 78
    :cond_26
    if-nez v0, :cond_2e

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 81
    :cond_2e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    .end local v1    # "i":I
    :cond_34
    :goto_34
    if-nez v0, :cond_38

    .line 84
    const/4 v1, 0x0

    return-object v1

    .line 86
    :cond_38
    sget-object v1, Lcom/google/zxing/client/result/AddressBookAUResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 25
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "rawText":Ljava/lang/String;
    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_61

    .line 44
    :cond_16
    const-string v1, "NAME1:"

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "name":Ljava/lang/String;
    const-string v5, "NAME2:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "pronunciation":Ljava/lang/String;
    const-string v5, "TEL"

    invoke-static {v5, v0}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "phoneNumbers":[Ljava/lang/String;
    const-string v5, "MAIL"

    invoke-static {v5, v0}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, "emails":[Ljava/lang/String;
    const-string v5, "MEMORY:"

    const/4 v6, 0x0

    invoke-static {v5, v0, v3, v6}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, "note":Ljava/lang/String;
    const-string v5, "ADD:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "address":Ljava/lang/String;
    if-nez v3, :cond_41

    goto :goto_45

    :cond_41
    new-array v2, v4, [Ljava/lang/String;

    aput-object v3, v2, v6

    :goto_45
    move-object/from16 v16, v2

    .line 52
    .local v16, "addresses":[Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6

    .line 39
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "address":Ljava/lang/String;
    .end local v9    # "pronunciation":Ljava/lang/String;
    .end local v10    # "phoneNumbers":[Ljava/lang/String;
    .end local v12    # "emails":[Ljava/lang/String;
    .end local v15    # "note":Ljava/lang/String;
    .end local v16    # "addresses":[Ljava/lang/String;
    :cond_61
    :goto_61
    return-object v2
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
