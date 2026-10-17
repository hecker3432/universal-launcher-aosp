.class public abstract Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/n;
.implements LG0/e;


# instance fields
.field private final a:Ll0/b;

.field private volatile b:Ll0/p;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method protected constructor <init>(Ll0/b;Ll0/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/a;->a:Ll0/b;

    iput-object p2, p0, Lx0/a;->b:Ll0/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx0/a;->c:Z

    iput-boolean p1, p0, Lx0/a;->d:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lx0/a;->e:J

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    invoke-virtual {p0}, Lx0/a;->J()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, La0/j;->A()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized D()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lx0/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lx0/a;->d:Z

    iget-object v0, p0, Lx0/a;->a:Ll0/b;

    iget-wide v1, p0, Lx0/a;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ll0/b;->a(Ll0/n;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final E(Ll0/p;)V
    .locals 1

    invoke-virtual {p0}, Lx0/a;->J()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lx0/e;

    invoke-direct {p1}, Lx0/e;-><init>()V

    throw p1
.end method

.method protected declared-synchronized F()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lx0/a;->b:Ll0/p;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lx0/a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected G()Ll0/b;
    .locals 1

    iget-object v0, p0, Lx0/a;->a:Ll0/b;

    return-object v0
.end method

.method protected H()Ll0/p;
    .locals 1

    iget-object v0, p0, Lx0/a;->b:Ll0/p;

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lx0/a;->c:Z

    return v0
.end method

.method protected J()Z
    .locals 1

    iget-boolean v0, p0, Lx0/a;->d:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    instance-of v1, v0, LG0/e;

    if-eqz v1, :cond_0

    check-cast v0, LG0/e;

    invoke-interface {v0, p1}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-interface {v0}, La0/i;->flush()V

    return-void
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, La0/j;->h()Z

    move-result v0

    return v0
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lx0/a;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lx0/a;->e:J

    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-interface {v0, p1}, La0/j;->j(I)V

    return-void
.end method

.method public k()La0/s;
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-virtual {p0}, Lx0/a;->y()V

    invoke-interface {v0}, La0/i;->k()La0/s;

    move-result-object v0

    return-object v0
.end method

.method public l(La0/s;)V
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-virtual {p0}, Lx0/a;->y()V

    invoke-interface {v0, p1}, La0/i;->l(La0/s;)V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx0/a;->c:Z

    return-void
.end method

.method public n(La0/q;)V
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-virtual {p0}, Lx0/a;->y()V

    invoke-interface {v0, p1}, La0/i;->n(La0/q;)V

    return-void
.end method

.method public o(I)Z
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-interface {v0, p1}, La0/i;->o(I)Z

    move-result p1

    return p1
.end method

.method public q()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-interface {v0}, La0/o;->q()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized s()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lx0/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lx0/a;->d:Z

    invoke-virtual {p0}, Lx0/a;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, La0/j;->c()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lx0/a;->a:Ll0/b;

    iget-wide v1, p0, Lx0/a;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ll0/b;->a(Ll0/n;JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public t()Ljavax/net/ssl/SSLSession;
    .locals 3

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-virtual {p0}, Lx0/a;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Ll0/p;->u()Ljava/net/Socket;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public v()I
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-interface {v0}, La0/o;->v()I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    instance-of v1, v0, LG0/e;

    if-eqz v1, :cond_0

    check-cast v0, LG0/e;

    invoke-interface {v0, p1, p2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx0/a;->c:Z

    return-void
.end method

.method public z(La0/l;)V
    .locals 1

    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Ll0/p;)V

    invoke-virtual {p0}, Lx0/a;->y()V

    invoke-interface {v0, p1}, La0/i;->z(La0/l;)V

    return-void
.end method
