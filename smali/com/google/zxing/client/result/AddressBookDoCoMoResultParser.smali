.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 84
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 85
    .local v0, "comma":I
    if-ltz v0, :cond_2b

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    :cond_2b
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 25
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "rawText":Ljava/lang/String;
    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 42
    return-object v2

    .line 44
    :cond_e
    const-string v1, "N:"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "rawName":[Ljava/lang/String;
    if-nez v1, :cond_17

    .line 46
    return-object v2

    .line 48
    :cond_17
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "name":Ljava/lang/String;
    const-string v4, "SOUND:"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "pronunciation":Ljava/lang/String;
    const-string v4, "TEL:"

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "phoneNumbers":[Ljava/lang/String;
    const-string v4, "EMAIL:"

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "emails":[Ljava/lang/String;
    const-string v4, "NOTE:"

    invoke-static {v4, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 53
    .local v15, "note":Ljava/lang/String;
    const-string v2, "ADR:"

    invoke-static {v2, v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 54
    .local v16, "addresses":[Ljava/lang/String;
    const-string v2, "BDAY:"

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "birthday":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-static {v2, v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 57
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_51

    .line 55
    :cond_4f
    move-object/from16 v19, v2

    .line 59
    .end local v2    # "birthday":Ljava/lang/String;
    .local v19, "birthday":Ljava/lang/String;
    :goto_51
    const-string v2, "URL:"

    invoke-static {v2, v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 63
    .local v21, "urls":[Ljava/lang/String;
    const-string v2, "ORG:"

    invoke-static {v2, v0, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 65
    .local v18, "org":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
