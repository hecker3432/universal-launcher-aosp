.class Lcom/loopj/android/http/i;
.super Lw0/l;
.source "SourceFile"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lw0/l;-><init>()V

    iput-boolean p1, p0, Lcom/loopj/android/http/i;->b:Z

    return-void
.end method


# virtual methods
.method public a(La0/s;LG0/e;)Ljava/net/URI;
    .locals 5

    if-eqz p1, :cond_8

    const-string v0, "location"

    invoke-interface {p1, v0}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object p1

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "http.protocol.reject-relative-redirect"

    invoke-interface {p1, v0}, LE0/e;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http.target_host"

    invoke-interface {p2, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/n;

    if-eqz v0, :cond_0

    const-string v3, "http.request"

    invoke-interface {p2, v3}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/q;

    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-interface {v3}, La0/q;->getRequestLine()La0/E;

    move-result-object v3

    invoke-interface {v3}, La0/E;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v2}, Li0/d;->f(Ljava/net/URI;La0/n;Z)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0, v1}, Li0/d;->c(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, La0/B;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target host not available in the HTTP context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, La0/B;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relative redirect location \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' not allowed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p1, v0}, LE0/e;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "http.protocol.redirect-locations"

    invoke-interface {p2, p1}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/t;

    if-nez v0, :cond_3

    new-instance v0, Lw0/t;

    invoke-direct {v0}, Lw0/t;-><init>()V

    invoke-interface {p2, p1, v0}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_2
    new-instance p1, La0/n;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, p2, v3, v4}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1, p1, v2}, Li0/d;->f(Ljava/net/URI;La0/n;Z)Ljava/net/URI;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, La0/B;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    move-object p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Lw0/t;->b(Ljava/net/URI;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v0, p1}, Lw0/t;->a(Ljava/net/URI;)V

    goto :goto_2

    :cond_5
    new-instance p2, Lc0/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Circular redirect to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc0/d;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_2
    return-object v1

    :catch_2
    move-exception p1

    new-instance p2, La0/B;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid redirect URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    new-instance p2, La0/B;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received redirect response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, La0/s;->h()La0/F;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but no location header"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/B;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP response may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(La0/s;LG0/e;)Z
    .locals 1

    iget-boolean p2, p0, Lcom/loopj/android/http/i;->b:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, La0/s;->h()La0/F;

    move-result-object p1

    invoke-interface {p1}, La0/F;->b()I

    move-result p1

    const/16 p2, 0x133

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_1
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP response may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
