.class Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$1;
.super Ljava/lang/Object;
.source "ErrorDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1$1;->this$0:Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->access$102(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
