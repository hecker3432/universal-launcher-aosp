.class public Ly0/d;
.super Ly0/a;
.source "SourceFile"


# instance fields
.field public e:Lt0/b;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field protected final g:Ll0/c;

.field protected final h:Lm0/b;

.field protected final i:Ljava/util/Set;

.field protected final j:Ljava/util/Queue;

.field protected final k:Ljava/util/Queue;

.field protected final l:Ljava/util/Map;

.field private final m:J

.field private final n:Ljava/util/concurrent/TimeUnit;

.field protected volatile o:Z

.field protected volatile p:I

.field protected volatile q:I


# direct methods
.method public constructor <init>(Ll0/c;LE0/e;)V
    .locals 1

    invoke-static {p2}, Lm0/a;->a(LE0/e;)Lm0/b;

    move-result-object v0

    invoke-static {p2}, Lm0/a;->b(LE0/e;)I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Ly0/d;-><init>(Ll0/c;Lm0/b;I)V

    return-void
.end method

.method public constructor <init>(Ll0/c;Lm0/b;I)V
    .locals 7

    const-wide/16 v4, -0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ly0/d;-><init>(Ll0/c;Lm0/b;IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ll0/c;Lm0/b;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Ly0/a;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ly0/d;->e:Lt0/b;

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connections per route"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ly0/a;->b:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Ly0/a;->c:Ljava/util/Set;

    iput-object v0, p0, Ly0/d;->i:Ljava/util/Set;

    iput-object p1, p0, Ly0/d;->g:Ll0/c;

    iput-object p2, p0, Ly0/d;->h:Lm0/b;

    iput p3, p0, Ly0/d;->p:I

    invoke-virtual {p0}, Ly0/d;->d()Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-virtual {p0}, Ly0/d;->f()Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-virtual {p0}, Ly0/d;->e()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ly0/d;->l:Ljava/util/Map;

    iput-wide p4, p0, Ly0/d;->m:J

    iput-object p6, p0, Ly0/d;->n:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method static synthetic a(Ly0/d;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private b(Ly0/b;)V
    .locals 2

    invoke-virtual {p1}, Ly0/b;->h()Ll0/p;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, La0/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    const-string v1, "I/O error closing connection"

    invoke-virtual {v0, v1, p1}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected c(Ly0/f;Ll0/c;)Ly0/b;
    .locals 8

    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new connection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly0/f;->h()Ln0/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ly0/b;

    invoke-virtual {p1}, Ly0/f;->h()Ln0/b;

    move-result-object v4

    iget-wide v5, p0, Ly0/d;->m:J

    iget-object v7, p0, Ly0/d;->n:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Ly0/b;-><init>(Ll0/c;Ln0/b;JLjava/util/concurrent/TimeUnit;)V

    iget-object p2, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1, v0}, Ly0/f;->b(Ly0/b;)V

    iget p1, p0, Ly0/d;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly0/d;->q:I

    iget-object p1, p0, Ly0/d;->i:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected d()Ljava/util/Queue;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected f()Ljava/util/Queue;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected g(Ly0/b;)V
    .locals 4

    invoke-virtual {p1}, Ly0/b;->i()Ln0/b;

    move-result-object v0

    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lx0/b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Ly0/d;->b(Ly0/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ly0/d;->l(Ln0/b;Z)Ly0/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Ly0/f;->c(Ly0/b;)Z

    iget p1, p0, Ly0/d;->q:I

    sub-int/2addr p1, v1

    iput p1, p0, Ly0/d;->q:I

    invoke-virtual {v2}, Ly0/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ly0/d;->l:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ly0/d;->g(Ly0/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    const-string v1, "No free connection to delete"

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public i(Ly0/b;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 6

    invoke-virtual {p1}, Ly0/b;->i()Ln0/b;

    move-result-object v0

    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    const-string v2, "]["

    if-eqz v1, :cond_0

    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lx0/b;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Ly0/d;->o:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Ly0/d;->b(Ly0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Ly0/d;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ly0/d;->l(Ln0/b;Z)Ly0/f;

    move-result-object v3

    if-eqz p2, :cond_4

    invoke-virtual {v3}, Ly0/f;->f()I

    move-result p2

    if-ltz p2, :cond_4

    iget-object p2, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v4, 0x0

    cmp-long p2, p3, v4

    if-lez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "indefinitely"

    :goto_0
    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pooling connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lx0/b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]; keep alive "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3, p1}, Ly0/f;->e(Ly0/b;)V

    invoke-virtual {p1, p3, p4, p5}, Ly0/b;->k(JLjava/util/concurrent/TimeUnit;)V

    iget-object p2, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Ly0/d;->b(Ly0/b;)V

    invoke-virtual {v3}, Ly0/f;->d()V

    iget p1, p0, Ly0/d;->q:I

    sub-int/2addr p1, v1

    iput p1, p0, Ly0/d;->q:I

    :goto_1
    invoke-virtual {p0, v3}, Ly0/d;->o(Ly0/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected j(Ln0/b;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ly0/i;)Ly0/b;
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p3, v0

    if-lez v3, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr v3, p3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object p3, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p3}, Ly0/d;->l(Ln0/b;Z)Ly0/f;

    move-result-object p4

    move-object p5, v2

    :goto_1
    if-nez v2, :cond_b

    iget-boolean v1, p0, Ly0/d;->o:Z

    const/4 v2, 0x0

    xor-int/2addr v1, p3

    const-string v3, "Connection pool shut down"

    invoke-static {v1, v3}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " out of "

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] total kept alive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", total issued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ly0/d;->i:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", total allocated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ly0/d;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ly0/d;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_2
    invoke-virtual {p0, p4, p2}, Ly0/d;->k(Ly0/f;Ljava/lang/Object;)Ly0/b;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p4}, Ly0/f;->f()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v4, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v4}, Lt0/b;->e()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "]"

    const-string v6, "]["

    if-eqz v4, :cond_4

    :try_start_2
    iget-object v4, p0, Ly0/d;->e:Lt0/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Available capacity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ly0/f;->f()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ly0/f;->g()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_4
    if-eqz v2, :cond_6

    iget v3, p0, Ly0/d;->q:I

    iget v4, p0, Ly0/d;->p:I

    if-ge v3, v4, :cond_6

    iget-object v1, p0, Ly0/d;->g:Ll0/c;

    invoke-virtual {p0, p4, v1}, Ly0/d;->c(Ly0/f;Ll0/c;)Ly0/b;

    move-result-object v1

    :cond_5
    :goto_3
    move-object v2, v1

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Ly0/d;->h()V

    invoke-virtual {p0, p1, p3}, Ly0/d;->l(Ln0/b;Z)Ly0/f;

    move-result-object p4

    iget-object v1, p0, Ly0/d;->g:Ll0/c;

    invoke-virtual {p0, p4, v1}, Ly0/d;->c(Ly0/f;Ll0/c;)Ly0/b;

    move-result-object v1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v2}, Lt0/b;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Ly0/d;->e:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to wait for connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_8
    if-nez p5, :cond_9

    iget-object p5, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p5

    invoke-virtual {p0, p5, p4}, Ly0/d;->n(Ljava/util/concurrent/locks/Condition;Ly0/f;)Ly0/h;

    move-result-object p5

    invoke-virtual {p6, p5}, Ly0/i;->b(Ly0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :try_start_3
    invoke-virtual {p4, p5}, Ly0/f;->l(Ly0/h;)V

    iget-object v2, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-interface {v2, p5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5, v0}, Ly0/h;->a(Ljava/util/Date;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p4, p5}, Ly0/f;->m(Ly0/h;)V

    iget-object v3, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-interface {v3, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ll0/g;

    const-string p2, "Timeout waiting for connection from pool"

    invoke-direct {p1, p2}, Ll0/g;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-virtual {p4, p5}, Ly0/f;->m(Ly0/h;)V

    iget-object p2, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-interface {p2, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    :goto_4
    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :goto_5
    iget-object p2, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method protected k(Ly0/f;Ljava/lang/Object;)Ly0/b;
    .locals 8

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    :try_start_0
    invoke-virtual {p1, p2}, Ly0/f;->a(Ljava/lang/Object;)Ly0/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const-string v3, "]"

    const-string v4, "]["

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v5, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v5}, Lt0/b;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ly0/d;->e:Lt0/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting free connection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly0/f;->h()Ln0/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_1
    iget-object v5, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ly0/b;->j(J)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v5}, Lt0/b;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Ly0/d;->e:Lt0/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing expired free connection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly0/f;->h()Ln0/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Ly0/d;->b(Ly0/b;)V

    invoke-virtual {p1}, Ly0/f;->d()V

    iget v3, p0, Ly0/d;->q:I

    sub-int/2addr v3, v2

    iput v3, p0, Ly0/d;->q:I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Ly0/d;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ly0/d;->e:Lt0/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No free connections ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly0/f;->h()Ln0/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lt0/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    iget-object p2, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_5
    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method protected l(Ln0/b;Z)Ly0/f;
    .locals 1

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ly0/d;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/f;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ly0/d;->m(Ln0/b;)Ly0/f;

    move-result-object v0

    iget-object p2, p0, Ly0/d;->l:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :goto_1
    iget-object p2, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected m(Ln0/b;)Ly0/f;
    .locals 2

    new-instance v0, Ly0/f;

    iget-object v1, p0, Ly0/d;->h:Lm0/b;

    invoke-direct {v0, p1, v1}, Ly0/f;-><init>(Ln0/b;Lm0/b;)V

    return-object v0
.end method

.method protected n(Ljava/util/concurrent/locks/Condition;Ly0/f;)Ly0/h;
    .locals 1

    new-instance v0, Ly0/h;

    invoke-direct {v0, p1, p2}, Ly0/h;-><init>(Ljava/util/concurrent/locks/Condition;Ly0/f;)V

    return-object v0
.end method

.method protected o(Ly0/f;)V
    .locals 3

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ly0/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly0/d;->e:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying thread waiting on pool ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly0/f;->h()Ln0/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ly0/f;->k()Ly0/h;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {p1}, Lt0/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ly0/d;->e:Lt0/b;

    const-string v0, "Notifying thread waiting on any pool"

    invoke-virtual {p1, v0}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly0/h;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {p1}, Lt0/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ly0/d;->e:Lt0/b;

    const-string v0, "Notifying no-one, there are no waiting threads"

    invoke-virtual {p1, v0}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ly0/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object p1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public p(Ln0/b;Ljava/lang/Object;)Ly0/e;
    .locals 2

    new-instance v0, Ly0/i;

    invoke-direct {v0}, Ly0/i;-><init>()V

    new-instance v1, Ly0/d$a;

    invoke-direct {v1, p0, v0, p1, p2}, Ly0/d$a;-><init>(Ly0/d;Ly0/i;Ln0/b;Ljava/lang/Object;)V

    return-object v1
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ly0/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ly0/d;->o:Z

    iget-object v0, p0, Ly0/d;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/b;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v1}, Ly0/d;->b(Ly0/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Ly0/d;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/b;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Ly0/d;->e:Lt0/b;

    invoke-virtual {v2}, Lt0/b;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ly0/d;->e:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ly0/b;->i()Ln0/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lx0/b;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v1}, Ly0/d;->b(Ly0/b;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ly0/d;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/h;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Ly0/h;->c()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ly0/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_3
    iget-object v1, p0, Ly0/d;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
