.class Lcom/ailife/ClockSkinCoco/AodManager$5;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AodManager;->handleScreenOff()V
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

    .line 478
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager$5;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 481
    const-string v0, "Unlocking ViewPager after delay"

    const-string v1, "AodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$5;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # invokes: Lcom/ailife/ClockSkinCoco/AodManager;->unlockViewPager()V
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->access$500(Lcom/ailife/ClockSkinCoco/AodManager;)V

    .line 485
    const-string v0, "Resetting AOD timeout after unlock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$5;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # invokes: Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->access$600(Lcom/ailife/ClockSkinCoco/AodManager;)V

    .line 487
    return-void
.end method
