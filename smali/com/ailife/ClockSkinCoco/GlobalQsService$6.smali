.class Lcom/ailife/ClockSkinCoco/GlobalQsService$6;
.super Landroid/content/BroadcastReceiver;
.source "GlobalQsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/GlobalQsService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$6;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    # Get the action from the intent
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    # Check if action is TRIGGER_GLOBAL_QS
    const-string v0, "com.ailife.ClockSkinCoco.TRIGGER_GLOBAL_QS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :check_collapse

    # Log the trigger
    const-string v0, "GlobalQsService"

    const-string v1, "TRIGGER_GLOBAL_QS broadcast received, expanding panel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Call expandPanel() via accessor
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$6;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$1000(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    goto :cond_end

    # Check if action is COLLAPSE_GLOBAL_QS
    :check_collapse
    const-string v0, "com.ailife.ClockSkinCoco.COLLAPSE_GLOBAL_QS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_end

    # Log the collapse
    const-string v0, "GlobalQsService"

    const-string v1, "COLLAPSE_GLOBAL_QS broadcast received, collapsing panel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Call collapsePanel() via accessor
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$6;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$200(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    :cond_end
    return-void
.end method
