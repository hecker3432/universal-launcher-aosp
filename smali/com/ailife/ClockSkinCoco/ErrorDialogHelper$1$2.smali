.class Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;
.super Ljava/lang/Object;
.source "ErrorDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;->this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;->this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;

    invoke-static {}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->access$000()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;->this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;->this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lua Error"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p2, "ErrorDialogHelper"

    const-string v0, "Error copied to clipboard"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->access$102(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
