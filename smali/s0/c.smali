.class public Ls0/c;
.super Ls0/f;
.source "SourceFile"


# instance fields
.field private final b:[B


# direct methods
.method public constructor <init>(La0/k;)V
    .locals 5

    invoke-direct {p0, p1}, Ls0/f;-><init>(La0/k;)V

    invoke-interface {p1}, La0/k;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, La0/k;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ls0/c;->b:[B

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, LH0/g;->b(La0/k;)[B

    move-result-object p1

    iput-object p1, p0, Ls0/c;->b:[B

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ls0/c;->b:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Ls0/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ls0/c;->b:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ls0/f;->f(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Ls0/c;->b:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Ls0/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Ls0/c;->b:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ls0/c;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    invoke-super {p0}, Ls0/f;->q()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Ls0/c;->b:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Ls0/f;->r()J

    move-result-wide v0

    return-wide v0
.end method
