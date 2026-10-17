.class public Ll0/a;
.super Ls0/f;
.source "SourceFile"

# interfaces
.implements Ll0/h;
.implements Ll0/k;


# instance fields
.field protected b:Ll0/n;

.field protected final c:Z


# direct methods
.method public constructor <init>(La0/k;Ll0/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ls0/f;-><init>(La0/k;)V

    const-string p1, "Connection"

    invoke-static {p2, p1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Ll0/a;->b:Ll0/n;

    iput-boolean p3, p0, Ll0/a;->c:Z

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Ll0/a;->b:Ll0/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Ll0/a;->c:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-static {v0}, LH0/g;->a(La0/k;)V

    iget-object v0, p0, Ll0/a;->b:Ll0/n;

    invoke-interface {v0}, Ll0/n;->m()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ll0/n;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ll0/a;->u()V

    return-void

    :goto_1
    invoke-virtual {p0}, Ll0/a;->u()V

    throw v0
.end method


# virtual methods
.method public c(Ljava/io/InputStream;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ll0/a;->b:Ll0/n;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ll0/a;->c:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, La0/j;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Ll0/a;->b:Ll0/n;

    invoke-interface {p1}, Ll0/n;->m()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    throw p1

    :cond_1
    invoke-interface {v0}, Ll0/n;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ll0/a;->u()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {p0}, Ll0/a;->u()V

    throw p1
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Ls0/f;->f(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Ll0/a;->t()V

    return-void
.end method

.method public j(Ljava/io/InputStream;)Z
    .locals 0

    iget-object p1, p0, Ll0/a;->b:Ll0/n;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll0/h;->s()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Ljava/io/InputStream;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ll0/a;->b:Ll0/n;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ll0/a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Ll0/a;->b:Ll0/n;

    invoke-interface {p1}, Ll0/n;->m()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ll0/n;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ll0/a;->u()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {p0}, Ll0/a;->u()V

    throw p1
.end method

.method public o()V
    .locals 0

    invoke-direct {p0}, Ll0/a;->t()V

    return-void
.end method

.method public q()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ll0/j;

    iget-object v1, p0, Ls0/f;->a:La0/k;

    invoke-interface {v1}, La0/k;->q()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ll0/j;-><init>(Ljava/io/InputStream;Ll0/k;)V

    return-object v0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Ll0/a;->b:Ll0/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Ll0/h;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Ll0/a;->b:Ll0/n;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ll0/a;->b:Ll0/n;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method protected u()V
    .locals 2

    iget-object v0, p0, Ll0/a;->b:Ll0/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Ll0/h;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Ll0/a;->b:Ll0/n;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ll0/a;->b:Ll0/n;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
