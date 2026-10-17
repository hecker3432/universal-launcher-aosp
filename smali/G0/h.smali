.class public LG0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, LG0/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wait for continue time"

    invoke-static {p1, v0}, LH0/a;->j(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LG0/h;->a:I

    return-void
.end method

.method private static b(La0/i;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, La0/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected a(La0/q;La0/s;)Z
    .locals 1

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p1

    invoke-interface {p1}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, La0/s;->h()La0/F;

    move-result-object p1

    invoke-interface {p1}, La0/F;->b()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_1

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_1

    const/16 p2, 0x130

    if-eq p1, p2, :cond_1

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected c(La0/q;La0/i;LG0/e;)La0/s;
    .locals 2

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object p3

    :cond_1
    :goto_1
    invoke-interface {p2}, La0/i;->k()La0/s;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, LG0/h;->a(La0/q;La0/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, p3}, La0/i;->l(La0/s;)V

    :cond_2
    invoke-interface {p3}, La0/s;->h()La0/F;

    move-result-object v0

    invoke-interface {v0}, La0/F;->b()I

    move-result v0

    goto :goto_0
.end method

.method protected d(La0/q;La0/i;LG0/e;)La0/s;
    .locals 6

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection"

    invoke-interface {p3, v0, p2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "http.request_sent"

    invoke-interface {p3, v1, v0}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, La0/i;->n(La0/q;)V

    instance-of v0, p1, La0/l;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getProtocolVersion()La0/C;

    move-result-object v0

    move-object v3, p1

    check-cast v3, La0/l;

    invoke-interface {v3}, La0/l;->expectContinue()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    sget-object v4, La0/v;->e:La0/v;

    invoke-virtual {v0, v4}, La0/C;->g(La0/C;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, La0/i;->flush()V

    iget v0, p0, LG0/h;->a:I

    invoke-interface {p2, v0}, La0/i;->o(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, La0/i;->k()La0/s;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LG0/h;->a(La0/q;La0/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v0}, La0/i;->l(La0/s;)V

    :cond_0
    invoke-interface {v0}, La0/s;->h()La0/F;

    move-result-object p1

    invoke-interface {p1}, La0/F;->b()I

    move-result p1

    const/16 v4, 0xc8

    if-ge p1, v4, :cond_2

    const/16 v4, 0x64

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, La0/B;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected response: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La0/s;->h()La0/F;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v5, 0x0

    move-object v2, v0

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    invoke-interface {p2, v3}, La0/i;->z(La0/l;)V

    :cond_4
    invoke-interface {p2}, La0/i;->flush()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, p1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public e(La0/q;La0/i;LG0/e;)La0/s;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LG0/h;->d(La0/q;La0/i;LG0/e;)La0/s;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LG0/h;->c(La0/q;La0/i;LG0/e;)La0/s;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch La0/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    invoke-static {p2}, LG0/h;->b(La0/i;)V

    throw p1

    :goto_2
    invoke-static {p2}, LG0/h;->b(La0/i;)V

    throw p1

    :goto_3
    invoke-static {p2}, LG0/h;->b(La0/i;)V

    throw p1
.end method

.method public f(La0/s;LG0/g;LG0/e;)V
    .locals 1

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.response"

    invoke-interface {p3, v0, p1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, La0/u;->a(La0/s;LG0/e;)V

    return-void
.end method

.method public g(La0/q;LG0/g;LG0/e;)V
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.request"

    invoke-interface {p3, v0, p1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, La0/r;->b(La0/q;LG0/e;)V

    return-void
.end method
