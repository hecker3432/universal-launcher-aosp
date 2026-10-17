.class public Lcom/ailife/ClockSkinTransfer/a123/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/a123/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/a123/a;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/ailife/ClockSkinTransfer/a123/a;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a;)Lcom/ailife/ClockSkinTransfer/a123/a$t;

    move-result-object v0

    invoke-interface {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$t;->a()Lcom/ailife/ClockSkinTransfer/a123/a$s;

    move-result-object v4

    new-instance v0, Lcom/ailife/ClockSkinTransfer/a123/a$k;

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    iget-object v5, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/ailife/ClockSkinTransfer/a123/a$k;-><init>(Lcom/ailife/ClockSkinTransfer/a123/a;Lcom/ailife/ClockSkinTransfer/a123/a$s;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    :goto_0
    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$k;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    :try_start_2
    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_0

    const-string v2, "NanoHttpd Shutdown"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/a123/a;->e()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Communication with the client broken, or an bug in the handler code"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/a123/a;->a:Lcom/ailife/ClockSkinTransfer/a123/a$a;

    invoke-interface {v0, p0}, Lcom/ailife/ClockSkinTransfer/a123/a$a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$b;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->b:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->c:Ljava/net/Socket;

    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$b;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    iget-object v1, v1, Lcom/ailife/ClockSkinTransfer/a123/a;->a:Lcom/ailife/ClockSkinTransfer/a123/a$a;

    invoke-interface {v1, p0}, Lcom/ailife/ClockSkinTransfer/a123/a$a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$b;)V

    throw v0
.end method
