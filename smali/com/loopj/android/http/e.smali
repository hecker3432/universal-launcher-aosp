.class public abstract Lcom/loopj/android/http/e;
.super Lcom/loopj/android/http/c;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpRH"


# instance fields
.field protected final append:Z

.field protected final file:Ljava/io/File;

.field protected frontendFile:Ljava/io/File;

.field protected final renameIfExists:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/e;-><init>(Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/e;-><init>(Ljava/io/File;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZZ)V
    .locals 2

    invoke-direct {p0, p4}, Lcom/loopj/android/http/c;-><init>(Z)V

    if-eqz p1, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string v0, "File passed into FileAsyncHttpResponseHandler constructor must not be null"

    invoke-static {p4, v0}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    move-result p4

    const-string v0, "Cannot create parent directories for requested File location"

    invoke-static {p4, v0}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p4

    if-nez p4, :cond_2

    sget-object p4, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "FileAsyncHttpRH"

    const-string v1, "Cannot create directories for requested Directory location, might not be a problem"

    invoke-interface {p4, v0, v1}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/loopj/android/http/e;->file:Ljava/io/File;

    iput-boolean p2, p0, Lcom/loopj/android/http/e;->append:Z

    iput-boolean p3, p0, Lcom/loopj/android/http/e;->renameIfExists:Z

    return-void
.end method


# virtual methods
.method public deleteTargetFile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getOriginalFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/e;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Target file is null, fatal!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/loopj/android/http/e;->file:Ljava/io/File;

    return-object v0
.end method

.method protected getResponseData(La0/k;)[B
    .locals 8

    if-eqz p1, :cond_1

    invoke-interface {p1}, La0/k;->q()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, La0/k;->r()J

    move-result-wide v1

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getTargetFile()Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lcom/loopj/android/http/e;->append:Z

    invoke-direct {p1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz v0, :cond_1

    const/16 v3, 0x1000

    :try_start_0
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v5, v6

    invoke-virtual {p1, v3, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v5

    invoke-virtual {p0, v6, v7, v1, v2}, Lcom/loopj/android/http/c;->sendProgressMessage(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lcom/loopj/android/http/a;->v(Ljava/io/OutputStream;)V

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lcom/loopj/android/http/a;->v(Ljava/io/OutputStream;)V

    throw v1

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/e;->frontendFile:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getTargetFileByParsingURL()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/loopj/android/http/e;->frontendFile:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/loopj/android/http/e;->frontendFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTargetFileByParsingURL()Ljava/io/File;
    .locals 8

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Target file is not a directory, cannot proceed"

    invoke-static {v0, v1}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/c;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "RequestURI is null, cannot proceed"

    invoke-static {v0, v3}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/c;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/loopj/android/http/e;->renameIfExists:Z

    if-eqz v4, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, " (%d)"

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getOriginalFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    add-int/2addr v3, v2

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Tried creating temporary file without having Context"

    invoke-static {v0, v1}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    :try_start_0
    const-string v0, "temp_"

    const-string v1, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "FileAsyncHttpRH"

    const-string v2, "Cannot create temporary file"

    invoke-interface {v0, v1, v2, p1}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onFailure(I[La0/e;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method public final onFailure(I[La0/e;[BLjava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/loopj/android/http/e;->onFailure(I[La0/e;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method public abstract onSuccess(I[La0/e;Ljava/io/File;)V
.end method

.method public final onSuccess(I[La0/e;[B)V
    .locals 0

    invoke-virtual {p0}, Lcom/loopj/android/http/e;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/e;->onSuccess(I[La0/e;Ljava/io/File;)V

    return-void
.end method
