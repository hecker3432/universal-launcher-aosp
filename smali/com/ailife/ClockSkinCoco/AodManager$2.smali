.class Lcom/ailife/ClockSkinCoco/AodManager$2;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AodManager;->scheduleViewPagerLock()V
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

    .line 344
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager$2;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$2;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # getter for: Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->access$200(Lcom/ailife/ClockSkinCoco/AodManager;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$2;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # getter for: Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->access$300(Lcom/ailife/ClockSkinCoco/AodManager;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 348
    :cond_10
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$2;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    # invokes: Lcom/ailife/ClockSkinCoco/AodManager;->lockViewPager()V
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->access$400(Lcom/ailife/ClockSkinCoco/AodManager;)V

    .line 349
    const-string v0, "AodManager"

    const-string v1, "ViewPager locked after 10 seconds in AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1c
    return-void
.end method
