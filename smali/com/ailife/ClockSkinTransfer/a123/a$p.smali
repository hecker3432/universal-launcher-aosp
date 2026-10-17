.class public Lcom/ailife/ClockSkinTransfer/a123/a$p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/a123/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/a123/a;

.field private final b:I

.field private c:Ljava/io/IOException;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ailife/ClockSkinTransfer/a123/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->d:Z

    iput p2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->b:I

    return-void
.end method

.method static synthetic a(Lcom/ailife/ClockSkinTransfer/a123/a$p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/ailife/ClockSkinTransfer/a123/a$p;)Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->c:Ljava/io/IOException;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->d(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->b(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v2}, Lcom/ailife/ClockSkinTransfer/a123/a;->b(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v3}, Lcom/ailife/ClockSkinTransfer/a123/a;->c(Lcom/ailife/ClockSkinTransfer/a123/a;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v2}, Lcom/ailife/ClockSkinTransfer/a123/a;->c(Lcom/ailife/ClockSkinTransfer/a123/a;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->d(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->b:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->b:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    iget-object v2, v2, Lcom/ailife/ClockSkinTransfer/a123/a;->a:Lcom/ailife/ClockSkinTransfer/a123/a$a;

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-virtual {v3, v0, v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/ailife/ClockSkinTransfer/a123/a$b;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ailife/ClockSkinTransfer/a123/a$a;->b(Lcom/ailife/ClockSkinTransfer/a123/a$b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/a123/a;->e()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a:Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->d(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :catch_1
    move-exception v0

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$p;->c:Ljava/io/IOException;

    return-void
.end method
