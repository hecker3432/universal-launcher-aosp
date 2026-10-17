.class Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$1;
.super Ljava/lang/Object;
.source "TapActionEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {p1, p3}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->access$000(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
