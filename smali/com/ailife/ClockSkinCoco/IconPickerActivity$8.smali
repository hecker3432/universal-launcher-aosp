.class Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;
.super Ljava/lang/Object;
.source "IconPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/IconPickerActivity;->showIconPackDialog(Ljava/lang/Object;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$filteredIcons:Ljava/util/ArrayList;

.field final synthetic val$iconPackClass:Ljava/lang/Class;

.field final synthetic val$iconPackHandler:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Class;Landroid/app/AlertDialog;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$filteredIcons:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$iconPackHandler:Ljava/lang/Object;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$iconPackClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 673
    :try_start_0
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$filteredIcons:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 674
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$iconPackHandler:Ljava/lang/Object;

    iget-object p4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$iconPackClass:Ljava/lang/Class;

    # invokes: Lcom/ailife/ClockSkinCoco/IconPickerActivity;->saveIconFromPack(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    invoke-static {p2, p3, p4, p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->access$300(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    .line 675
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 680
    goto :goto_40

    .line 676
    :catch_17
    move-exception p1

    .line 677
    const-string p2, "IconPickerActivity"

    const-string p3, "Error saving icon"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 679
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 678
    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 679
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 681
    :goto_40
    return-void
.end method
