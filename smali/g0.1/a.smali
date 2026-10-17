.class public abstract Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LE0/e;)Ld0/a;
    .locals 6

    invoke-static {}, Ld0/a;->b()Ld0/a$a;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, LE0/e;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->n(I)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.connection.stalecheck"

    const/4 v3, 0x1

    invoke-interface {p0, v1, v3}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->o(Z)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-interface {p0, v1, v2}, LE0/e;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->d(I)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    invoke-interface {p0, v1, v2}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->g(Z)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {p0, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/n;

    invoke-virtual {v0, v1}, Ld0/a$a;->j(La0/n;)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.route.local-address"

    invoke-interface {p0, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ld0/a$a;->h(Ljava/net/InetAddress;)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.auth.proxy-scheme-pref"

    invoke-interface {p0, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ld0/a$a;->k(Ljava/util/Collection;)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.auth.target-scheme-pref"

    invoke-interface {p0, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ld0/a$a;->p(Ljava/util/Collection;)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.handle-authentication"

    invoke-interface {p0, v1, v3}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->b(Z)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {p0, v1, v2}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->c(Z)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.conn-manager.timeout"

    const-wide/16 v4, 0x0

    invoke-interface {p0, v1, v4, v5}, LE0/e;->d(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ld0/a$a;->e(I)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.cookie-policy"

    invoke-interface {p0, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld0/a$a;->f(Ljava/lang/String;)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.max-redirects"

    const/16 v4, 0x32

    invoke-interface {p0, v1, v4}, LE0/e;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->i(I)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {p0, v1, v3}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/a$a;->l(Z)Ld0/a$a;

    move-result-object v0

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {p0, v1, v2}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v0, p0}, Ld0/a$a;->m(Z)Ld0/a$a;

    move-result-object p0

    invoke-virtual {p0}, Ld0/a$a;->a()Ld0/a;

    move-result-object p0

    return-object p0
.end method
