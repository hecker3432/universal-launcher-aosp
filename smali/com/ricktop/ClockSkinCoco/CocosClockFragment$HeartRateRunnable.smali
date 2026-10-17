.class public Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeartRateRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # Log that we're on main thread
    const-string v0, "HeartRateHandler"

    const-string v1, "Running on main thread, posting to GL thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get the singleton instance of CocosClockFragment (or create a runnable to post to GL)
    # We'll create an inner runnable to post to GL thread
    new-instance v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable$1;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable$1;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;)V

    # Try to get MainActivity and post to GL thread
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "HeartRateHandler"

    const-string v0, "MainActivity found, posting to GL thread"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v2, "HeartRateHandler"

    const-string v3, "MainActivity not available, skipping update"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
