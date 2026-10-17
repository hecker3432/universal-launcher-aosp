.class public Lp0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;
.implements Lo0/a;
.implements Lo0/b;


# static fields
.field public static final e:Lp0/l;

.field public static final f:Lp0/l;

.field public static final g:Lp0/l;


# instance fields
.field private final a:Ljavax/net/ssl/SSLSocketFactory;

.field private volatile b:Lp0/l;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp0/b;

    invoke-direct {v0}, Lp0/b;-><init>()V

    sput-object v0, Lp0/i;->e:Lp0/l;

    new-instance v0, Lp0/c;

    invoke-direct {v0}, Lp0/c;-><init>()V

    sput-object v0, Lp0/i;->f:Lp0/l;

    new-instance v0, Lp0/j;

    invoke-direct {v0}, Lp0/j;-><init>()V

    sput-object v0, Lp0/i;->g:Lp0/l;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    invoke-static {}, Lp0/g;->b()Lp0/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp0/f;->b(Ljava/security/KeyStore;)Lp0/f;

    move-result-object p1

    invoke-virtual {p1}, Lp0/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    sget-object v0, Lp0/i;->f:Lp0/l;

    invoke-direct {p0, p1, v0}, Lp0/i;-><init>(Ljavax/net/ssl/SSLContext;Lp0/l;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lp0/l;)V
    .locals 1

    const-string v0, "SSL context"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lp0/i;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lp0/l;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lp0/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL socket factory"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lp0/i;->a:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lp0/i;->c:[Ljava/lang/String;

    iput-object p3, p0, Lp0/i;->d:[Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lp0/i;->f:Lp0/l;

    :goto_0
    iput-object p4, p0, Lp0/i;->b:Lp0/l;

    return-void
.end method

.method public static l()Lp0/i;
    .locals 3

    new-instance v0, Lp0/i;

    invoke-static {}, Lp0/g;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sget-object v2, Lp0/i;->f:Lp0/l;

    invoke-direct {v0, v1, v2}, Lp0/i;-><init>(Ljavax/net/ssl/SSLContext;Lp0/l;)V

    return-object v0
.end method

.method private m(Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    iget-object v0, p0, Lp0/i;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lp0/i;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lp0/i;->n(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method private p(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lp0/i;->b:Lp0/l;

    invoke-interface {v0, p2, p1}, Lp0/l;->b(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    throw p2
.end method


# virtual methods
.method public a(Ljava/net/Socket;)Z
    .locals 2

    const-string v0, "Socket"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    const-string v1, "Socket not created by this factory"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const-string v1, "Socket is closed"

    invoke-static {p1, v1}, LH0/b;->a(ZLjava/lang/String;)V

    return v0
.end method

.method public b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lp0/i;->j(Ljava/net/Socket;Ljava/lang/String;ILG0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILE0/e;)Ljava/net/Socket;
    .locals 2

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez p4, :cond_1

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    :goto_1
    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p4, v1

    :goto_2
    new-instance p5, Ll0/l;

    new-instance v1, La0/n;

    invoke-direct {v1, p2, p3}, La0/n;-><init>(Ljava/lang/String;I)V

    invoke-direct {p5, v1, v0, p3}, Ll0/l;-><init>(La0/n;Ljava/net/InetAddress;I)V

    invoke-virtual {p0, p1, p5, p4, p6}, Lp0/i;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/net/Socket;Ljava/lang/String;ILE0/e;)Ljava/net/Socket;
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lp0/i;->j(Ljava/net/Socket;Ljava/lang/String;ILG0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public e(LE0/e;)Ljava/net/Socket;
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lp0/i;->k(LG0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp0/i;->k(LG0/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lp0/i;->b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;
    .locals 11

    const-string v0, "Remote address"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Ll0/l;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ll0/l;

    invoke-virtual {v0}, Ll0/l;->a()La0/n;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, La0/n;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-string v3, "https"

    invoke-direct {v0, v1, v2, v3}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-static {p4}, LE0/c;->d(LE0/e;)I

    move-result v0

    invoke-static {p4}, LE0/c;->a(LE0/e;)I

    move-result v5

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v10, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v10}, Lp0/i;->i(ILjava/net/Socket;La0/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LG0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public i(ILjava/net/Socket;La0/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LG0/e;)Ljava/net/Socket;
    .locals 1

    const-string v0, "HTTP host"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Remote address"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p6}, Lp0/i;->k(LG0/e;)Ljava/net/Socket;

    move-result-object p2

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p2, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    :try_start_0
    invoke-virtual {p2, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p2, Ljavax/net/ssl/SSLSocket;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p3}, La0/n;->b()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lp0/i;->p(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-object p2

    :cond_2
    invoke-virtual {p3}, La0/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    invoke-virtual {p0, p2, p1, p3, p6}, Lp0/i;->j(Ljava/net/Socket;Ljava/lang/String;ILG0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    throw p1
.end method

.method public j(Ljava/net/Socket;Ljava/lang/String;ILG0/e;)Ljava/net/Socket;
    .locals 1

    iget-object p4, p0, Lp0/i;->a:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, p3, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p1}, Lp0/i;->m(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-direct {p0, p1, p2}, Lp0/i;->p(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-object p1
.end method

.method public k(LG0/e;)Ljava/net/Socket;
    .locals 0

    iget-object p1, p0, Lp0/i;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p1}, Lp0/i;->m(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method protected n(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public o(Lp0/l;)V
    .locals 1

    const-string v0, "Hostname verifier"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lp0/i;->b:Lp0/l;

    return-void
.end method
