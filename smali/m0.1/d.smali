.class public abstract Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/n;

.field public static final b:Ln0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, La0/n;

    const/4 v1, 0x0

    const-string v2, "no-host"

    const-string v3, "127.0.0.255"

    invoke-direct {v0, v3, v1, v2}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lm0/d;->a:La0/n;

    new-instance v1, Ln0/b;

    invoke-direct {v1, v0}, Ln0/b;-><init>(La0/n;)V

    sput-object v1, Lm0/d;->b:Ln0/b;

    return-void
.end method

.method public static a(LE0/e;)La0/n;
    .locals 1

    const-string v0, "Parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/n;

    if-eqz p0, :cond_0

    sget-object v0, Lm0/d;->a:La0/n;

    invoke-virtual {v0, p0}, La0/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static b(LE0/e;)Ln0/b;
    .locals 1

    const-string v0, "Parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln0/b;

    if-eqz p0, :cond_0

    sget-object v0, Lm0/d;->b:Ln0/b;

    invoke-virtual {v0, p0}, Ln0/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static c(LE0/e;)Ljava/net/InetAddress;
    .locals 1

    const-string v0, "Parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    return-object p0
.end method
