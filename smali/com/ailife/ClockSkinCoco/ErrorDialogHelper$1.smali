.class Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;
.super Ljava/lang/Object;
.source "ErrorDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->access$102(Z)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;->val$title:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Lua Error"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;->val$message:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Unknown error occurred"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$1;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$1;-><init>(Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Copy to Clipboard"

    new-instance v2, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$2;-><init>(Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$3;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$3;-><init>(Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "ErrorDialogHelper"

    const-string v1, "Error dialog shown successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ErrorDialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show error dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->access$102(Z)Z

    :goto_2
    return-void
.end method
