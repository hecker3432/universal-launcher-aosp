.class public abstract LD0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/p;


# instance fields
.field protected a:LD0/r;

.field protected b:LE0/e;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LD0/a;-><init>(LE0/e;)V

    return-void
.end method

.method protected constructor <init>(LE0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD0/r;

    invoke-direct {v0}, LD0/r;-><init>()V

    iput-object v0, p0, LD0/a;->a:LD0/r;

    iput-object p1, p0, LD0/a;->b:LE0/e;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Header name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LD0/a;->a:LD0/r;

    new-instance v1, LD0/b;

    invoke-direct {v1, p1, p2}, LD0/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LD0/r;->a(La0/e;)V

    return-void
.end method

.method public c(LE0/e;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE0/e;

    iput-object p1, p0, LD0/a;->b:LE0/e;

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(La0/e;)V
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->i(La0/e;)V

    return-void
.end method

.method public f([La0/e;)V
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->j([La0/e;)V

    return-void
.end method

.method public getAllHeaders()[La0/e;
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0}, LD0/r;->d()[La0/e;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)La0/e;
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->e(Ljava/lang/String;)La0/e;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)[La0/e;
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->f(Ljava/lang/String;)[La0/e;

    move-result-object p1

    return-object p1
.end method

.method public getParams()LE0/e;
    .locals 1

    iget-object v0, p0, LD0/a;->b:LE0/e;

    if-nez v0, :cond_0

    new-instance v0, LE0/b;

    invoke-direct {v0}, LE0/b;-><init>()V

    iput-object v0, p0, LD0/a;->b:LE0/e;

    :cond_0
    iget-object v0, p0, LD0/a;->b:LE0/e;

    return-object v0
.end method

.method public headerIterator()La0/h;
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0}, LD0/r;->g()La0/h;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)La0/h;
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->h(Ljava/lang/String;)La0/h;

    move-result-object p1

    return-object p1
.end method

.method public i(La0/e;)V
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, p1}, LD0/r;->a(La0/e;)V

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0}, LD0/r;->g()La0/h;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, La0/h;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, La0/h;->b()La0/e;

    move-result-object v1

    invoke-interface {v1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Header name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LD0/a;->a:LD0/r;

    new-instance v1, LD0/b;

    invoke-direct {v1, p1, p2}, LD0/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LD0/r;->k(La0/e;)V

    return-void
.end method
