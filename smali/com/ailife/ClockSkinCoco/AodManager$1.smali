.class Lcom/ailife/ClockSkinCoco/AodManager$1;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AodManager;->scheduleAodTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/AodManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/AodManager;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager$1;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 188
    const-string v0, "AodManager"

    const-string v1, "AOD timeout triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.GO_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager$1;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # getter for: Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/AodManager;->access$000(Lcom/ailife/ClockSkinCoco/AodManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$1;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # getter for: Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->access$100(Lcom/ailife/ClockSkinCoco/AodManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/AodManager$1$1;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/AodManager$1$1;-><init>(Lcom/ailife/ClockSkinCoco/AodManager$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    return-void
.end method
