.class Lcom/ailife/ClockSkinCoco/QsViewManager$15;
.super Ljava/lang/Object;
.source "QsViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

.field final synthetic val$finalSignalDbm:I

.field final synthetic val$hasSim:Z

.field final synthetic val$hasTransport:Z

.field final synthetic val$networkType:Ljava/lang/String;

.field final synthetic val$operatorName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QsViewManager;ZZILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iput-boolean p2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$hasTransport:Z

    iput-boolean p3, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$hasSim:Z

    iput p4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$finalSignalDbm:I

    iput-object p5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$operatorName:Ljava/lang/String;

    iput-object p6, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$networkType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 721
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$hasTransport:Z

    if-nez v0, :cond_22

    .line 722
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataDetail:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$hasSim:Z

    if-eqz v1, :cond_f

    const-string v1, "off"

    goto :goto_11

    :cond_f
    const-string v1, "no SIM"

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$1100(Lcom/ailife/ClockSkinCoco/QsViewManager;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataIcon:Landroid/widget/ImageView;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataFreq:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_77

    .line 727
    :cond_22
    iget v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$finalSignalDbm:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_61

    .line 726
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$operatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$finalSignalDbm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$1100(Lcom/ailife/ClockSkinCoco/QsViewManager;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$finalSignalDbm:I

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->getCellularSignalLevel(I)I
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$1200(Lcom/ailife/ClockSkinCoco/QsViewManager;I)I

    move-result v0

    .line 729
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->getCellularSignalDrawable(I)I
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$1300(Lcom/ailife/ClockSkinCoco/QsViewManager;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 730
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataFreq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->val$networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_77

    .line 732
    :cond_61
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataDetail:Landroid/widget/TextView;

    const-string v1, "no service"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$1100(Lcom/ailife/ClockSkinCoco/QsViewManager;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataIcon:Landroid/widget/ImageView;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 732
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$15;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataFreq:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :goto_77
    return-void
.end method
