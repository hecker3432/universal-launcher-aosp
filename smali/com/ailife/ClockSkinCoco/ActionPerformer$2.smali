.class Lcom/ailife/ClockSkinCoco/ActionPerformer$2;
.super Ljava/lang/Object;
.source "ActionPerformer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ActionPerformer;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
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

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$2;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # Send delayed CLOSE_SYSTEM_DIALOGS broadcast
    :try_broadcast_start
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "noRespond"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$2;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    invoke-virtual {v1, v0}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->sendBroadcast(Landroid/content/Intent;)V
    :try_broadcast_end

    .catch Ljava/lang/Throwable; {:try_broadcast_start .. :try_broadcast_end} :catch_broadcast

    goto :done

    :catch_broadcast
    # Last resort: use GLOBAL_ACTION_BACK
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer$2;->this$0:Lcom/ailife/ClockSkinCoco/ActionPerformer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->performGlobalAction(I)Z

    :done
    return-void
.end method
