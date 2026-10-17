.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMTPResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 15
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 31
    invoke-static {p1}, Lcom/google/zxing/client/result/SMTPResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "rawText":Ljava/lang/String;
    const-string v1, "smtp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "SMTP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 33
    const/4 v1, 0x0

    return-object v1

    .line 35
    :cond_16
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "emailAddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 37
    .local v2, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, "body":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 39
    .local v5, "colon":I
    const/4 v6, 0x0

    if-ltz v5, :cond_46

    .line 40
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 43
    if-ltz v5, :cond_43

    .line 44
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move-object v12, v3

    goto :goto_48

    .line 43
    :cond_43
    move-object v11, v2

    move-object v12, v3

    goto :goto_48

    .line 39
    :cond_46
    move-object v11, v2

    move-object v12, v3

    .line 48
    .end local v2    # "subject":Ljava/lang/String;
    .end local v3    # "body":Ljava/lang/String;
    .local v11, "subject":Ljava/lang/String;
    .local v12, "body":Ljava/lang/String;
    :goto_48
    new-instance v7, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    aput-object v1, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
