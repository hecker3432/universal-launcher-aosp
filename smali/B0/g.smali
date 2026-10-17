.class public LB0/g;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:J

.field private c:Z

.field private d:LC0/f;


# direct methods
.method public constructor <init>(LC0/f;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LB0/g;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/g;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, LB0/g;->d:LC0/f;

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC0/f;

    iput-object p1, p0, LB0/g;->d:LC0/f;

    const-string p1, "Content length"

    invoke-static {p2, p3, p1}, LH0/a;->h(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, LB0/g;->a:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    iget-object v0, p0, LB0/g;->d:LC0/f;

    instance-of v1, v0, LC0/a;

    if-eqz v1, :cond_0

    check-cast v0, LC0/a;

    invoke-interface {v0}, LC0/a;->length()I

    move-result v0

    iget-wide v1, p0, LB0/g;->a:J

    iget-wide v3, p0, LB0/g;->b:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 6

    iget-boolean v0, p0, LB0/g;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    iget-wide v1, p0, LB0/g;->b:J

    iget-wide v3, p0, LB0/g;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, LB0/g;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, LB0/g;->c:Z

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, LB0/g;->c:Z

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method public read()I
    .locals 6

    iget-boolean v0, p0, LB0/g;->c:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, LB0/g;->b:J

    iget-wide v2, p0, LB0/g;->a:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, LB0/g;->d:LC0/f;

    invoke-interface {v0}, LC0/f;->f()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-wide v1, p0, LB0/g;->b:J

    iget-wide v3, p0, LB0/g;->a:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, La0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LB0/g;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LB0/g;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v1, p0, LB0/g;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, LB0/g;->b:J

    :goto_0
    return v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LB0/g;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8

    iget-boolean v0, p0, LB0/g;->c:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, LB0/g;->b:J

    iget-wide v2, p0, LB0/g;->a:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    :cond_0
    int-to-long v5, p3

    add-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    sub-long/2addr v2, v0

    long-to-int p3, v2

    :cond_1
    iget-object v0, p0, LB0/g;->d:LC0/f;

    invoke-interface {v0, p1, p2, p3}, LC0/f;->e([BII)I

    move-result p1

    if-ne p1, v4, :cond_3

    iget-wide p2, p0, LB0/g;->b:J

    iget-wide v0, p0, LB0/g;->a:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, La0/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, LB0/g;->a:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, LB0/g;->b:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-lez p1, :cond_4

    iget-wide p2, p0, LB0/g;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, LB0/g;->b:J

    :cond_4
    return p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x800

    new-array v2, v2, [B

    iget-wide v3, p0, LB0/g;->a:J

    iget-wide v5, p0, LB0/g;->b:J

    sub-long/2addr v3, v5

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v3, v0

    :goto_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_2

    const-wide/16 v5, 0x800

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v6}, LB0/g;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v3
.end method
