.class public abstract LH0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(La0/k;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, La0/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, La0/k;->q()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public static b(La0/k;)[B
    .locals 7

    const-string v0, "Entity"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, La0/k;->q()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, La0/k;->r()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "HTTP entity too large to be buffered in memory"

    invoke-static {v1, v2}, LH0/a;->a(ZLjava/lang/String;)V

    invoke-interface {p0}, La0/k;->r()J

    move-result-wide v1

    long-to-int p0, v1

    const/16 v1, 0x1000

    if-gez p0, :cond_2

    const/16 p0, 0x1000

    :cond_2
    new-instance v2, LH0/c;

    invoke-direct {v2, p0}, LH0/c;-><init>(I)V

    new-array p0, v1, [B

    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {v2, p0, v5, v1}, LH0/c;->c([BII)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, LH0/c;->m()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
