.class public Ly0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# instance fields
.field public a:Lt0/b;

.field protected final b:Lo0/h;

.field protected final c:Ly0/a;

.field protected final d:Ly0/d;

.field protected final e:Ll0/c;

.field protected final f:Lm0/c;


# direct methods
.method public constructor <init>(LE0/e;Lo0/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme registry"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ly0/g;->a:Lt0/b;

    iput-object p2, p0, Ly0/g;->b:Lo0/h;

    new-instance v0, Lm0/c;

    invoke-direct {v0}, Lm0/c;-><init>()V

    iput-object v0, p0, Ly0/g;->f:Lm0/c;

    invoke-virtual {p0, p2}, Ly0/g;->e(Lo0/h;)Ll0/c;

    move-result-object p2

    iput-object p2, p0, Ly0/g;->e:Ll0/c;

    invoke-virtual {p0, p1}, Ly0/g;->f(LE0/e;)Ly0/a;

    move-result-object p1

    check-cast p1, Ly0/d;

    iput-object p1, p0, Ly0/g;->d:Ly0/d;

    iput-object p1, p0, Ly0/g;->c:Ly0/a;

    return-void
.end method


# virtual methods
.method public a(Ll0/n;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    instance-of v0, p1, Ly0/c;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, LH0/a;->a(ZLjava/lang/String;)V

    check-cast p1, Ly0/c;

    invoke-virtual {p1}, Ly0/c;->L()Lx0/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly0/c;->G()Ll0/b;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Connection not obtained from this manager"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ly0/c;->L()Lx0/b;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ly0/b;

    if-nez v2, :cond_2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    goto/16 :goto_9

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lx0/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lx0/a;->I()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lx0/c;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lx0/a;->I()Z

    move-result v3

    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    const-string v1, "Released connection is reusable."

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    const-string v1, "Released connection is not reusable."

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Ly0/c;->F()V

    iget-object v1, p0, Ly0/g;->d:Ly0/d;

    :goto_3
    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Ly0/d;->i(Ly0/b;ZJLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_4
    :try_start_3
    iget-object v1, p0, Ly0/g;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Ly0/g;->a:Lt0/b;

    const-string v3, "Exception shutting down released connection."

    invoke-virtual {v1, v3, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :try_start_4
    invoke-virtual {p1}, Lx0/a;->I()Z

    move-result v3

    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_7

    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    const-string v1, "Released connection is reusable."

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    const-string v1, "Released connection is not reusable."

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    invoke-virtual {p1}, Ly0/c;->F()V

    iget-object v1, p0, Ly0/g;->d:Ly0/d;

    goto :goto_3

    :goto_6
    monitor-exit p1

    return-void

    :goto_7
    invoke-virtual {p1}, Lx0/a;->I()Z

    move-result v3

    iget-object v1, p0, Ly0/g;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v3, :cond_9

    iget-object v1, p0, Ly0/g;->a:Lt0/b;

    const-string v4, "Released connection is reusable."

    invoke-virtual {v1, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    iget-object v1, p0, Ly0/g;->a:Lt0/b;

    const-string v4, "Released connection is not reusable."

    invoke-virtual {v1, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_a
    :goto_8
    invoke-virtual {p1}, Ly0/c;->F()V

    iget-object v1, p0, Ly0/g;->d:Ly0/d;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Ly0/d;->i(Ly0/b;ZJLjava/util/concurrent/TimeUnit;)V

    throw v0

    :goto_9
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    :goto_a
    throw p2

    :goto_b
    goto :goto_a
.end method

.method public b()Lo0/h;
    .locals 1

    iget-object v0, p0, Ly0/g;->b:Lo0/h;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Ly0/g;->a:Lt0/b;

    const-string v1, "Shutting down"

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Ly0/g;->d:Ly0/d;

    invoke-virtual {v0}, Ly0/d;->q()V

    return-void
.end method

.method public d(Ln0/b;Ljava/lang/Object;)Ll0/d;
    .locals 1

    iget-object v0, p0, Ly0/g;->d:Ly0/d;

    invoke-virtual {v0, p1, p2}, Ly0/d;->p(Ln0/b;Ljava/lang/Object;)Ly0/e;

    move-result-object p2

    new-instance v0, Ly0/g$a;

    invoke-direct {v0, p0, p2, p1}, Ly0/g$a;-><init>(Ly0/g;Ly0/e;Ln0/b;)V

    return-object v0
.end method

.method protected e(Lo0/h;)Ll0/c;
    .locals 1

    new-instance v0, Lx0/g;

    invoke-direct {v0, p1}, Lx0/g;-><init>(Lo0/h;)V

    return-object v0
.end method

.method protected f(LE0/e;)Ly0/a;
    .locals 2

    new-instance v0, Ly0/d;

    iget-object v1, p0, Ly0/g;->e:Ll0/c;

    invoke-direct {v0, v1, p1}, Ly0/d;-><init>(Ll0/c;LE0/e;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ly0/g;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
