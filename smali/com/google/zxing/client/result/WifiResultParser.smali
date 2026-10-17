.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .registers 17
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 43
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "rawText":Ljava/lang/String;
    const-string v1, "WIFI:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 45
    return-object v3

    .line 47
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "S:"

    const/16 v2, 0x3b

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "ssid":Ljava/lang/String;
    if-eqz v7, :cond_82

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_82

    .line 52
    :cond_28
    const-string v1, "P:"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "pass":Ljava/lang/String;
    const-string v1, "T:"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_3a

    .line 55
    const-string v1, "nopass"

    move-object v6, v1

    goto :goto_3b

    .line 54
    :cond_3a
    move-object v6, v1

    .line 61
    .end local v1    # "type":Ljava/lang/String;
    .local v6, "type":Ljava/lang/String;
    :goto_3b
    const/4 v1, 0x0

    .line 62
    .local v1, "hidden":Z
    const-string v3, "PH2:"

    invoke-static {v3, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "phase2Method":Ljava/lang/String;
    const-string v5, "H:"

    invoke-static {v5, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v14

    .line 64
    .local v14, "hValue":Ljava/lang/String;
    if-eqz v14, :cond_68

    .line 66
    if-nez v3, :cond_61

    const-string v5, "true"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_61

    const-string v5, "false"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    goto :goto_61

    .line 69
    :cond_5d
    move-object v3, v14

    move v9, v1

    move-object v13, v3

    goto :goto_6a

    .line 67
    :cond_61
    :goto_61
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v9, v1

    move-object v13, v3

    goto :goto_6a

    .line 64
    :cond_68
    move v9, v1

    move-object v13, v3

    .line 73
    .end local v1    # "hidden":Z
    .end local v3    # "phase2Method":Ljava/lang/String;
    .local v9, "hidden":Z
    .local v13, "phase2Method":Ljava/lang/String;
    :goto_6a
    const-string v1, "I:"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "identity":Ljava/lang/String;
    const-string v1, "A:"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "anonymousIdentity":Ljava/lang/String;
    const-string v1, "E:"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "eapMethod":Ljava/lang/String;
    new-instance v5, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct/range {v5 .. v13}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 50
    .end local v6    # "type":Ljava/lang/String;
    .end local v8    # "pass":Ljava/lang/String;
    .end local v9    # "hidden":Z
    .end local v10    # "identity":Ljava/lang/String;
    .end local v11    # "anonymousIdentity":Ljava/lang/String;
    .end local v12    # "eapMethod":Ljava/lang/String;
    .end local v13    # "phase2Method":Ljava/lang/String;
    .end local v14    # "hValue":Ljava/lang/String;
    :cond_82
    :goto_82
    return-object v3
.end method
