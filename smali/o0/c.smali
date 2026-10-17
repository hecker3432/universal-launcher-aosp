.class public Lo0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/k;
.implements Lo0/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i()Lo0/c;
    .locals 1

    new-instance v0, Lo0/c;

    invoke-direct {v0}, Lo0/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/Socket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILE0/e;)Ljava/net/Socket;
    .locals 1

    if-nez p4, :cond_1

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    :goto_1
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p4, v0

    :goto_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    new-instance p5, Ljava/net/InetSocketAddress;

    invoke-direct {p5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, p1, p5, p4, p6}, Lo0/c;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public e(LE0/e;)Ljava/net/Socket;
    .locals 0

    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    return-object p1
.end method

.method public f()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;
    .locals 1

    const-string v0, "Remote address"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo0/c;->f()Ljava/net/Socket;

    move-result-object p1

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4}, LE0/c;->c(LE0/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    invoke-virtual {p1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    invoke-static {p4}, LE0/c;->a(LE0/e;)I

    move-result p3

    invoke-static {p4}, LE0/c;->d(LE0/e;)I

    move-result p4

    :try_start_0
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ll0/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " timed out"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ll0/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
