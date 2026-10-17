.class public Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;
.super Landroidx/appcompat/widget/S;
.source "SourceFile"


# instance fields
.field private final f:Landroid/content/BroadcastReceiver;

.field private g:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/S;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView$a;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView$a;-><init>(Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->f:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->j(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->h(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->i(I)I

    move-result p0

    return p0
.end method

.method private h(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->g:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt p1, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private j(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->g:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->g:[I

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->g:[I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->f:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v15, v4, :old_api_registerReceiver_compat_39

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    move-result-object v0
    goto :registerReceiver_done_compat_39

    :old_api_registerReceiver_compat_39
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    move-result-object v0

    :registerReceiver_done_compat_39

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/BatteryPercentageView;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
