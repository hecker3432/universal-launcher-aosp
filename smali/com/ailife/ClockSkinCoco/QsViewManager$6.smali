.class Lcom/ailife/ClockSkinCoco/QsViewManager$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "QsViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QsViewManager;->registerAllListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$6;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 309
    # Get main looper
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    # Create handler with main looper
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # Create runnable that calls updateWifi
    new-instance p1, Lcom/ailife/ClockSkinCoco/QsViewManager$6$1;

    invoke-direct {p1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$6$1;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager$6;)V

    # Post to main thread
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 314
    # Get main looper
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    # Create handler with main looper
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # Create runnable that calls updateWifi
    new-instance p1, Lcom/ailife/ClockSkinCoco/QsViewManager$6$2;

    invoke-direct {p1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$6$2;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager$6;)V

    # Post to main thread
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 319
    # Get main looper
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    # Create handler with main looper
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # Create runnable that calls updateWifi
    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$6$3;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$6$3;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager$6;)V

    # Post to main thread
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method
