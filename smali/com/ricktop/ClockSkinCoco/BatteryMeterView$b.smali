.class Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:I

.field h:Ljava/lang/String;

.field i:I

.field final j:Z

.field k:I

.field final synthetic l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)V
    .locals 1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->c:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->d:I

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;Lcom/ricktop/ClockSkinCoco/BatteryMeterView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;-><init>(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    const-string p1, "plugged"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->e:I

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->f:Z

    const-string p1, "health"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->a:I

    const-string p1, "status"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->g:I

    const-string p1, "technology"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->h:Ljava/lang/String;

    const-string p1, "voltage"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->k:I

    const-string p1, "temperature"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->i:I

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->f:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    if-lt p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->c:I

    if-ne p1, p2, :cond_3

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->e:I

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->d:I

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->a(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->d(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;I)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->a(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->b(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)V

    :cond_4
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->d(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;I)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->a(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->b(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)V

    :cond_6
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->c:I

    if-eq p1, p2, :cond_7

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->l:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-static {p2, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->c(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;I)V

    :cond_7
    :goto_3
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->b:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->c:I

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->e:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->d:I

    :cond_8
    return-void
.end method
