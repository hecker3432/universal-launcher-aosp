.class public LB0/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:LC0/f;

.field private final b:LH0/d;

.field private final c:Lk0/b;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:[La0/e;


# direct methods
.method public constructor <init>(LC0/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LB0/e;-><init>(LC0/f;Lk0/b;)V

    return-void
.end method

.method public constructor <init>(LC0/f;Lk0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/e;->g:Z

    iput-boolean v0, p0, LB0/e;->h:Z

    new-array v1, v0, [La0/e;

    iput-object v1, p0, LB0/e;->i:[La0/e;

    const-string v1, "Session input buffer"

    invoke-static {p1, v1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC0/f;

    iput-object p1, p0, LB0/e;->a:LC0/f;

    iput v0, p0, LB0/e;->f:I

    new-instance p1, LH0/d;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LH0/d;-><init>(I)V

    iput-object p1, p0, LB0/e;->b:LH0/d;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lk0/b;->c:Lk0/b;

    :goto_0
    iput-object p2, p0, LB0/e;->c:Lk0/b;

    const/4 p1, 0x1

    iput p1, p0, LB0/e;->d:I

    return-void
.end method

.method private b()I
    .locals 4

    iget v0, p0, LB0/e;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, LB0/e;->b:LH0/d;

    invoke-virtual {v0}, LH0/d;->h()V

    iget-object v0, p0, LB0/e;->a:LC0/f;

    iget-object v3, p0, LB0/e;->b:LH0/d;

    invoke-interface {v0, v3}, LC0/f;->b(LH0/d;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LB0/e;->b:LH0/d;

    invoke-virtual {v0}, LH0/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, LB0/e;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, La0/w;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, La0/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, La0/w;

    const-string v1, "CRLF expected at end of chunk"

    invoke-direct {v0, v1}, La0/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, LB0/e;->b:LH0/d;

    invoke-virtual {v0}, LH0/d;->h()V

    iget-object v0, p0, LB0/e;->a:LC0/f;

    iget-object v2, p0, LB0/e;->b:LH0/d;

    invoke-interface {v0, v2}, LC0/f;->b(LH0/d;)I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, LB0/e;->b:LH0/d;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, LH0/d;->k(I)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, LB0/e;->b:LH0/d;

    invoke-virtual {v0}, LH0/d;->length()I

    move-result v0

    :cond_4
    :try_start_0
    iget-object v1, p0, LB0/e;->b:LH0/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, La0/w;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, La0/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, La0/a;

    const-string v1, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v0, v1}, La0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s()V
    .locals 3

    iget v0, p0, LB0/e;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    :try_start_0
    invoke-direct {p0}, LB0/e;->b()I

    move-result v0

    iput v0, p0, LB0/e;->e:I

    if-ltz v0, :cond_1

    const/4 v2, 0x2

    iput v2, p0, LB0/e;->d:I

    const/4 v2, 0x0

    iput v2, p0, LB0/e;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/e;->g:Z

    invoke-direct {p0}, LB0/e;->w()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, La0/w;

    const-string v2, "Negative chunk size"

    invoke-direct {v0, v2}, La0/w;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch La0/w; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput v1, p0, LB0/e;->d:I

    throw v0

    :cond_2
    new-instance v0, La0/w;

    const-string v1, "Corrupt data stream"

    invoke-direct {v0, v1}, La0/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private w()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LB0/e;->a:LC0/f;

    iget-object v1, p0, LB0/e;->c:Lk0/b;

    invoke-virtual {v1}, Lk0/b;->c()I

    move-result v1

    iget-object v2, p0, LB0/e;->c:Lk0/b;

    invoke-virtual {v2}, Lk0/b;->d()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, LB0/a;->c(LC0/f;IILD0/u;)[La0/e;

    move-result-object v0

    iput-object v0, p0, LB0/e;->i:[La0/e;
    :try_end_0
    .catch La0/m; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, La0/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La0/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, LB0/e;->a:LC0/f;

    instance-of v1, v0, LC0/a;

    if-eqz v1, :cond_0

    check-cast v0, LC0/a;

    invoke-interface {v0}, LC0/a;->length()I

    move-result v0

    iget v1, p0, LB0/e;->e:I

    iget v2, p0, LB0/e;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3

    iget-boolean v0, p0, LB0/e;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, LB0/e;->g:Z

    if-nez v1, :cond_0

    iget v1, p0, LB0/e;->d:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, LB0/e;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, LB0/e;->g:Z

    iput-boolean v0, p0, LB0/e;->h:Z

    goto :goto_2

    :goto_1
    iput-boolean v0, p0, LB0/e;->g:Z

    iput-boolean v0, p0, LB0/e;->h:Z

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method public read()I
    .locals 3

    iget-boolean v0, p0, LB0/e;->h:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, LB0/e;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, LB0/e;->d:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, LB0/e;->s()V

    iget-boolean v0, p0, LB0/e;->g:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, LB0/e;->a:LC0/f;

    invoke-interface {v0}, LC0/f;->f()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget v1, p0, LB0/e;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LB0/e;->f:I

    iget v2, p0, LB0/e;->e:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    iput v1, p0, LB0/e;->d:I

    :cond_2
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

    invoke-virtual {p0, p1, v1, v0}, LB0/e;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    iget-boolean v0, p0, LB0/e;->h:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, LB0/e;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, LB0/e;->d:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, LB0/e;->s()V

    iget-boolean v0, p0, LB0/e;->g:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, LB0/e;->a:LC0/f;

    iget v2, p0, LB0/e;->e:I

    iget v3, p0, LB0/e;->f:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, LC0/f;->e([BII)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget p2, p0, LB0/e;->f:I

    add-int/2addr p2, p1

    iput p2, p0, LB0/e;->f:I

    iget p3, p0, LB0/e;->e:I

    if-lt p2, p3, :cond_2

    const/4 p2, 0x3

    iput p2, p0, LB0/e;->d:I

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, LB0/e;->g:Z

    new-instance p1, La0/H;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Truncated chunk ( expected size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, LB0/e;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; actual size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, LB0/e;->f:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/H;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
