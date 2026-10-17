.class Lx0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/n;


# instance fields
.field private final a:Ll0/b;

.field private final b:Ll0/c;

.field private volatile c:Lx0/k;

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method constructor <init>(Ll0/b;Ll0/c;Lx0/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection operator"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP pool entry"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lx0/o;->a:Ll0/b;

    iput-object p2, p0, Lx0/o;->b:Ll0/c;

    iput-object p3, p0, Lx0/o;->c:Lx0/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx0/o;->d:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lx0/o;->e:J

    return-void
.end method

.method private E()Lx0/k;
    .locals 1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lx0/e;

    invoke-direct {v0}, Lx0/e;-><init>()V

    throw v0
.end method

.method private F()Ll0/p;
    .locals 1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;

    return-object v0
.end method

.method private w()Ll0/p;
    .locals 1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;

    return-object v0

    :cond_0
    new-instance v0, Lx0/e;

    invoke-direct {v0}, Lx0/e;-><init>()V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    invoke-direct {p0}, Lx0/o;->F()Ll0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, La0/j;->A()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public C(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lx0/o;->E()Lx0/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LF0/a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public D()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx0/o;->a:Ll0/b;

    iget-wide v1, p0, Lx0/o;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ll0/b;->a(Ll0/n;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/o;->c:Lx0/k;

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public G()Ll0/b;
    .locals 1

    iget-object v0, p0, Lx0/o;->a:Ll0/b;

    return-object v0
.end method

.method H()Lx0/k;
    .locals 1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lx0/o;->d:Z

    return v0
.end method

.method b()Lx0/k;
    .locals 2

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    const/4 v1, 0x0

    iput-object v1, p0, Lx0/o;->c:Lx0/k;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/p;

    invoke-virtual {v0}, Lx0/k;->j()Ln0/f;

    move-result-object v0

    invoke-virtual {v0}, Ln0/f;->m()V

    invoke-interface {v1}, La0/j;->c()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/p;

    invoke-virtual {v0}, Lx0/k;->j()Ln0/f;

    move-result-object v0

    invoke-virtual {v0}, Ln0/f;->m()V

    invoke-interface {v1}, La0/j;->close()V

    :cond_0
    return-void
.end method

.method public d()Ln0/b;
    .locals 1

    invoke-direct {p0}, Lx0/o;->E()Lx0/k;

    move-result-object v0

    invoke-virtual {v0}, Lx0/k;->h()Ln0/b;

    move-result-object v0

    return-object v0
.end method

.method public e(LG0/e;LE0/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, Lx0/k;->j()Ln0/f;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v1

    const-string v2, "Connection not open"

    invoke-static {v1, v2}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->b()Z

    move-result v1

    const-string v2, "Protocol layering without a tunnel not supported"

    invoke-static {v1, v2}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Multiple protocol layering not supported"

    invoke-static {v1, v2}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->d()La0/n;

    move-result-object v0

    iget-object v1, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v1}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/p;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lx0/o;->b:Ll0/c;

    invoke-interface {v2, v1, v0, p1, p2}, Ll0/c;->b(Ll0/p;La0/n;LG0/e;LE0/e;)V

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lx0/o;->c:Lx0/k;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {p1}, Lx0/k;->j()Ln0/f;

    move-result-object p1

    invoke-interface {v1}, Ll0/p;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Ln0/f;->l(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance p1, Lx0/e;

    invoke-direct {p1}, Lx0/e;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public flush()V
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0}, La0/i;->flush()V

    return-void
.end method

.method public g(La0/n;ZLE0/e;)V
    .locals 2

    const-string v0, "Next proxy"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, Lx0/k;->j()Ln0/f;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Ll0/p;->r(Ljava/net/Socket;La0/n;ZLE0/e;)V

    monitor-enter p0

    :try_start_1
    iget-object p3, p0, Lx0/o;->c:Lx0/k;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {p3}, Lx0/k;->j()Ln0/f;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ln0/f;->o(La0/n;Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance p1, Lx0/e;

    invoke-direct {p1}, Lx0/e;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public h()Z
    .locals 1

    invoke-direct {p0}, Lx0/o;->F()Ll0/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, La0/j;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lx0/o;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lx0/o;->e:J

    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0, p1}, La0/j;->j(I)V

    return-void
.end method

.method public k()La0/s;
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0}, La0/i;->k()La0/s;

    move-result-object v0

    return-object v0
.end method

.method public l(La0/s;)V
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0, p1}, La0/i;->l(La0/s;)V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx0/o;->d:Z

    return-void
.end method

.method public n(La0/q;)V
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0, p1}, La0/i;->n(La0/q;)V

    return-void
.end method

.method public o(I)Z
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0, p1}, La0/i;->o(I)Z

    move-result p1

    return p1
.end method

.method public p(Ln0/b;LG0/e;LE0/e;)V
    .locals 8

    const-string v0, "Route"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, Lx0/k;->j()Ln0/f;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection already open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Ln0/b;->h()La0/n;

    move-result-object v7

    iget-object v1, p0, Lx0/o;->b:Ll0/c;

    if-eqz v7, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ln0/b;->d()La0/n;

    move-result-object v2

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Ln0/b;->f()Ljava/net/InetAddress;

    move-result-object v4

    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Ll0/c;->a(Ll0/p;La0/n;Ljava/net/InetAddress;LG0/e;LE0/e;)V

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lx0/o;->c:Lx0/k;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {p1}, Lx0/k;->j()Ln0/f;

    move-result-object p1

    if-nez v7, :cond_1

    invoke-interface {v0}, Ll0/p;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Ln0/f;->j(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ll0/p;->a()Z

    move-result p2

    invoke-virtual {p1, v7, p2}, Ln0/f;->i(La0/n;Z)V

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    :try_start_2
    new-instance p1, Lx0/e;

    invoke-direct {p1}, Lx0/e;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public q()Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0}, La0/o;->q()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lx0/o;->d:Z

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, La0/j;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lx0/o;->a:Ll0/b;

    iget-wide v1, p0, Lx0/o;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ll0/b;->a(Ll0/n;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/o;->c:Lx0/k;

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public t()Ljavax/net/ssl/SSLSession;
    .locals 2

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0}, Ll0/p;->u()Ljava/net/Socket;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public v()I
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0}, La0/o;->v()I

    move-result v0

    return v0
.end method

.method public x(ZLE0/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v0}, Lx0/k;->j()Ln0/f;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v1

    const-string v2, "Connection not open"

    invoke-static {v1, v2}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->b()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Connection is already tunnelled"

    invoke-static {v1, v2}, LH0/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Ln0/f;->d()La0/n;

    move-result-object v0

    iget-object v1, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {v1}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/p;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p1, p2}, Ll0/p;->r(Ljava/net/Socket;La0/n;ZLE0/e;)V

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lx0/o;->c:Lx0/k;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lx0/o;->c:Lx0/k;

    invoke-virtual {p2}, Lx0/k;->j()Ln0/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln0/f;->p(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance p1, Lx0/e;

    invoke-direct {p1}, Lx0/e;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx0/o;->d:Z

    return-void
.end method

.method public z(La0/l;)V
    .locals 1

    invoke-direct {p0}, Lx0/o;->w()Ll0/p;

    move-result-object v0

    invoke-interface {v0, p1}, La0/i;->z(La0/l;)V

    return-void
.end method
