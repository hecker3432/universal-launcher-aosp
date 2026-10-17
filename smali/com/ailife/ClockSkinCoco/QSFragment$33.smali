.class Lcom/ailife/ClockSkinCoco/QSFragment$33;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QSFragment;->updateWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

.field final synthetic val$finalConnected:Z

.field final synthetic val$finalFreqBand:Ljava/lang/String;

.field final synthetic val$finalRssi:I

.field final synthetic val$finalSsid:Ljava/lang/String;

.field final synthetic val$finalWifiEnabled:Z


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QSFragment;ZZILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 967
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iput-boolean p2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalWifiEnabled:Z

    iput-boolean p3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalConnected:Z

    iput p4, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalRssi:I

    iput-object p5, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalFreqBand:Ljava/lang/String;

    iput-object p6, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalSsid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 970
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalWifiEnabled:Z

    const-string v1, ""

    const v2, 0x7f080147

    if-nez v0, :cond_2e

    .line 971
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiDetail:Landroid/widget/TextView;

    const-string v3, "off"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, v3, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v4, v4, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 974
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    return-void

    .line 978
    :cond_2e
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalConnected:Z

    if-nez v0, :cond_57

    .line 979
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiDetail:Landroid/widget/TextView;

    const-string v3, "Disconnected"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v3, v3, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v4, v4, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 982
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    return-void

    .line 986
    :cond_57
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalRssi:I

    # invokes: Lcom/ailife/ClockSkinCoco/QSFragment;->getWifiSignalLevel(I)I
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->access$200(Lcom/ailife/ClockSkinCoco/QSFragment;I)I

    move-result v0

    .line 987
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    # invokes: Lcom/ailife/ClockSkinCoco/QSFragment;->getWifiSignalDrawable(I)I
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->access$300(Lcom/ailife/ClockSkinCoco/QSFragment;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiFreq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalFreqBand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalSsid:Ljava/lang/String;

    const-string v1, " dBm"

    if-eqz v0, :cond_a2

    .line 990
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiDetail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bc

    .line 992
    :cond_a2
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiDetail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->val$finalRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    :goto_bc
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v1, v1, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$33;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 995
    return-void
.end method
