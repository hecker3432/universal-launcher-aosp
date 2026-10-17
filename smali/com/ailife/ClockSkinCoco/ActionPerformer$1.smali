.class Lcom/ailife/ClockSkinCoco/ActionPerformer$1;
.super Landroid/content/BroadcastReceiver;
.source "ActionPerformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ActionPerformer;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ActionPerformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.ailife.ClockSkinCoco.RECENTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->performGlobalAction(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "com.ailife.ClockSkinCoco.POWER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->performGlobalAction(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "com.ailife.ClockSkinCoco.GLOBAL_QS_EXPANDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->globalQsActive:Z

    goto :goto_0

    :cond_2
    const-string v0, "com.ailife.ClockSkinCoco.GLOBAL_QS_COLLAPSED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :goto_0

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->globalQsActive:Z

    :goto_0
    return-void
.end method
