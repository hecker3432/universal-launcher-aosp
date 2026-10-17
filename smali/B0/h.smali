.class public LB0/h;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final a:LC0/g;

.field private final b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(LC0/g;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LB0/h;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/h;->d:Z

    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC0/g;

    iput-object p1, p0, LB0/h;->a:LC0/g;

    const-string p1, "Content length"

    invoke-static {p2, p3, p1}, LH0/a;->h(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, LB0/h;->b:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, LB0/h;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/h;->d:Z

    iget-object v0, p0, LB0/h;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, LB0/h;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 5

    iget-boolean v0, p0, LB0/h;->d:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, LB0/h;->c:J

    iget-wide v2, p0, LB0/h;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, LB0/h;->a:LC0/g;

    invoke-interface {v0, p1}, LC0/g;->e(I)V

    iget-wide v0, p0, LB0/h;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LB0/h;->c:J

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

    invoke-virtual {p0, p1, v1, v0}, LB0/h;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5

    iget-boolean v0, p0, LB0/h;->d:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, LB0/h;->c:J

    iget-wide v2, p0, LB0/h;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sub-long/2addr v2, v0

    int-to-long v0, p3

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-int p3, v2

    :cond_0
    iget-object v0, p0, LB0/h;->a:LC0/g;

    invoke-interface {v0, p1, p2, p3}, LC0/g;->b([BII)V

    iget-wide p1, p0, LB0/h;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LB0/h;->c:J

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
