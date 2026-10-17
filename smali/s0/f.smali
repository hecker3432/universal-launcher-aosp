.class public abstract Ls0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/k;


# instance fields
.field protected a:La0/k;


# direct methods
.method public constructor <init>(La0/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wrapped entity"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/k;

    iput-object p1, p0, Ls0/f;->a:La0/k;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->a()Z

    move-result v0

    return v0
.end method

.method public b()La0/e;
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->b()La0/e;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0, p1}, La0/k;->f(Ljava/io/OutputStream;)V

    return-void
.end method

.method public h()La0/e;
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->h()La0/e;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->k()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->n()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->o()V

    return-void
.end method

.method public q()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->q()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->r()J

    move-result-wide v0

    return-wide v0
.end method
