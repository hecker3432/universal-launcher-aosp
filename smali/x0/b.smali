.class public abstract Lx0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ll0/c;

.field protected final b:Ll0/p;

.field protected volatile c:Ln0/b;

.field protected volatile d:Ljava/lang/Object;

.field protected volatile e:Ln0/f;


# direct methods
.method protected constructor <init>(Ll0/c;Ln0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lx0/b;->a:Ll0/c;

    invoke-interface {p1}, Ll0/c;->c()Ll0/p;

    move-result-object p1

    iput-object p1, p0, Lx0/b;->b:Ll0/p;

    iput-object p2, p0, Lx0/b;->c:Ln0/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lx0/b;->e:Ln0/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx0/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public b(LG0/e;LE0/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->b()Z

    move-result v0

    const-string v1, "Protocol layering without a tunnel not supported"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Multiple protocol layering not supported"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->d()La0/n;

    move-result-object v0

    iget-object v1, p0, Lx0/b;->a:Ll0/c;

    iget-object v2, p0, Lx0/b;->b:Ll0/p;

    invoke-interface {v1, v2, v0, p1, p2}, Ll0/c;->b(Ll0/p;La0/n;LG0/e;LE0/e;)V

    iget-object p1, p0, Lx0/b;->e:Ln0/f;

    iget-object p2, p0, Lx0/b;->b:Ll0/p;

    invoke-interface {p2}, Ll0/p;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Ln0/f;->l(Z)V

    return-void
.end method

.method public c(Ln0/b;LG0/e;LE0/e;)V
    .locals 7

    const-string v0, "Route"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection already open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    :cond_0
    new-instance v0, Ln0/f;

    invoke-direct {v0, p1}, Ln0/f;-><init>(Ln0/b;)V

    iput-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {p1}, Ln0/b;->h()La0/n;

    move-result-object v0

    iget-object v1, p0, Lx0/b;->a:Ll0/c;

    iget-object v2, p0, Lx0/b;->b:Ll0/p;

    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ln0/b;->d()La0/n;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Ln0/b;->f()Ljava/net/InetAddress;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Ll0/c;->a(Ll0/p;La0/n;Ljava/net/InetAddress;LG0/e;LE0/e;)V

    iget-object p1, p0, Lx0/b;->e:Ln0/f;

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    iget-object p2, p0, Lx0/b;->b:Ll0/p;

    invoke-interface {p2}, Ll0/p;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Ln0/f;->j(Z)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lx0/b;->b:Ll0/p;

    invoke-interface {p2}, Ll0/p;->a()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Ln0/f;->i(La0/n;Z)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lx0/b;->d:Ljava/lang/Object;

    return-void
.end method

.method protected e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/b;->e:Ln0/f;

    iput-object v0, p0, Lx0/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public f(La0/n;ZLE0/e;)V
    .locals 2

    const-string v0, "Next proxy"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/b;->b:Ll0/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Ll0/p;->r(Ljava/net/Socket;La0/n;ZLE0/e;)V

    iget-object p3, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {p3, p1, p2}, Ln0/f;->o(La0/n;Z)V

    return-void
.end method

.method public g(ZLE0/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->k()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection is already tunnelled"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lx0/b;->b:Ll0/p;

    iget-object v1, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {v1}, Ln0/f;->d()La0/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p1, p2}, Ll0/p;->r(Ljava/net/Socket;La0/n;ZLE0/e;)V

    iget-object p2, p0, Lx0/b;->e:Ln0/f;

    invoke-virtual {p2, p1}, Ln0/f;->p(Z)V

    return-void
.end method
