.class Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$3;
.super Ljava/lang/Object;
.source "TapActionEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->access$200(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->access$300(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->getActivityString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
