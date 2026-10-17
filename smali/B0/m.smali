.class public LB0/m;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final a:LC0/g;

.field private b:Z


# direct methods
.method public constructor <init>(LC0/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/m;->b:Z

    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC0/g;

    iput-object p1, p0, LB0/m;->a:LC0/g;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, LB0/m;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/m;->b:Z

    iget-object v0, p0, LB0/m;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, LB0/m;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-boolean v0, p0, LB0/m;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LB0/m;->a:LC0/g;

    invoke-interface {v0, p1}, LC0/g;->e(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LB0/m;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-boolean v0, p0, LB0/m;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LB0/m;->a:LC0/g;

    invoke-interface {v0, p1, p2, p3}, LC0/g;->b([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
