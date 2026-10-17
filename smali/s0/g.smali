.class public abstract Ls0/g;
.super Ls0/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls0/e;)V
    .locals 1

    invoke-direct {p0}, Ls0/a;-><init>()V

    const-string v0, "Source string"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ls0/e;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, LG0/d;->a:Ljava/nio/charset/Charset;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Ls0/g;->d:[B

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ls0/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls0/a;->g(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ls0/g;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ls0/g;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Ls0/g;->d:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
