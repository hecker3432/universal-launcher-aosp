.class public abstract LE0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LE0/e;)Ljava/lang/String;
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, LG0/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(LE0/e;)La0/C;
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, La0/v;->f:La0/v;

    return-object p0

    :cond_0
    check-cast p0, La0/C;

    return-object p0
.end method

.method public static c(LE0/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-void
.end method

.method public static d(LE0/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-void
.end method

.method public static e(LE0/e;La0/C;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-void
.end method
