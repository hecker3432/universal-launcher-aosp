.class public abstract Lcom/loopj/android/http/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loopj/android/http/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/c$a;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpRH"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private TAG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private looper:Landroid/os/Looper;

.field private requestHeaders:[La0/e;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private usePoolThread:Z

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/c;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/c;->responseCharset:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/c;->requestURI:Ljava/net/URI;

    iput-object v0, p0, Lcom/loopj/android/http/c;->requestHeaders:[La0/e;

    iput-object v0, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/loopj/android/http/c;->TAG:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->setUseSynchronousMode(Z)V

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->setUsePoolThread(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/c;->responseCharset:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/c;->requestURI:Ljava/net/URI;

    iput-object v0, p0, Lcom/loopj/android/http/c;->requestHeaders:[La0/e;

    iput-object v0, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/loopj/android/http/c;->TAG:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->setUsePoolThread(Z)V

    invoke-virtual {p0}, Lcom/loopj/android/http/c;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->setUseSynchronousMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/c;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :cond_0
    return-object v0
.end method

.method public getRequestHeaders()[La0/e;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/c;->requestHeaders:[La0/e;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/c;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method getResponseData(La0/k;)[B
    .locals 12

    if-eqz p1, :cond_4

    invoke-interface {p1}, La0/k;->q()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, La0/k;->r()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    const/16 v3, 0x1000

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    const/16 v6, 0x1000

    goto :goto_0

    :cond_0
    long-to-int v6, v1

    :goto_0
    :try_start_0
    new-instance v7, LH0/c;

    invoke-direct {v7, v6}, LH0/c;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-array v3, v3, [B

    move-wide v8, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-nez v10, :cond_2

    int-to-long v10, v6

    add-long/2addr v8, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10, v6}, LH0/c;->c([BII)V

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    const-wide/16 v10, 0x1

    goto :goto_2

    :cond_1
    move-wide v10, v1

    :goto_2
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/loopj/android/http/c;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/loopj/android/http/a;->d(La0/k;)V

    invoke-virtual {v7}, LH0/c;->m()[B

    move-result-object p1

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lcom/loopj/android/http/a;->u(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/loopj/android/http/a;->d(La0/k;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "File too large to fit into available memory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/c;->TAG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUsePoolThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loopj/android/http/c;->usePoolThread:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loopj/android/http/c;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "AsyncHttpRH"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/loopj/android/http/c;->onCancel()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v4, :cond_0

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->onRetry(I)V

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "RETRY_MESSAGE didn\'t get enough params"

    invoke-interface {p1, v5, v0}, Lcom/loopj/android/http/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_1

    :try_start_2
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/loopj/android/http/c;->onProgress(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "custom onProgress contains an error"

    invoke-interface {v0, v5, v1, p1}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-interface {p1, v5, v0}, Lcom/loopj/android/http/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/loopj/android/http/c;->onFinish()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/loopj/android/http/c;->onStart()V

    goto :goto_1

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v6, 0x4

    if-lt v0, v6, :cond_2

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v3, p1, v4

    check-cast v3, [La0/e;

    check-cast v3, [La0/e;

    aget-object v2, p1, v2

    check-cast v2, [B

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v3, v2, p1}, Lcom/loopj/android/http/c;->onFailure(I[La0/e;[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-interface {p1, v5, v0}, Lcom/loopj/android/http/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lt v0, v1, :cond_3

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v4

    check-cast v1, [La0/e;

    check-cast v1, [La0/e;

    aget-object p1, p1, v2

    check-cast p1, [B

    invoke-virtual {p0, v0, v1, p1}, Lcom/loopj/android/http/c;->onSuccess(I[La0/e;[B)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-interface {p1, v5, v0}, Lcom/loopj/android/http/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->onUserException(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public onCancel()V
    .locals 3

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request got cancelled"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onFailure(I[La0/e;[BLjava/lang/Throwable;)V
.end method

.method public abstract onFinish()V
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/m;La0/s;)V
    .locals 0

    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/http/m;La0/s;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJ)V
    .locals 6

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-lez v5, :cond_0

    long-to-double p1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v3

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, p3

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object v2, p2, p3

    const/4 p3, 0x2

    aput-object p1, p2, p3

    const-string p1, "Progress %d from %d (%2.0f%%)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AsyncHttpRH"

    invoke-interface {v0, p2, p1}, Lcom/loopj/android/http/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRetry(I)V
    .locals 3

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Request retry no. %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AsyncHttpRH"

    invoke-interface {v0, v1, p1}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(I[La0/e;[B)V
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "AsyncHttpRH"

    const-string v2, "User-space exception detected!"

    invoke-interface {v0, v1, v2, p1}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/loopj/android/http/c;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final sendCancelMessage()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendFailureMessage(I[La0/e;[BLjava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p4, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lcom/loopj/android/http/c;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->handleMessage(Landroid/os/Message;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final sendProgressMessage(JJ)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p3}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendResponseMessage(La0/s;)V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, La0/s;->h()La0/F;

    move-result-object v0

    invoke-interface {p1}, La0/s;->getEntity()La0/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/loopj/android/http/c;->getResponseData(La0/k;)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, La0/F;->b()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    invoke-interface {v0}, La0/F;->b()I

    move-result v2

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object p1

    new-instance v3, Lc0/j;

    invoke-interface {v0}, La0/F;->b()I

    move-result v4

    invoke-interface {v0}, La0/F;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lc0/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v1, v3}, Lcom/loopj/android/http/c;->sendFailureMessage(I[La0/e;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, La0/F;->b()I

    move-result v0

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/loopj/android/http/c;->sendSuccessMessage(I[La0/e;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendRetryMessage(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendSuccessMessage(I[La0/e;[B)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/loopj/android/http/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/c;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/c;->responseCharset:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaders([La0/e;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/c;->requestHeaders:[La0/e;

    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/c;->requestURI:Ljava/net/URI;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/c;->TAG:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setUsePoolThread(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    iput-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    :cond_0
    iput-boolean p1, p0, Lcom/loopj/android/http/c;->usePoolThread:Z

    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    if-nez v0, :cond_0

    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "AsyncHttpRH"

    const-string v1, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-interface {p1, v0, v1}, Lcom/loopj/android/http/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loopj/android/http/c$a;

    iget-object v1, p0, Lcom/loopj/android/http/c;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/loopj/android/http/c$a;-><init>(Lcom/loopj/android/http/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/c;->handler:Landroid/os/Handler;

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/loopj/android/http/c;->useSynchronousMode:Z

    return-void
.end method
