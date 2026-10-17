.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    nop

    .line 35
    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .registers 16
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 39
    invoke-static {p1}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "rawText":Ljava/lang/CharSequence;
    sget-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 41
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_12

    .line 42
    return-object v3

    .line 45
    :cond_12
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "query":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_18
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 52
    .local v5, "latitude":D
    const-wide v7, 0x4056800000000000L    # 90.0

    cmpl-double v0, v5, v7

    if-gtz v0, :cond_71

    const-wide v7, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_33

    goto :goto_71

    .line 55
    :cond_33
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 56
    .local v7, "longitude":D
    const-wide v9, 0x4066800000000000L    # 180.0

    cmpl-double v0, v7, v9

    if-gtz v0, :cond_70

    const-wide v9, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v7, v9

    if-gez v0, :cond_4f

    goto :goto_70

    .line 59
    :cond_4f
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5a

    .line 60
    const-wide/16 v3, 0x0

    move-wide v9, v3

    .local v3, "altitude":D
    goto :goto_69

    .line 62
    .end local v3    # "altitude":D
    :cond_5a
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_62} :catch_72

    .line 63
    .local v9, "altitude":D
    const-wide/16 v12, 0x0

    cmpg-double v0, v9, v12

    if-gez v0, :cond_69

    .line 64
    return-object v3

    .line 69
    :cond_69
    :goto_69
    nop

    .line 70
    new-instance v4, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-direct/range {v4 .. v11}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    return-object v4

    .line 57
    .end local v9    # "altitude":D
    :cond_70
    :goto_70
    return-object v3

    .line 53
    .end local v7    # "longitude":D
    :cond_71
    :goto_71
    return-object v3

    .line 67
    .end local v5    # "latitude":D
    :catch_72
    move-exception v0

    .line 68
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object p1

    return-object p1
.end method
