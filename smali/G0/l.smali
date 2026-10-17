.class public LG0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LG0/f;->a(LG0/e;)LG0/f;

    move-result-object p2

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getProtocolVersion()La0/C;

    move-result-object v0

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v1

    invoke-interface {v1}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, La0/v;->e:La0/v;

    invoke-virtual {v0, v1}, La0/C;->g(La0/C;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Host"

    invoke-interface {p1, v1}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, LG0/f;->f()La0/n;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, LG0/f;->d()La0/j;

    move-result-object p2

    instance-of v3, p2, La0/o;

    if-eqz v3, :cond_1

    check-cast p2, La0/o;

    invoke-interface {p2}, La0/o;->q()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {p2}, La0/o;->v()I

    move-result p2

    if-eqz v3, :cond_1

    new-instance v2, La0/n;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, La0/n;-><init>(Ljava/lang/String;I)V

    :cond_1
    if-nez v2, :cond_3

    sget-object p1, La0/v;->e:La0/v;

    invoke-virtual {v0, p1}, La0/C;->g(La0/C;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, La0/B;

    const-string p2, "Target host missing"

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v2}, La0/n;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
