.class Lcom/ailife/ClockSkinCoco/QSFragment$32;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QSFragment;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

.field final synthetic val$i3:I

.field final synthetic val$networkOperatorName:Ljava/lang/String;

.field final synthetic val$networkTypeName:Ljava/lang/String;

.field final synthetic val$z2:Z

.field final synthetic val$zHasIccCard:Z


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QSFragment;ZZILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 846
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iput-boolean p2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$z2:Z

    iput-boolean p3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$zHasIccCard:Z

    iput p4, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$i3:I

    iput-object p5, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$networkTypeName:Ljava/lang/String;

    iput-object p6, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$networkOperatorName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 849
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$z2:Z

    const-string v1, ""

    const v2, 0x7f080141

    if-nez v0, :cond_3c

    .line 850
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$zHasIccCard:Z

    if-eqz v0, :cond_17

    .line 851
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    const-string v3, "off"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 853
    :cond_17
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    const-string v3, "no SIM"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :goto_20
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, v3, Lcom/ailife/ClockSkinCoco/QSFragment;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v4, v4, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    return-void

    .line 860
    :cond_3c
    iget v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$i3:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_95

    .line 861
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$i3:I

    # invokes: Lcom/ailife/ClockSkinCoco/QSFragment;->getCellularSignalLevel(I)I
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->access$000(Lcom/ailife/ClockSkinCoco/QSFragment;I)I

    move-result v0

    .line 862
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    # invokes: Lcom/ailife/ClockSkinCoco/QSFragment;->getCellularSignalDrawable(I)I
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->access$100(Lcom/ailife/ClockSkinCoco/QSFragment;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 863
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataFreq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$networkTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$networkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->val$i3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QSFragment;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 866
    goto :goto_b9

    .line 867
    :cond_95
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    const-string v3, "no service"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, v3, Lcom/ailife/ClockSkinCoco/QSFragment;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v4, v4, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 870
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$32;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :goto_b9
    return-void
.end method
