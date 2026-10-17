.class public Lcom/ricktop/ClockSkinCoco/DateTimeView;
.super Landroidx/appcompat/widget/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/DateTimeView$b;
    }
.end annotation


# instance fields
.field private final f:Landroid/content/BroadcastReceiver;

.field private final g:Landroid/database/ContentObserver;

.field private final h:I

.field private i:Ljava/text/DateFormat;

.field private j:Ljava/util/Date;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/S;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->h:I

    new-instance p1, Lcom/ricktop/ClockSkinCoco/DateTimeView$a;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView$a;-><init>(Lcom/ricktop/ClockSkinCoco/DateTimeView;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->f:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/DateTimeView$b;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/ricktop/ClockSkinCoco/DateTimeView$b;-><init>(Lcom/ricktop/ClockSkinCoco/DateTimeView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->g:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/DateTimeView;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->i:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/DateTimeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->k()V

    return-void
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/ricktop/ClockSkinCoco/DateTimeView;)J
    .locals 2

    iget-wide v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->l:J

    return-wide v0
.end method

.method private i()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->f:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v5, v4, :old_api_registerReceiver_compat_28

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_28

    :old_api_registerReceiver_compat_28
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_28

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private k()V
    .locals 14

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->j:Ljava/util/Date;

    if-eqz v0, :cond_b

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-wide v1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->k:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/format/Time;->second:I

    iget v2, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, -0xc

    iput v2, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget v4, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v4, v4, 0xc

    iput v4, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    iput v1, v0, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    cmp-long v0, v12, v6

    if-ltz v0, :cond_0

    cmp-long v0, v12, v10

    if-ltz v0, :cond_2

    :cond_0
    cmp-long v0, v12, v2

    if-ltz v0, :cond_1

    cmp-long v0, v12, v4

    if-ltz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->h:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->i:Ljava/text/DateFormat;

    if-nez v0, :cond_6

    :cond_3
    if-eqz v1, :cond_5

    if-ne v1, v9, :cond_4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown display value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->i:Ljava/text/DateFormat;

    :cond_6
    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->j:Ljava/util/Date;

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_8

    cmp-long v0, v4, v10

    if-gtz v0, :cond_7

    move-wide v4, v10

    :cond_7
    iput-wide v4, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->l:J

    goto :goto_1

    :cond_8
    iget-wide v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->k:J

    cmp-long v4, v0, v12

    if-gez v4, :cond_9

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->l:J

    goto :goto_1

    :cond_9
    cmp-long v0, v2, v6

    if-ltz v0, :cond_a

    move-wide v2, v6

    :cond_a
    iput-wide v2, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->l:J

    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->i()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->j()V

    return-void
.end method

.method public setTime(J)V
    .locals 1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x0

    iput p1, v0, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->k:J

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView;->j:Ljava/util/Date;

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->k()V

    return-void
.end method
