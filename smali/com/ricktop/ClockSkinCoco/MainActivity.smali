.class public Lcom/ricktop/ClockSkinCoco/MainActivity;
.super Landroidx/fragment/app/d;
.source "SourceFile"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/MainActivity$f;,
        Lcom/ricktop/ClockSkinCoco/MainActivity$h;,
        Lcom/ricktop/ClockSkinCoco/MainActivity$g;,
        Lcom/ricktop/ClockSkinCoco/MainActivity$i;,
        Lcom/ricktop/ClockSkinCoco/MainActivity$j;
    }
.end annotation


# static fields
.field private static E:Landroid/os/Handler;

.field public static F:Lcom/ricktop/ClockSkinCoco/m;


# instance fields
.field private A:Z

.field private B:Lcom/ricktop/ClockSkinCoco/MainActivity$g;

.field private C:Lcom/ricktop/ClockSkinCoco/ScreenControl;

.field private D:Landroid/content/BroadcastReceiver;

.field private final s:I

.field private final t:I

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/content/BroadcastReceiver;

.field private final w:Landroid/content/BroadcastReceiver;

.field private x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

.field private final y:Lcom/ricktop/ClockSkinCoco/MainActivity$f;

.field private z:Lcom/ricktop/ClockSkinCoco/L;

.field private z0:Lcom/ailife/launcher/widget/WidgetManager;

.field private launcherManager:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->s:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->t:I

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->A:Z

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$f;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$f;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->y:Lcom/ricktop/ClockSkinCoco/MainActivity$f;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$h;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity$h;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/MainActivity;->E:Landroid/os/Handler;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$a;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->w:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$b;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->v:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$c;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/ScreenControl;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->C:Lcom/ricktop/ClockSkinCoco/ScreenControl;

    return-object p0
.end method

.method private D()V
    .locals 6

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_dpi_override"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const-string v4, "system_dpi"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v5, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v5

    :cond_0
    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " original:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONFIG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "app_dpi_value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    :goto_0
    iput v0, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    :cond_2
    iget v0, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v0, :cond_3

    iput v2, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private J()Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private K(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/ricktop/ClockSkinCoco/FakeHome;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/4 p1, 0x2

    :try_start_2
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private L([Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly/c;->j(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic x(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    return-object p0
.end method

.method static synthetic y(Lcom/ricktop/ClockSkinCoco/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->A:Z

    return p1
.end method

.method static synthetic z()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/MainActivity;->E:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public B()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    :cond_0
    return-void
.end method

.method public wakeDeviceForNotification()V
    .locals 3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x10000006

    const-string v2, "ClockSkinCoco:bright"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 0

    # Legacy method for backward compatibility - wakes device and scrolls
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->wakeDeviceForNotification()V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->scrollToNotification()V

    return-void
.end method

.method public scrollToNotification()V
    .locals 3

    # Check if UBS is locked - if so, don't scroll
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->isLockedByUBS()Z

    move-result v0

    if-eqz v0, :not_locked_by_ubs

    # UBS is locked, don't scroll to prevent viewpager stuck
    return-void

    :not_locked_by_ubs
    # Exit AOD if enabled
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->isAodActive()Z

    move-result v1

    if-eqz v1, :check_viewpager_lock

    # AOD is active, exit it and reset timeout
    const-string v1, "NotificationScroll"

    const-string v2, "Notification scroll - exiting AOD mode and resetting timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->exitAodMode()V

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V

    :check_viewpager_lock
    # Check if viewpager is locked by AOD and unlock it
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->isViewPagerLocked()Z

    move-result v1

    if-eqz v1, :aod_not_active

    # ViewPager is locked, unlock it properly
    const-string v1, "NotificationScroll"

    const-string v2, "Notification scroll - unlocking AOD viewpager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->unlockViewPagerOnce()V

    :aod_not_active
    # Scroll to notification page
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->B()V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/o;->I1()V

    :cond_0
    return-void
.end method

.method public E()I
    .locals 1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/o;->J1()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public F()Lcom/ricktop/ClockSkinCoco/L;
    .locals 1

    # Return new WidgetHost (cast to old type for compatibility)
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    return-object v0
.end method

.method public G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/o;->L1()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    return-object v0
.end method

.method public H()Lcom/ricktop/ClockSkinCoco/o;
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->B:Lcom/ricktop/ClockSkinCoco/MainActivity$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/MainActivity$g;->s(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/o;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Lcom/ricktop/ClockSkinCoco/I;
    .locals 2

    # NEW: Return WidgetContainerFragment (cast as old I type for compatibility)
    # This method is deprecated and should not be called with new widget system
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->B:Lcom/ricktop/ClockSkinCoco/MainActivity$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/MainActivity$g;->s(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/I;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public J()Lcom/ailife/launcher/widget/WidgetManager;
    .locals 1

    # Return WidgetManager for new widget storage system
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z0:Lcom/ailife/launcher/widget/WidgetManager;

    return-object v0
.end method

.method public M(I)V
    .locals 1
    # disable hot swapping app list
    return-void

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/o;->P1(I)V

    :cond_0
    return-void
.end method

.method public restartNotificationService()V
    .locals 5

    # Check if notification workaround is enabled (if true, don't use NotificationListenerService)
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notificationStation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    # Workaround enabled, don't start NotificationListenerService
    const-string v0, "NotificationService"

    const-string v1, "Notification workaround enabled, skipping service restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    # Check if NotificationService is already running
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/NotificationService;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    # Service is already running, no need to restart
    const-string v0, "NotificationService"

    const-string v1, "NotificationService is already running, no restart needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    # Service not running, log and proceed to check permissions
    const-string v0, "NotificationService"

    const-string v1, "NotificationService is not running, checking permissions and attempting restart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    # Create component name for NotificationService
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ricktop/ClockSkinCoco/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    # Check if notification listener permission is granted
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    # Permission granted - NotificationListenerService should auto-restart if crashed
    const-string v1, "NotificationService"

    const-string v2, "NotificationListenerService permission is granted. Service will auto-restart if needed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Try to toggle component state to force restart
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    # Disable component
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    # Small delay to ensure state change
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    # Re-enable component
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v0, "NotificationService"

    const-string v1, "Successfully toggled NotificationService component state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :cond_3

    :catch_0
    move-exception v0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not toggle component state (normal on some ROMs): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :cond_3

    :cond_2
    # Permission not granted, open settings
    const-string v0, "NotificationService"

    const-string v1, "Notification listener permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :cond_3

    :catch_1
    move-exception v0

    const-string v1, "NotificationService"

    const-string v2, "Could not open notification settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public O()V
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->C:Lcom/ricktop/ClockSkinCoco/ScreenControl;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/ScreenControl;->d()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    # Get ACTION_DELETE string
    sget-object v0, Landroid/content/Intent;->ACTION_DELETE:Ljava/lang/String;

    # Create Intent with ACTION_DELETE
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Get the app's package name dynamically
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v2

    # Build the "package:your.package.name" URI string
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append the package name to "package:"
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Convert StringBuilder to String
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2

    # Parse the URI string into a Uri object
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v3

    # Set the Uri as the Intent's data
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    # Start the uninstall activity
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    # Clear savedInstanceState to prevent fragment state restoration after killed from recents
    # This fixes GL shader issues by forcing fresh fragment initialization
    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    # Initialize DefaultLauncherManager
    new-instance v3, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;
    move-object v4, p0
    check-cast v4, Landroid/app/Activity;
    invoke-direct {v3, v4}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;-><init>(Landroid/app/Activity;)V
    iput-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->launcherManager:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    # Initialize VideoFrameExtractor with application context
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-static {v3}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->init(Landroid/content/Context;)V

    # Initialize MapTileDownloader with application context
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-static {v3}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->init(Landroid/content/Context;)V

    # Initialize GalleryProvider with application context
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v3
    invoke-static {v3}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->initialize(Landroid/content/Context;)V

    :try_start_4
    # --- Start of injected code ---
    # Get Window object
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->getWindow()Landroid/view/Window;
    move-result-object v0

    # Set Window flags (FLAG_FULLSCREEN and FLAG_LAYOUT_NO_LIMITS)
    sget v1, Landroid/view/WindowManager$LayoutParams;->FLAG_FULLSCREEN:I
    sget v2, Landroid/view/WindowManager$LayoutParams;->FLAG_LAYOUT_NO_LIMITS:I
    or-int/2addr v1, v2
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    # Get DecorView and set System UI flags
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0

    sget v1, Landroid/view/View;->SYSTEM_UI_FLAG_FULLSCREEN:I
    sget v2, Landroid/view/View;->SYSTEM_UI_FLAG_HIDE_NAVIGATION:I
    or-int/2addr v1, v2
    sget v2, Landroid/view/View;->SYSTEM_UI_FLAG_IMMERSIVE_STICKY:I
    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    # --- End of injected code ---
    :try_end_4

    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4



    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating saved:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cocos MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->k(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->D()V

    new-instance p1, Lcom/ricktop/ClockSkinCoco/F;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/F;-><init>(Landroid/app/Activity;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->restartNotificationService()V

    # Restart GlobalQsService if needed
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->restartServiceIfNeeded(Landroid/content/Context;)V

    new-instance p1, Lcom/ricktop/ClockSkinCoco/m;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/m;-><init>()V

    sput-object p1, Lcom/ricktop/ClockSkinCoco/MainActivity;->F:Lcom/ricktop/ClockSkinCoco/m;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/ScreenControl;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/ScreenControl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->C:Lcom/ricktop/ClockSkinCoco/ScreenControl;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/MainActivity$d;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$d;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->D:Landroid/content/BroadcastReceiver;

    const p1, 0x7f0d0021

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->y:Lcom/ricktop/ClockSkinCoco/MainActivity$f;

    const/4 v1, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v4, :old_api_registerReceiver_compat_31

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_31

    :old_api_registerReceiver_compat_31
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string p1, "cocos2dlua"

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/app/Activity;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    ###################

    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "legacyQs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/ricktop/ClockSkinCoco/w;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/w;-><init>()V

    goto :goto_5
    :cond_5

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/QSFragment;-><init>()V

    :goto_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/o;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/o;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    # REVERTED: Use legacy class I with new backend
    new-instance v0, Lcom/ricktop/ClockSkinCoco/I;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/I;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    # Register MainVerticalViewPager with ViewPagerManager
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    invoke-virtual {v3, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registerViewPager(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->c:Z

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/ricktop/ClockSkinCoco/WatchApp;->c:Z

    :cond_1
    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$g;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->p()Landroidx/fragment/app/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ricktop/ClockSkinCoco/MainActivity$g;-><init>(Landroidx/fragment/app/m;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->B:Lcom/ricktop/ClockSkinCoco/MainActivity$g;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    invoke-virtual {p1, v2, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    # NEW: Use new WidgetHost backend with legacy UI
    new-instance p1, Lcom/ailife/launcher/widget/WidgetHost;

    invoke-direct {p1, p0}, Lcom/ailife/launcher/widget/WidgetHost;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    # NEW: Initialize WidgetManager with the WidgetHost
    new-instance v0, Lcom/ailife/launcher/widget/WidgetManager;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    check-cast p1, Lcom/ailife/launcher/widget/WidgetHost;

    invoke-direct {v0, p0, p1}, Lcom/ailife/launcher/widget/WidgetManager;-><init>(Landroid/content/Context;Lcom/ailife/launcher/widget/WidgetHost;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z0:Lcom/ailife/launcher/widget/WidgetManager;

    # REMOVED: invoke-static {}, Landroid/appwidget/AppWidgetHost;->deleteAllHosts()V
    # This was causing widgets to be deleted on every app restart, making them blank and unusable

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/L;->startListening()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$e;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$e;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    # Initialize AodManager
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ailife/ClockSkinCoco/AodManager;->init(Landroid/view/Window;)V

    # Initialize UltraBatterySaverManager
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.ricktop.watchapp.NOTIFICATION_LISTENER.POSTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ricktop.watchapp.NOTIFICATION_LISTENER.REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ricktop.watchapp.NOTIFICATION_LISTENER.REFRESH"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "ipc_handphone_state_change"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.watchengine.changeface"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ailife.ClockSkinCoco.GO_HOME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ricktop.ClockSkinCoco.SCREENTOUCHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ailife.ClockSkinCoco.SET_FPS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->w:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v4, :old_api_registerReceiver_compat_32

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_32

    :old_api_registerReceiver_compat_32
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_32

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "watch_app_list_change"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->v:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v4, :old_api_registerReceiver_compat_33

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_33

    :old_api_registerReceiver_compat_33
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_33

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->u:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v4, :old_api_registerReceiver_compat_34

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_34

    :old_api_registerReceiver_compat_34
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_34

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->y:Lcom/ricktop/ClockSkinCoco/MainActivity$f;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v0, "WidgetHandler"

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/L;->stopListening()V

    # FIXED: Do NOT call deleteHost() or null out the host during onPause
    # The host needs to persist across pause/resume cycles or widgets become blank placeholders
    # iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;
    # invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/L;->a()V
    # const/4 v0, 0x0
    # iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->goHome()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v1, v0, :cond_1

    const-string v0, "Keyevent"

    const-string v1, "power"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onNewIntent"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "home_button"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    if-eqz v0, :cond_2

    if-eqz p1, :goto_0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->M1()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->C:Lcom/ricktop/ClockSkinCoco/ScreenControl;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    const/4 v0, 0x1
    
    invoke-virtual {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->B()V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->H1()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    # Notify AodManager that app is going to background
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->y:Lcom/ricktop/ClockSkinCoco/MainActivity$f;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    # REMOVED: Do NOT stop widget listening in onPause
    # The launcher must keep listening continuously to receive widget updates
    # that providers send outside of their scheduled intervals
    # stopListening should only be called in onDestroy, not onPause
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "power_saver"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->d:Z

    const-string v0, "frist_launch"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ricktop/ClockSkinCoco/WatchApp;->c:Z

    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    # Check and prompt for default launcher if needed
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->launcherManager:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;
    if-eqz v0, :skip_launcher_check
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->checkAndPromptIfNeeded()V
    :skip_launcher_check

    # Notify AodManager that app is in foreground
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->onResume()V

    # Notify UBS to re-lock Lua if needed (app restart case)
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->notifyLuaIfLocked()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->D()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->u:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v5, 0x21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v2, v5, :old_api_registerReceiver_compat_35

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_35

    :old_api_registerReceiver_compat_35
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_35

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->y:Lcom/ricktop/ClockSkinCoco/MainActivity$f;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v5, 0x21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v2, v5, :old_api_registerReceiver_compat_36

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_36

    :old_api_registerReceiver_compat_36
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_36
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ricktop.ClockSkinCoco.LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.SCREENOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ailife.ClockSkinCoco.SET_PAGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->D:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v5, 0x21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v2, v5, :old_api_registerReceiver_compat_37

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_37

    :old_api_registerReceiver_compat_37
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_37
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/ricktop/ClockSkinCoco/MainActivity;->E:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/ricktop/ClockSkinCoco/MainActivity;->E:Landroid/os/Handler;

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    if-eqz v0, :goto_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->P()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->w1(Z)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->w1(Z)V

    :cond_2
    :goto_3
    # REMOVED: Old launcher check (J() and K() methods) - replaced with DefaultLauncherManager

    # Call Lua function to restart all text animations on GL thread when activity resumes
    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$j;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/MainActivity$j;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    # Restart widget listening when activity resumes to restore widget callbacks
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->z:Lcom/ricktop/ClockSkinCoco/L;

    if-eqz v0, :cond_widget_start

    :try_start_widget
    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/L;->startListening()V
    :try_end_widget
    .catch Ljava/lang/Exception; {:try_start_widget .. :try_end_widget} :catch_widget_start

    :catch_widget_start
    :cond_widget_start
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "power_saver"

    sget-boolean v1, Lcom/ricktop/ClockSkinCoco/WatchApp;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "frist_launch"

    sget-boolean v1, Lcom/ricktop/ClockSkinCoco/WatchApp;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/WatchApp;->l(Z)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->N1()V

    :cond_0
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    return-void
.end method

.method public goHome()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x0
    
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity;->x:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;
    
    invoke-virtual {v1, v0, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->B()V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/o;->H1()V

    :cond_2

    return-void
.end method
