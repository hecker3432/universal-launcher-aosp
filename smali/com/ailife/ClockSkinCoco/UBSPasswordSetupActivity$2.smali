.class Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$2;
.super Ljava/lang/Object;
.source "UBSPasswordSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 75
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    # invokes: Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->onDonePressed()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->access$100(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V

    .line 76
    return-void
.end method
