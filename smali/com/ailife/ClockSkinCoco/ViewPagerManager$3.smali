.class Lcom/ailife/ClockSkinCoco/ViewPagerManager$3;
.super Ljava/lang/Object;
.source "ViewPagerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ViewPagerManager;->sendGoHomeBroadcast(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$3;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 295
    const-string v0, "ViewPagerManager"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ailife.ClockSkinCoco.GO_HOME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$3;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    # getter for: Lcom/ailife/ClockSkinCoco/ViewPagerManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->access$200(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    const-string v1, "GO_HOME broadcast sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    .line 300
    goto :goto_1e

    .line 298
    :catch_18
    move-exception v1

    .line 299
    const-string v2, "Failed to send GO_HOME broadcast"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_1e
    return-void
.end method
