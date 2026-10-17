.class public Lcom/loopj/android/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lw0/a;

.field private final b:LG0/e;

.field private final c:Lf0/i;

.field private final d:Lcom/loopj/android/http/m;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:I

.field private g:Z

.field private volatile h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lw0/a;LG0/e;Lf0/i;Lcom/loopj/android/http/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/loopj/android/http/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/a;

    iput-object p1, p0, Lcom/loopj/android/http/b;->a:Lw0/a;

    const-string p1, "context"

    invoke-static {p2, p1}, Lcom/loopj/android/http/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG0/e;

    iput-object p1, p0, Lcom/loopj/android/http/b;->b:LG0/e;

    const-string p1, "request"

    invoke-static {p3, p1}, Lcom/loopj/android/http/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf0/i;

    iput-object p1, p0, Lcom/loopj/android/http/b;->c:Lf0/i;

    const-string p1, "responseHandler"

    invoke-static {p4, p1}, Lcom/loopj/android/http/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loopj/android/http/m;

    iput-object p1, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    return-void
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/b;->c:Lf0/i;

    invoke-interface {v0}, Lf0/i;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loopj/android/http/b;->a:Lw0/a;

    iget-object v1, p0, Lcom/loopj/android/http/b;->c:Lf0/i;

    iget-object v2, p0, Lcom/loopj/android/http/b;->b:LG0/e;

    invoke-virtual {v0, v1, v2}, Lw0/g;->w(Lf0/i;LG0/e;)Lf0/c;

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    const/4 v1, 0x0

    invoke-interface {v0, v0, v1}, Lcom/loopj/android/http/m;->onPreProcessResponse(Lcom/loopj/android/http/m;La0/s;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    invoke-interface {v0, v1}, Lcom/loopj/android/http/m;->sendResponseMessage(La0/s;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    invoke-interface {v0, v0, v1}, Lcom/loopj/android/http/m;->onPostProcessResponse(Lcom/loopj/android/http/m;La0/s;)V

    return-void

    :cond_4
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()V
    .locals 7

    iget-object v0, p0, Lcom/loopj/android/http/b;->a:Lw0/a;

    invoke-virtual {v0}, Lw0/a;->i0()Lc0/i;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/b;->d()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/loopj/android/http/b;->f:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/loopj/android/http/b;->f:I

    iget-object v4, p0, Lcom/loopj/android/http/b;->b:LG0/e;

    invoke-interface {v0, v2, v3, v4}, Lc0/i;->a(Ljava/io/IOException;ILG0/e;)Z

    move-result v3

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/loopj/android/http/b;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/loopj/android/http/b;->f:I

    iget-object v4, p0, Lcom/loopj/android/http/b;->b:LG0/e;

    invoke-interface {v0, v3, v2, v4}, Lc0/i;->a(Ljava/io/IOException;ILG0/e;)Z

    move-result v2

    :goto_1
    move-object v6, v3

    move v3, v2

    move-object v2, v6

    goto :goto_2

    :catch_3
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/loopj/android/http/b;->f:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/loopj/android/http/b;->f:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/loopj/android/http/b;->f:I

    iget-object v5, p0, Lcom/loopj/android/http/b;->b:LG0/e;

    invoke-interface {v0, v2, v4, v5}, Lc0/i;->a(Ljava/io/IOException;ILG0/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    iget v5, p0, Lcom/loopj/android/http/b;->f:I

    invoke-interface {v4, v5}, Lcom/loopj/android/http/m;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_3
    sget-object v1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "Unhandled exception origin cause"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_3
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method private declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loopj/android/http/b;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loopj/android/http/b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/b;->g:Z

    iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    invoke-interface {v0}, Lcom/loopj/android/http/m;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    iget-object p1, p0, Lcom/loopj/android/http/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/loopj/android/http/b;->c:Lf0/i;

    invoke-interface {p1}, Lf0/i;->abort()V

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loopj/android/http/b;->h()V

    :cond_0
    return v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/loopj/android/http/b;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f(Lcom/loopj/android/http/b;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/loopj/android/http/b;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/loopj/android/http/b;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/loopj/android/http/b;->i:Z

    invoke-virtual {p0, p0}, Lcom/loopj/android/http/b;->g(Lcom/loopj/android/http/b;)V

    :cond_1
    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    invoke-interface {v0}, Lcom/loopj/android/http/m;->sendStartMessage()V

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/b;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/loopj/android/http/m;->sendFailureMessage(I[La0/e;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v3, "AsyncHttpRequest"

    const-string v4, "makeRequestWithRetries returned error"

    invoke-interface {v2, v3, v4, v0}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lcom/loopj/android/http/m;

    invoke-interface {v0}, Lcom/loopj/android/http/m;->sendFinishMessage()V

    invoke-virtual {p0}, Lcom/loopj/android/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, p0}, Lcom/loopj/android/http/b;->f(Lcom/loopj/android/http/b;)V

    iput-boolean v1, p0, Lcom/loopj/android/http/b;->h:Z

    return-void
.end method
