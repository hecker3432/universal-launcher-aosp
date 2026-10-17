.class Lcom/ricktop/ClockSkinCoco/ScreenSensorService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;I)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$b;->b:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$b;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
