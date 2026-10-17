.class Lcom/ailife/ClockSkinCoco/QsViewManager$10;
.super Landroid/content/BroadcastReceiver;
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

    .line 370
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$10;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 373
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$10;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->updateVolume()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$700(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    .line 374
    return-void
.end method
