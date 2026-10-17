.class public Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# static fields
.field private static final g:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public a:Lt0/b;

.field private final b:Lo0/h;

.field private final c:Ll0/c;

.field private d:Lx0/k;

.field private e:Lx0/o;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lx0/d;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lo0/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx0/d;->a:Lt0/b;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lx0/d;->b:Lo0/h;

    invoke-virtual {p0, p1}, Lx0/d;->f(Lo0/h;)Ll0/c;

    move-result-object p1

    iput-object p1, p0, Lx0/d;->c:Ll0/c;

    return-void
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lx0/d;->f:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection manager has been shut down"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private h(La0/i;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, La0/j;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lx0/d;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/d;->a:Lt0/b;

    const-string v1, "I/O exception shutting down connection"

    invoke-virtual {v0, v1, p1}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ll0/n;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    instance-of v0, p1, Lx0/o;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, LH0/a;->a(ZLjava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lx0/o;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx0/d;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx0/d;->a:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lx0/o;->H()Lx0/k;

    move-result-object p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v0}, Lx0/o;->G()Ll0/b;

    move-result-object p1

    if-ne p1, p0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v1, "Connection not obtained from this manager"

    invoke-static {p1, v1}, LH0/b;->a(ZLjava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean p1, p0, Lx0/d;->f:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lx0/d;->h(La0/i;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :cond_3
    const/4 p1, 0x0

    :try_start_3
    invoke-virtual {v0}, Lx0/o;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lx0/o;->I()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lx0/d;->h(La0/i;)V

    goto :goto_2

    :catchall_2
    move-exception p2

    goto :goto_5

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lx0/o;->I()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lx0/d;->d:Lx0/k;

    if-eqz p4, :cond_5

    move-object v2, p4

    goto :goto_3

    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_3
    invoke-virtual {v1, p2, p3, v2}, LF0/a;->f(JLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lx0/d;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    const-string p2, "indefinitely"

    :goto_4
    iget-object p3, p0, Lx0/d;->a:Lt0/b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection can be kept alive "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lt0/b;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    :try_start_4
    invoke-virtual {v0}, Lx0/o;->b()Lx0/k;

    iput-object p1, p0, Lx0/d;->e:Lx0/o;

    iget-object p2, p0, Lx0/d;->d:Lx0/k;

    invoke-virtual {p2}, Lx0/k;->k()Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lx0/d;->d:Lx0/k;

    :cond_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Lx0/o;->b()Lx0/k;

    iput-object p1, p0, Lx0/d;->e:Lx0/o;

    iget-object p3, p0, Lx0/d;->d:Lx0/k;

    invoke-virtual {p3}, Lx0/k;->k()Z

    move-result p3

    if-eqz p3, :cond_9

    iput-object p1, p0, Lx0/d;->d:Lx0/k;

    :cond_9
    throw p2

    :goto_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :goto_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public b()Lo0/h;
    .locals 1

    iget-object v0, p0, Lx0/d;->b:Lo0/h;

    return-object v0
.end method

.method public c()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lx0/d;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lx0/d;->d:Lx0/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lx0/k;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    iput-object v0, p0, Lx0/d;->d:Lx0/k;

    iput-object v0, p0, Lx0/d;->e:Lx0/o;

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lx0/d;->d:Lx0/k;

    iput-object v0, p0, Lx0/d;->e:Lx0/o;

    throw v1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final d(Ln0/b;Ljava/lang/Object;)Ll0/d;
    .locals 1

    new-instance v0, Lx0/d$a;

    invoke-direct {v0, p0, p1, p2}, Lx0/d$a;-><init>(Lx0/d;Ln0/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected f(Lo0/h;)Ll0/c;
    .locals 1

    new-instance v0, Lx0/g;

    invoke-direct {v0, p1}, Lx0/g;-><init>(Lo0/h;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lx0/d;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method g(Ln0/b;Ljava/lang/Object;)Ll0/n;
    .locals 10

    const-string p2, "Route"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lx0/d;->e()V

    iget-object p2, p0, Lx0/d;->a:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lx0/d;->a:Lt0/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection for route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p2, p0, Lx0/d;->e:Lx0/o;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const-string v0, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {p2, v0}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object p2, p0, Lx0/d;->d:Lx0/k;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lx0/k;->i()Ln0/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln0/b;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lx0/d;->d:Lx0/k;

    invoke-virtual {p2}, Lx0/k;->g()V

    const/4 p2, 0x0

    iput-object p2, p0, Lx0/d;->d:Lx0/k;

    :cond_2
    iget-object p2, p0, Lx0/d;->d:Lx0/k;

    if-nez p2, :cond_3

    sget-object p2, Lx0/d;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lx0/d;->c:Ll0/c;

    invoke-interface {p2}, Ll0/c;->c()Ll0/p;

    move-result-object v6

    new-instance p2, Lx0/k;

    iget-object v3, p0, Lx0/d;->a:Lt0/b;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lx0/k;-><init>(Lt0/b;Ljava/lang/String;Ln0/b;Ll0/p;JLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Lx0/d;->d:Lx0/k;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lx0/d;->d:Lx0/k;

    invoke-virtual {v0, p1, p2}, Lx0/k;->d(J)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lx0/d;->d:Lx0/k;

    invoke-virtual {p1}, Lx0/k;->g()V

    iget-object p1, p0, Lx0/d;->d:Lx0/k;

    invoke-virtual {p1}, Lx0/k;->j()Ln0/f;

    move-result-object p1

    invoke-virtual {p1}, Ln0/f;->m()V

    :cond_4
    new-instance p1, Lx0/o;

    iget-object p2, p0, Lx0/d;->c:Ll0/c;

    iget-object v0, p0, Lx0/d;->d:Lx0/k;

    invoke-direct {p1, p0, p2, v0}, Lx0/o;-><init>(Ll0/b;Ll0/c;Lx0/k;)V

    iput-object p1, p0, Lx0/d;->e:Lx0/o;

    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
