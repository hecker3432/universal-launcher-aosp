.class public Ls0/b;
.super Ls0/a;
.source "SourceFile"


# instance fields
.field private d:Ljava/io/InputStream;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ls0/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls0/b;->e:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Ls0/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    sget-object v1, LB0/i;->a:LB0/i;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 4

    const-string v0, "Output stream"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ls0/b;->q()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public i(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Ls0/b;->d:Ljava/io/InputStream;

    return-void
.end method

.method public j(J)V
    .locals 0

    iput-wide p1, p0, Ls0/b;->e:J

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Ls0/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Content has not been provided"

    invoke-static {v0, v1}, LH0/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Ls0/b;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Ls0/b;->e:J

    return-wide v0
.end method
