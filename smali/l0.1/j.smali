.class public Ll0/j;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ll0/h;


# instance fields
.field protected a:Ljava/io/InputStream;

.field private b:Z

.field private final c:Ll0/k;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ll0/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "Wrapped stream"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ll0/j;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll0/j;->b:Z

    iput-object p2, p0, Ll0/j;->c:Ll0/k;

    return-void
.end method


# virtual methods
.method protected E(I)V
    .locals 2

    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Ll0/j;->c:Ll0/k;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ll0/k;->l(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object p1, p0, Ll0/j;->a:Ljava/io/InputStream;

    goto :goto_2

    :goto_1
    iput-object p1, p0, Ll0/j;->a:Ljava/io/InputStream;

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method protected F()Z
    .locals 2

    iget-boolean v0, p0, Ll0/j;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public available()I
    .locals 1

    invoke-virtual {p0}, Ll0/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ll0/j;->b()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ll0/j;->c:Ll0/k;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ll0/k;->j(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v1, p0, Ll0/j;->a:Ljava/io/InputStream;

    goto :goto_2

    :goto_1
    iput-object v1, p0, Ll0/j;->a:Ljava/io/InputStream;

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll0/j;->b:Z

    invoke-virtual {p0}, Ll0/j;->w()V

    return-void
.end method

.method public read()I
    .locals 1

    invoke-virtual {p0}, Ll0/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0, v0}, Ll0/j;->E(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ll0/j;->b()V

    throw v0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll0/j;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    invoke-virtual {p0}, Ll0/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-virtual {p0, p1}, Ll0/j;->E(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ll0/j;->b()V

    throw p1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll0/j;->b:Z

    invoke-virtual {p0}, Ll0/j;->b()V

    return-void
.end method

.method protected w()V
    .locals 3

    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ll0/j;->c:Ll0/k;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ll0/k;->c(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll0/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v1, p0, Ll0/j;->a:Ljava/io/InputStream;

    goto :goto_2

    :goto_1
    iput-object v1, p0, Ll0/j;->a:Ljava/io/InputStream;

    throw v0

    :cond_2
    :goto_2
    return-void
.end method
