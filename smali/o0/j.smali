.class Lo0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/i;


# instance fields
.field private final a:Lo0/k;


# direct methods
.method constructor <init>(Lo0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/j;->a:Lo0/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)Z
    .locals 1

    iget-object v0, p0, Lo0/j;->a:Lo0/k;

    invoke-interface {v0, p1}, Lo0/k;->a(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method

.method public e(LE0/e;)Ljava/net/Socket;
    .locals 0

    iget-object p1, p0, Lo0/j;->a:Lo0/k;

    invoke-interface {p1}, Lo0/k;->f()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v0, p1, Lo0/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo0/j;->a:Lo0/k;

    check-cast p1, Lo0/j;

    iget-object p1, p1, Lo0/j;->a:Lo0/k;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lo0/j;->a:Lo0/k;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;
    .locals 7

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    move-object v4, p2

    move v5, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object v4, p2

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lo0/j;->a:Lo0/k;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lo0/k;->c(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILE0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lo0/j;->a:Lo0/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
