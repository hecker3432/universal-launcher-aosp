.class public Lh0/h;
.super Lh0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Authorization"

    invoke-interface {p1, v0}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "http.auth.target-scope"

    invoke-interface {p2, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/h;

    if-nez v0, :cond_2

    iget-object p1, p0, Lh0/d;->a:Lt0/b;

    const-string p2, "Target auth state not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lh0/d;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lh0/d;->a:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb0/h;->d()Lb0/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lh0/d;->d(Lb0/h;La0/q;LG0/e;)V

    return-void
.end method
