.class public abstract Lx0/c;
.super Lx0/a;
.source "SourceFile"


# instance fields
.field protected volatile f:Lx0/b;


# direct methods
.method protected constructor <init>(Ll0/b;Lx0/b;)V
    .locals 1

    iget-object v0, p2, Lx0/b;->b:Ll0/p;

    invoke-direct {p0, p1, v0}, Lx0/a;-><init>(Ll0/b;Ll0/p;)V

    iput-object p2, p0, Lx0/c;->f:Lx0/b;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/c;->K(Lx0/b;)V

    invoke-virtual {v0, p1}, Lx0/b;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected declared-synchronized F()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lx0/c;->f:Lx0/b;

    invoke-super {p0}, Lx0/a;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected K(Lx0/b;)V
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

.method protected L()Lx0/b;
    .locals 1

    iget-object v0, p0, Lx0/c;->f:Lx0/b;

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx0/b;->e()V

    :cond_0
    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, La0/j;->c()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx0/b;->e()V

    :cond_0
    invoke-virtual {p0}, Lx0/a;->H()Ll0/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, La0/j;->close()V

    :cond_1
    return-void
.end method

.method public d()Ln0/b;
    .locals 2

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/c;->K(Lx0/b;)V

    iget-object v1, v0, Lx0/b;->e:Ln0/f;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->n()Ln0/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(LG0/e;LE0/e;)V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/c;->K(Lx0/b;)V

    invoke-virtual {v0, p1, p2}, Lx0/b;->b(LG0/e;LE0/e;)V

    return-void
.end method

.method public g(La0/n;ZLE0/e;)V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/c;->K(Lx0/b;)V

    invoke-virtual {v0, p1, p2, p3}, Lx0/b;->f(La0/n;ZLE0/e;)V

    return-void
.end method

.method public p(Ln0/b;LG0/e;LE0/e;)V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/c;->K(Lx0/b;)V

    invoke-virtual {v0, p1, p2, p3}, Lx0/b;->c(Ln0/b;LG0/e;LE0/e;)V

    return-void
.end method

.method public x(ZLE0/e;)V
    .locals 1

    invoke-virtual {p0}, Lx0/c;->L()Lx0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/c;->K(Lx0/b;)V

    invoke-virtual {v0, p1, p2}, Lx0/b;->g(ZLE0/e;)V

    return-void
.end method
