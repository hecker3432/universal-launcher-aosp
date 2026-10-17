.class public Lcom/ricktop/ClockSkinCoco/BatteryMeterView;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;,
        Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;
    }
.end annotation


# instance fields
.field private b:[Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:[I

.field private final e:Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;-><init>(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;Lcom/ricktop/ClockSkinCoco/BatteryMeterView$a;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->e:Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->c:Z

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->i()V

    return-void
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->setProgressByLevel(I)V

    return-void
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->h(I)V

    return-void
.end method

.method private e(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->b:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->d:[I

    aget v0, v0, v1

    aget-object v2, v2, v1

    if-gt p1, v0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->d:[I

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->b:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->d:[I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->b:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->c:Z

    return v0
.end method

.method private h(I)V
    .locals 3

    new-instance v0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;-><init>(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;FF)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->c:Z

    return-void
.end method

.method private i()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->c:Z

    return-void
.end method

.method private setProgressByLevel(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->e:Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;

    const/4 v3, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v15, v4, :old_api_registerReceiver_compat_22

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_22

    :old_api_registerReceiver_compat_22
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_22

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->e:Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView;->e:Lcom/ricktop/ClockSkinCoco/BatteryMeterView$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
