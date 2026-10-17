.class public LB0/f;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final a:LC0/g;

.field private final b:[B

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(ILC0/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LB0/f;->c:I

    iput-boolean v0, p0, LB0/f;->d:Z

    iput-boolean v0, p0, LB0/f;->e:Z

    new-array p1, p1, [B

    iput-object p1, p0, LB0/f;->b:[B

    iput-object p2, p0, LB0/f;->a:LC0/g;

    return-void
.end method

.method public constructor <init>(LC0/g;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, LB0/f;-><init>(ILC0/g;)V

    return-void
.end method


# virtual methods
.method protected D()V
    .locals 2

    iget-object v0, p0, LB0/f;->a:LC0/g;

    const-string v1, "0"

    invoke-interface {v0, v1}, LC0/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    const-string v1, ""

    invoke-interface {v0, v1}, LC0/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, LB0/f;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LB0/f;->s()V

    invoke-virtual {p0}, LB0/f;->D()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/f;->d:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, LB0/f;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/f;->e:Z

    invoke-virtual {p0}, LB0/f;->b()V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, LB0/f;->s()V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    return-void
.end method

.method protected s()V
    .locals 4

    iget v0, p0, LB0/f;->c:I

    if-lez v0, :cond_0

    iget-object v1, p0, LB0/f;->a:LC0/g;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, LC0/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    iget-object v1, p0, LB0/f;->b:[B

    iget v2, p0, LB0/f;->c:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, LC0/g;->b([BII)V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    const-string v1, ""

    invoke-interface {v0, v1}, LC0/g;->c(Ljava/lang/String;)V

    iput v3, p0, LB0/f;->c:I

    :cond_0
    return-void
.end method

.method protected w([BII)V
    .locals 4

    iget-object v0, p0, LB0/f;->a:LC0/g;

    iget v1, p0, LB0/f;->c:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LC0/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    iget-object v1, p0, LB0/f;->b:[B

    iget v2, p0, LB0/f;->c:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, LC0/g;->b([BII)V

    iget-object v0, p0, LB0/f;->a:LC0/g;

    invoke-interface {v0, p1, p2, p3}, LC0/g;->b([BII)V

    iget-object p1, p0, LB0/f;->a:LC0/g;

    const-string p2, ""

    invoke-interface {p1, p2}, LC0/g;->c(Ljava/lang/String;)V

    iput v3, p0, LB0/f;->c:I

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-boolean v0, p0, LB0/f;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LB0/f;->b:[B

    iget v1, p0, LB0/f;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LB0/f;->c:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, LB0/f;->s()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LB0/f;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    iget-boolean v0, p0, LB0/f;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LB0/f;->b:[B

    array-length v1, v0

    iget v2, p0, LB0/f;->c:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LB0/f;->w([BII)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LB0/f;->c:I

    add-int/2addr p1, p3

    iput p1, p0, LB0/f;->c:I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
