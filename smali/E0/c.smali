.class public abstract LE0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LE0/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, LE0/e;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(LE0/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, LE0/e;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(LE0/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.reuseaddr"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(LE0/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, LE0/e;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(LE0/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static f(LE0/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(LE0/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.timeout"

    invoke-interface {p0, v0, p1}, LE0/e;->b(Ljava/lang/String;I)LE0/e;

    return-void
.end method

.method public static h(LE0/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.timeout"

    invoke-interface {p0, v0, p1}, LE0/e;->b(Ljava/lang/String;I)LE0/e;

    return-void
.end method

.method public static i(LE0/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.buffer-size"

    invoke-interface {p0, v0, p1}, LE0/e;->b(Ljava/lang/String;I)LE0/e;

    return-void
.end method

.method public static j(LE0/e;Z)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.tcp.nodelay"

    invoke-interface {p0, v0, p1}, LE0/e;->a(Ljava/lang/String;Z)LE0/e;

    return-void
.end method
