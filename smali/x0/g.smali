.class public Lx0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/c;


# instance fields
.field public a:Lt0/b;

.field protected final b:Lo0/h;

.field protected final c:Ll0/i;


# direct methods
.method public constructor <init>(Lo0/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx0/g;->a:Lt0/b;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lx0/g;->b:Lo0/h;

    new-instance p1, Lx0/q;

    invoke-direct {p1}, Lx0/q;-><init>()V

    iput-object p1, p0, Lx0/g;->c:Ll0/i;

    return-void
.end method

.method private d(LG0/e;)Lo0/h;
    .locals 1

    const-string v0, "http.scheme-registry"

    invoke-interface {p1, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/h;

    if-nez p1, :cond_0

    iget-object p1, p0, Lx0/g;->b:Lo0/h;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ll0/p;La0/n;Ljava/net/InetAddress;LG0/e;LE0/e;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v0, "Connection"

    invoke-static {v2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target host"

    invoke-static {v3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {v6, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, La0/j;->h()Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    const-string v8, "Connection must not be open"

    invoke-static {v0, v8}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-direct {v1, v5}, Lx0/g;->d(LG0/e;)Lo0/h;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, La0/n;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lo0/h;->c(Ljava/lang/String;)Lo0/d;

    move-result-object v0

    invoke-virtual {v0}, Lo0/d;->c()Lo0/i;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, La0/n;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lx0/g;->f(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, La0/n;->c()I

    move-result v10

    invoke-virtual {v0, v10}, Lo0/d;->e(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    array-length v0, v9

    if-ge v12, v0, :cond_7

    aget-object v0, v9, v12

    array-length v13, v9

    sub-int/2addr v13, v7

    if-ne v12, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    invoke-interface {v8, v6}, Lo0/i;->e(LE0/e;)Ljava/net/Socket;

    move-result-object v14

    invoke-interface {v2, v14, v3}, Ll0/p;->B(Ljava/net/Socket;La0/n;)V

    new-instance v15, Ll0/l;

    invoke-direct {v15, v3, v0, v10}, Ll0/l;-><init>(La0/n;Ljava/net/InetAddress;I)V

    if-eqz v4, :cond_1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v4, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, v1, Lx0/g;->a:Lt0/b;

    invoke-virtual {v7}, Lt0/b;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lx0/g;->a:Lt0/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-interface {v8, v14, v15, v0, v6}, Lo0/i;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;

    move-result-object v0

    if-eq v14, v0, :cond_3

    invoke-interface {v2, v0, v3}, Ll0/p;->B(Ljava/net/Socket;La0/n;)V

    move-object v14, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    invoke-virtual {v1, v14, v5, v6}, Lx0/g;->e(Ljava/net/Socket;LG0/e;LE0/e;)V

    invoke-interface {v8, v14}, Lo0/i;->a(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {v2, v0, v6}, Ll0/p;->f(ZLE0/e;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ll0/e; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    if-nez v13, :cond_4

    goto :goto_6

    :cond_4
    throw v0

    :goto_5
    if-nez v13, :cond_6

    :goto_6
    iget-object v0, v1, Lx0/g;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lx0/g;->a:Lt0/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " timed out. "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Connection will be retried using another IP address"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p3

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    throw v0

    :cond_7
    return-void
.end method

.method public b(Ll0/p;La0/n;LG0/e;LE0/e;)V
    .locals 5

    const-string v0, "Connection"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target host"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/j;->h()Z

    move-result v0

    const-string v1, "Connection must be open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-direct {p0, p3}, Lx0/g;->d(LG0/e;)Lo0/h;

    move-result-object v0

    invoke-virtual {p2}, La0/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo0/h;->c(Ljava/lang/String;)Lo0/d;

    move-result-object v0

    invoke-virtual {v0}, Lo0/d;->c()Lo0/i;

    move-result-object v1

    instance-of v1, v1, Lo0/e;

    const-string v2, "Socket factory must implement SchemeLayeredSocketFactory"

    invoke-static {v1, v2}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lo0/d;->c()Lo0/i;

    move-result-object v1

    check-cast v1, Lo0/e;

    invoke-interface {p1}, Ll0/p;->u()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, La0/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, La0/n;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lo0/d;->e(I)I

    move-result v0

    invoke-interface {v1, v2, v3, v0, p4}, Lo0/e;->d(Ljava/net/Socket;Ljava/lang/String;ILE0/e;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lx0/g;->e(Ljava/net/Socket;LG0/e;LE0/e;)V

    invoke-interface {v1, v0}, Lo0/i;->a(Ljava/net/Socket;)Z

    move-result p3

    invoke-interface {p1, v0, p2, p3, p4}, Ll0/p;->r(Ljava/net/Socket;La0/n;ZLE0/e;)V

    return-void
.end method

.method public c()Ll0/p;
    .locals 1

    new-instance v0, Lx0/f;

    invoke-direct {v0}, Lx0/f;-><init>()V

    return-object v0
.end method

.method protected e(Ljava/net/Socket;LG0/e;LE0/e;)V
    .locals 0

    invoke-static {p3}, LE0/c;->e(LE0/e;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {p3}, LE0/c;->d(LE0/e;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p3}, LE0/c;->b(LE0/e;)I

    move-result p2

    if-ltz p2, :cond_1

    if-lez p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_1
    return-void
.end method

.method protected f(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lx0/g;->c:Ll0/i;

    invoke-interface {v0, p1}, Ll0/i;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method
