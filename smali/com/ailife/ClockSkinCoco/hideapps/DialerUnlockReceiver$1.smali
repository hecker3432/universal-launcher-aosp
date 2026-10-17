.class Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;
.super Ljava/lang/Object;
.source "DialerUnlockReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;->val$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast shown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialerUnlockReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
