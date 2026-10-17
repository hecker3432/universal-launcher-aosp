.class public abstract Lg0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LE0/e;)J
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, LE0/c;->a(LE0/e;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static b(LE0/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-authentication"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(LE0/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-redirects"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
