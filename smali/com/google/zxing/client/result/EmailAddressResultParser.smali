.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 19
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "rawText":Ljava/lang/String;
    const-string v0, "mailto:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_23

    const-string v0, "MAILTO:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_23

    .line 78
    :cond_16
    invoke-static {v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 79
    return-object v2

    .line 81
    :cond_1d
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_23
    :goto_23
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "hostEmail":Ljava/lang/String;
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 41
    .local v3, "queryStart":I
    if-ltz v3, :cond_37

    .line 42
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_38

    .line 41
    :cond_37
    move-object v4, v0

    .line 45
    .end local v0    # "hostEmail":Ljava/lang/String;
    .local v4, "hostEmail":Ljava/lang/String;
    :goto_38
    :try_start_38
    invoke-static {v4}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3c} :catch_ab

    .line 48
    .end local v4    # "hostEmail":Ljava/lang/String;
    .restart local v0    # "hostEmail":Ljava/lang/String;
    nop

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "tos":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 51
    sget-object v4, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_4a
    invoke-static {v1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 54
    .local v4, "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 55
    .local v5, "ccs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 56
    .local v6, "bccs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, "subject":Ljava/lang/String;
    const/4 v8, 0x0

    .line 58
    .local v8, "body":Ljava/lang/String;
    if-eqz v4, :cond_9f

    .line 59
    if-nez v2, :cond_66

    .line 60
    const-string v9, "to"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 61
    .local v9, "tosString":Ljava/lang/String;
    if-eqz v9, :cond_66

    .line 62
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    .end local v9    # "tosString":Ljava/lang/String;
    :cond_66
    const-string v9, "cc"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 66
    .local v9, "ccString":Ljava/lang/String;
    if-eqz v9, :cond_76

    .line 67
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 69
    :cond_76
    const-string v10, "bcc"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 70
    .local v10, "bccString":Ljava/lang/String;
    if-eqz v10, :cond_86

    .line 71
    sget-object v11, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 73
    :cond_86
    const-string v11, "subject"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Ljava/lang/String;

    .line 74
    const-string v11, "body"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    check-cast v8, Ljava/lang/String;

    move-object v12, v2

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    goto :goto_a5

    .line 58
    .end local v9    # "ccString":Ljava/lang/String;
    .end local v10    # "bccString":Ljava/lang/String;
    :cond_9f
    move-object v12, v2

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    .line 76
    .end local v2    # "tos":[Ljava/lang/String;
    .end local v5    # "ccs":[Ljava/lang/String;
    .end local v6    # "bccs":[Ljava/lang/String;
    .end local v7    # "subject":Ljava/lang/String;
    .end local v8    # "body":Ljava/lang/String;
    .local v12, "tos":[Ljava/lang/String;
    .local v13, "ccs":[Ljava/lang/String;
    .local v14, "bccs":[Ljava/lang/String;
    .local v15, "subject":Ljava/lang/String;
    .local v16, "body":Ljava/lang/String;
    :goto_a5
    new-instance v11, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct/range {v11 .. v16}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 46
    .end local v0    # "hostEmail":Ljava/lang/String;
    .end local v12    # "tos":[Ljava/lang/String;
    .end local v13    # "ccs":[Ljava/lang/String;
    .end local v14    # "bccs":[Ljava/lang/String;
    .end local v15    # "subject":Ljava/lang/String;
    .end local v16    # "body":Ljava/lang/String;
    .local v4, "hostEmail":Ljava/lang/String;
    :catch_ab
    move-exception v0

    .line 47
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    return-object v2
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
