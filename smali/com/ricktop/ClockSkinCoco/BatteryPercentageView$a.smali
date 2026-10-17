.class Lcom/ricktop/ClockSkinCoco/BatteryPercentageView$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView$a;->a:Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const-string v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView$a;->a:Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;

    invoke-static {p2, p1}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->f(Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView$a;->a:Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;

    invoke-static {p2, p1}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->g(Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
