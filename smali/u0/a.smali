.class public abstract Lu0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/i;


# instance fields
.field private final a:LA0/b;

.field private final b:LA0/a;

.field private c:LC0/f;

.field private d:LC0/g;

.field private e:LC0/b;

.field private f:LC0/c;

.field private g:LC0/d;

.field private h:Lu0/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu0/a;->c:LC0/f;

    iput-object v0, p0, Lu0/a;->d:LC0/g;

    iput-object v0, p0, Lu0/a;->e:LC0/b;

    iput-object v0, p0, Lu0/a;->f:LC0/c;

    iput-object v0, p0, Lu0/a;->g:LC0/d;

    iput-object v0, p0, Lu0/a;->h:Lu0/e;

    invoke-virtual {p0}, Lu0/a;->F()LA0/b;

    move-result-object v0

    iput-object v0, p0, Lu0/a;->a:LA0/b;

    invoke-virtual {p0}, Lu0/a;->E()LA0/a;

    move-result-object v0

    iput-object v0, p0, Lu0/a;->b:LA0/a;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    invoke-interface {p0}, La0/j;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lu0/a;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lu0/a;->c:LC0/f;

    invoke-interface {v0, v1}, LC0/f;->d(I)Z

    invoke-virtual {p0}, Lu0/a;->L()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method protected D(LC0/e;LC0/e;)Lu0/e;
    .locals 1

    new-instance v0, Lu0/e;

    invoke-direct {v0, p1, p2}, Lu0/e;-><init>(LC0/e;LC0/e;)V

    return-object v0
.end method

.method protected E()LA0/a;
    .locals 2

    new-instance v0, LA0/a;

    new-instance v1, LA0/c;

    invoke-direct {v1}, LA0/c;-><init>()V

    invoke-direct {v0, v1}, LA0/a;-><init>(Ls0/d;)V

    return-object v0
.end method

.method protected F()LA0/b;
    .locals 2

    new-instance v0, LA0/b;

    new-instance v1, LA0/d;

    invoke-direct {v1}, LA0/d;-><init>()V

    invoke-direct {v0, v1}, LA0/b;-><init>(Ls0/d;)V

    return-object v0
.end method

.method protected G()La0/t;
    .locals 1

    sget-object v0, Lu0/c;->b:Lu0/c;

    return-object v0
.end method

.method protected H(LC0/g;LE0/e;)LC0/d;
    .locals 2

    new-instance v0, LB0/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, LB0/j;-><init>(LC0/g;LD0/t;LE0/e;)V

    return-object v0
.end method

.method protected abstract I(LC0/f;La0/t;LE0/e;)LC0/c;
.end method

.method protected J()V
    .locals 1

    iget-object v0, p0, Lu0/a;->d:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    return-void
.end method

.method protected K(LC0/f;LC0/g;LE0/e;)V
    .locals 1

    const-string v0, "Input session buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC0/f;

    iput-object v0, p0, Lu0/a;->c:LC0/f;

    const-string v0, "Output session buffer"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC0/g;

    iput-object v0, p0, Lu0/a;->d:LC0/g;

    instance-of v0, p1, LC0/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LC0/b;

    iput-object v0, p0, Lu0/a;->e:LC0/b;

    :cond_0
    invoke-virtual {p0}, Lu0/a;->G()La0/t;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lu0/a;->I(LC0/f;La0/t;LE0/e;)LC0/c;

    move-result-object v0

    iput-object v0, p0, Lu0/a;->f:LC0/c;

    invoke-virtual {p0, p2, p3}, Lu0/a;->H(LC0/g;LE0/e;)LC0/d;

    move-result-object p3

    iput-object p3, p0, Lu0/a;->g:LC0/d;

    invoke-interface {p1}, LC0/f;->a()LC0/e;

    move-result-object p1

    invoke-interface {p2}, LC0/g;->a()LC0/e;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lu0/a;->D(LC0/e;LC0/e;)Lu0/e;

    move-result-object p1

    iput-object p1, p0, Lu0/a;->h:Lu0/e;

    return-void
.end method

.method protected L()Z
    .locals 1

    iget-object v0, p0, Lu0/a;->e:LC0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LC0/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    invoke-virtual {p0}, Lu0/a;->s()V

    invoke-virtual {p0}, Lu0/a;->J()V

    return-void
.end method

.method public k()La0/s;
    .locals 3

    invoke-virtual {p0}, Lu0/a;->s()V

    iget-object v0, p0, Lu0/a;->f:LC0/c;

    invoke-interface {v0}, LC0/c;->a()La0/p;

    move-result-object v0

    check-cast v0, La0/s;

    invoke-interface {v0}, La0/s;->h()La0/F;

    move-result-object v1

    invoke-interface {v1}, La0/F;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lu0/a;->h:Lu0/e;

    invoke-virtual {v1}, Lu0/e;->b()V

    :cond_0
    return-object v0
.end method

.method public l(La0/s;)V
    .locals 2

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lu0/a;->s()V

    iget-object v0, p0, Lu0/a;->b:LA0/a;

    iget-object v1, p0, Lu0/a;->c:LC0/f;

    invoke-virtual {v0, v1, p1}, LA0/a;->a(LC0/f;La0/p;)La0/k;

    move-result-object v0

    invoke-interface {p1, v0}, La0/s;->a(La0/k;)V

    return-void
.end method

.method public n(La0/q;)V
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lu0/a;->s()V

    iget-object v0, p0, Lu0/a;->g:LC0/d;

    invoke-interface {v0, p1}, LC0/d;->a(La0/p;)V

    iget-object p1, p0, Lu0/a;->h:Lu0/e;

    invoke-virtual {p1}, Lu0/e;->a()V

    return-void
.end method

.method public o(I)Z
    .locals 1

    invoke-virtual {p0}, Lu0/a;->s()V

    :try_start_0
    iget-object v0, p0, Lu0/a;->c:LC0/f;

    invoke-interface {v0, p1}, LC0/f;->d(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract s()V
.end method

.method public z(La0/l;)V
    .locals 3

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lu0/a;->s()V

    invoke-interface {p1}, La0/l;->getEntity()La0/k;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lu0/a;->a:LA0/b;

    iget-object v1, p0, Lu0/a;->d:LC0/g;

    invoke-interface {p1}, La0/l;->getEntity()La0/k;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, LA0/b;->b(LC0/g;La0/p;La0/k;)V

    return-void
.end method
