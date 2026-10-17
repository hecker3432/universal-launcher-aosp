.class public Lh0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field public a:Lt0/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh0/e;->a:Lt0/b;

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Keep-Alive"

    const-string v2, "Proxy-Connection"

    if-eqz v0, :cond_0

    invoke-interface {p1, v2, v1}, La0/p;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lh0/a;->h(LG0/e;)Lh0/a;

    move-result-object p2

    invoke-virtual {p2}, Lh0/a;->p()Ln0/e;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lh0/e;->a:Lt0/b;

    const-string p2, "Connection route not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ln0/e;->e()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    invoke-interface {p2}, Ln0/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Connection"

    invoke-interface {p1, v0}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1, v0, v1}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p2}, Ln0/e;->e()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    invoke-interface {p2}, Ln0/e;->b()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1, v2}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1, v2, v1}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
