.class Lcom/loopj/android/http/a$d;
.super Ls0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field b:Ljava/io/InputStream;

.field c:Ljava/io/PushbackInputStream;

.field d:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(La0/k;)V
    .locals 0

    invoke-direct {p0, p1}, Ls0/f;-><init>(La0/k;)V

    return-void
.end method


# virtual methods
.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/a$d;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/loopj/android/http/a$d;->c:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/loopj/android/http/a$d;->d:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    invoke-super {p0}, Ls0/f;->o()V

    return-void
.end method

.method public q()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Ls0/f;->a:La0/k;

    invoke-interface {v0}, La0/k;->q()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/a$d;->b:Ljava/io/InputStream;

    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/a$d;->b:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/loopj/android/http/a$d;->c:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/a;->l(Ljava/io/PushbackInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/a$d;->c:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/loopj/android/http/a$d;->d:Ljava/util/zip/GZIPInputStream;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/a$d;->c:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Ls0/f;->a:La0/k;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, La0/k;->r()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
