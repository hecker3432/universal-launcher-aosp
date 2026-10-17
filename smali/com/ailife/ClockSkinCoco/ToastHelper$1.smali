.class Lcom/ailife/ClockSkinCoco/ToastHelper$1;
.super Ljava/lang/Object;
.source "ToastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ToastHelper$1;->val$message:Ljava/lang/String;

    iput p2, p0, Lcom/ailife/ClockSkinCoco/ToastHelper$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ailife/ClockSkinCoco/ToastHelper;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ailife/ClockSkinCoco/ToastHelper;->access$000()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ToastHelper$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/ailife/ClockSkinCoco/ToastHelper$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
