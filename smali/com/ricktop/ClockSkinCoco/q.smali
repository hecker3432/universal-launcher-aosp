.class public Lcom/ricktop/ClockSkinCoco/q;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/q$c;
    }
.end annotation


# static fields
.field private static final e0:Ljava/lang/String; = "Coco Notification"


# instance fields
.field private Y:Landroid/content/Context;

.field private Z:Landroid/view/View;

.field private a0:I

.field private b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

.field private c0:Landroid/os/Vibrator;

.field private d0:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/q;->a0:I

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/q;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/q;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/q;->H1(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/q;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/q;->M1(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic F1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G1(Lcom/ricktop/ClockSkinCoco/q;I)Lcom/ricktop/ClockSkinCoco/v;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/q;->I1(I)Lcom/ricktop/ClockSkinCoco/v;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized H1(Landroid/service/notification/StatusBarNotification;)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ricktop/ClockSkinCoco/r;->b(Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v0

    const-string v1, "Notif"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNotification pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " PostTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sbn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/p$b;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/ricktop/ClockSkinCoco/v;->F1(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Lcom/ricktop/ClockSkinCoco/v;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/ricktop/ClockSkinCoco/p$b;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/ricktop/ClockSkinCoco/v;)V

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/r;->a(Lcom/ricktop/ClockSkinCoco/p$b;)I

    move-result v1

    const/4 v4, 0x1

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance v1, Lcom/ricktop/ClockSkinCoco/p$b;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/ricktop/ClockSkinCoco/v;->F1(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Lcom/ricktop/ClockSkinCoco/v;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Lcom/ricktop/ClockSkinCoco/p$b;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/ricktop/ClockSkinCoco/v;)V

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Broadcast add Notification =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v6

    invoke-static {v6}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "notificationWake"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v9, "notificationScroll"

    const/4 v8, 0x1

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/MainActivity;

    # Only process wake/scroll for new notifications
    if-eqz v4, :cond_3

    if-eqz v9, :cond_3

    # Wake device if notificationWake is enabled
    if-eqz v7, :skip_wake

    invoke-virtual {v9}, Lcom/ricktop/ClockSkinCoco/MainActivity;->wakeDeviceForNotification()V

    :skip_wake
    # Scroll to notification if notificationScroll is enabled
    if-eqz v6, :cond_3

    invoke-virtual {v9}, Lcom/ricktop/ClockSkinCoco/MainActivity;->scrollToNotification()V

    :cond_3
    if-eqz v9, :cond_5  # Ensure MainActivity exists before vibration logic
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v10

    invoke-static {v10}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v5, "notificationVibrate"

    invoke-interface {v10, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "alwaysVibrate"

    invoke-interface {v10, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v8, "audio"

    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Lcom/ricktop/ClockSkinCoco/r;->l(Landroid/app/Notification;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Lcom/ricktop/ClockSkinCoco/r;->k(Landroid/app/Notification;)[J

    move-result-object v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/q;->c0:Landroid/os/Vibrator;

    if-eqz v3, :cond_5

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_5
    sget-object v3, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNotification pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sbn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-virtual {p1, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/r;->n(Lcom/ricktop/ClockSkinCoco/p$b;)I

    :goto_2
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/q;->L1()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/q;->J1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method private I1(I)Lcom/ricktop/ClockSkinCoco/v;
    .locals 4

    if-ltz p1, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/p;->d(I)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object v0

    sget-object v1, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getNotificationSubFragment("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->a:Lcom/ricktop/ClockSkinCoco/v;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->a:Lcom/ricktop/ClockSkinCoco/v;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private J1()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ricktop.watchapp.NOTIFICATION_LISTENER.POSTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public K1()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ricktop.watchapp.NOTIFICATION_LISTENER.REMOVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public L1()V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/q;->a0:I

    sget-object v0, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshPager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/q;->a0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/q;->a0:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPager no items="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/q;->N1(Z)V

    :cond_1
    return-void
.end method

.method private declared-synchronized M1(Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    sget-object v3, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast remove Notification => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/ricktop/ClockSkinCoco/r;->b(Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast remove Notification => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/ricktop/ClockSkinCoco/r;->m(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/q;->L1()V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/q;->K1()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " removeNotification"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "found"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification NOT FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private N1(Z)V
    .locals 3

    sget-object v0, Lcom/ricktop/ClockSkinCoco/q;->e0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoItemsVisibility;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/q;->Z:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->Z:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/q;->c0:Landroid/os/Vibrator;

    :cond_0
    new-instance p1, Lcom/ricktop/ClockSkinCoco/q$a;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/q$a;-><init>(Lcom/ricktop/ClockSkinCoco/q;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/q;->d0:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.ricktop.ClockSkinCoco.NOTIF.ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ricktop.ClockSkinCoco.NOTIF.REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ricktop.ClockSkinCoco.NOTIF.REFRESH"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/q;->d0:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_27

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_27

    :old_api_registerReceiver_compat_27
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_27
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d0043

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/q;->a0:I

    const p2, 0x7f0a021a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    const p2, 0x7f0a015f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->Z:Landroid/view/View;

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/q;->a0:I

    const/4 p3, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/q;->N1(Z)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/q$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/m;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/ricktop/ClockSkinCoco/q$c;-><init>(Lcom/ricktop/ClockSkinCoco/q;Landroidx/fragment/app/m;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-virtual {v1, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setPageMargin(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-virtual {p2, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setCurrentItem(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setOffscreenPageLimit(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/q;->b0:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/q$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/q$b;-><init>(Lcom/ricktop/ClockSkinCoco/q;)V

    invoke-virtual {p2, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-object p1
.end method

.method public n0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q;->Y:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/q;->d0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public p0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->p0()V

    return-void
.end method

.method public y0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    return-void
.end method
