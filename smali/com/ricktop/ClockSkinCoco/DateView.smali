.class public Lcom/ricktop/ClockSkinCoco/DateView;
.super Landroidx/appcompat/widget/S;
.source "SourceFile"


# instance fields
.field private final f:Ljava/util/Date;

.field private g:Ljava/text/SimpleDateFormat;

.field private h:Ljava/lang/String;

.field private final i:Landroid/content/BroadcastReceiver;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/S;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->f:Ljava/util/Date;

    const-string p1, "eeeMMMMd"

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->h:Ljava/lang/String;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/DateView$a;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/DateView$a;-><init>(Lcom/ricktop/ClockSkinCoco/DateView;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->g:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/DateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateView;->j()V

    return-void
.end method

.method private h()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DateView;->i:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v3, v4, :old_api_registerReceiver_compat_18

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_18

    :old_api_registerReceiver_compat_18
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_18

    return-void
.end method

.method private i()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->g:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->h:Ljava/lang/String;

    const-string v1, "hmm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hmm"

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->h:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DateView;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->g:Ljava/text/SimpleDateFormat;

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->f:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->g:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DateView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateView;->j:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateView;->h()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateView;->j()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateView;->i()V

    return-void
.end method
