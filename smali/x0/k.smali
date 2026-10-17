.class Lx0/k;
.super LF0/a;
.source "SourceFile"


# instance fields
.field public i:Lt0/b;

.field private final j:Ln0/f;


# direct methods
.method public constructor <init>(Lt0/b;Ljava/lang/String;Ln0/b;Ll0/p;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, LF0/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    iput-object p1, p0, Lx0/k;->i:Lt0/b;

    new-instance p1, Ln0/f;

    invoke-direct {p1, p3}, Ln0/f;-><init>(Ln0/b;)V

    iput-object p1, p0, Lx0/k;->j:Ln0/f;

    return-void
.end method


# virtual methods
.method public d(J)Z
    .locals 4

    invoke-super {p0, p1, p2}, LF0/a;->d(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lx0/k;->i:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lx0/k;->i:Lt0/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " expired @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, LF0/a;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;

    :try_start_0
    invoke-interface {v0}, La0/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lx0/k;->i:Lt0/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method h()Ln0/b;
    .locals 1

    iget-object v0, p0, Lx0/k;->j:Ln0/f;

    invoke-virtual {v0}, Ln0/f;->n()Ln0/b;

    move-result-object v0

    return-object v0
.end method

.method i()Ln0/b;
    .locals 1

    invoke-virtual {p0}, LF0/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/b;

    return-object v0
.end method

.method j()Ln0/f;
    .locals 1

    iget-object v0, p0, Lx0/k;->j:Ln0/f;

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, LF0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/p;

    invoke-interface {v0}, La0/j;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
