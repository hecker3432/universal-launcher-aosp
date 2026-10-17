.class public Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/b;


# static fields
.field public static final a:Lu0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/b;

    invoke-direct {v0}, Lu0/b;-><init>()V

    sput-object v0, Lu0/b;->a:Lu0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(La0/s;)Z
    .locals 1

    invoke-interface {p1}, La0/s;->h()La0/F;

    move-result-object p1

    invoke-interface {p1}, La0/F;->b()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x130

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(La0/s;LG0/e;)Z
    .locals 5

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/s;->h()La0/F;

    move-result-object p2

    invoke-interface {p2}, La0/F;->getProtocolVersion()La0/C;

    move-result-object p2

    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "chunked"

    invoke-interface {v0}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lu0/b;->b(La0/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, La0/p;->getHeaders(Ljava/lang/String;)[La0/e;

    move-result-object v0

    array-length v3, v0

    if-ne v3, v1, :cond_1

    aget-object v0, v0, v2

    :try_start_0
    invoke-interface {v0}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v0, :cond_2

    :catch_0
    :cond_1
    return v2

    :cond_2
    const-string v0, "Connection"

    invoke-interface {p1, v0}, La0/p;->getHeaders(Ljava/lang/String;)[La0/e;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_3

    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, La0/p;->getHeaders(Ljava/lang/String;)[La0/e;

    move-result-object v0

    :cond_3
    array-length p1, v0

    if-eqz p1, :cond_7

    :try_start_1
    new-instance p1, LD0/p;

    new-instance v3, LD0/e;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, LD0/e;-><init>([La0/e;Ljava/lang/String;)V

    invoke-direct {p1, v3}, LD0/p;-><init>(La0/h;)V

    const/4 v0, 0x0

    :cond_4
    :goto_0
    invoke-interface {p1}, La0/G;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, La0/G;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    const-string v4, "Keep-Alive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch La0/A; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    return v1

    :catch_1
    return v2

    :cond_7
    sget-object p1, La0/v;->e:La0/v;

    invoke-virtual {p2, p1}, La0/C;->g(La0/C;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
