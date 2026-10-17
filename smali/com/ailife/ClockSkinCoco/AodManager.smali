.class public Lcom/ailife/ClockSkinCoco/AodManager;
.super Ljava/lang/Object;
.source "AodManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodManager"

.field private static instance:Lcom/ailife/ClockSkinCoco/AodManager;


# instance fields
.field private aodActive:Z

.field private aodBrightness:I

.field private aodDimScreen:Z

.field private aodDisableLongPress:Z

.field private aodDisableTapAction:Z

.field private aodEnabled:Z

.field private aodLockViewPager:Z

.field private aodShallowSleep:Z

.field private aodTimeout:I

.field private aodTrueAlwaysOn:Z

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isInForeground:Z

.field private lastActivityTime:J

.field private originalBrightness:F

.field private prefs:Landroid/content/SharedPreferences;

.field private screenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private viewPagerLockRunnable:Ljava/lang/Runnable;

.field private viewPagerLocked:Z

.field private viewPagerUnlockSingleUse:Z

.field private window:Landroid/view/Window;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    .line 27
    const/16 v1, 0xf

    iput v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTimeout:I

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDimScreen:Z

    .line 29
    const/16 v2, 0x14

    iput v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodBrightness:I

    .line 30
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTrueAlwaysOn:Z

    .line 31
    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodLockViewPager:Z

    .line 32
    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodShallowSleep:Z

    .line 33
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDisableLongPress:Z

    .line 34
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDisableTapAction:Z

    .line 37
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->isInForeground:Z

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->lastActivityTime:J

    .line 46
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    .line 47
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerUnlockSingleUse:Z

    .line 50
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->originalBrightness:F

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->loadPreferences()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/AodManager;)Landroid/content/Context;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/AodManager;)Landroid/os/Handler;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/AodManager;)Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/AodManager;)Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    return p0
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/AodManager;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->lockViewPager()V

    return-void
.end method

.method static synthetic access$500(Lcom/ailife/ClockSkinCoco/AodManager;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->unlockViewPager()V

    return-void
.end method

.method static synthetic access$600(Lcom/ailife/ClockSkinCoco/AodManager;)V
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V

    return-void
.end method

.method private acquireScreenWakeLock()V
    .registers 5

    .line 581
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "AodManager"

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 582
    const-string v0, "Wake lock already held"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 587
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 588
    if-eqz v0, :cond_33

    .line 590
    const-string v2, "AodManager:KeepScreenOn"

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 591
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 592
    const-string v0, "Screen wake lock acquired - screen will stay on"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_33} :catch_34

    .line 596
    :cond_33
    goto :goto_3a

    .line 594
    :catch_34
    move-exception v0

    .line 595
    const-string v2, "Failed to acquire wake lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    :goto_3a
    return-void
.end method

.method public bringToForeground()V
    .registers 5

    .line 525
    const-string v0, "AodManager"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    const-string v3, "com.ricktop.ClockSkinCoco.MainActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    const/high16 v2, 0x10020000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 527
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 528
    const-string v1, "Bringing app to foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    .line 531
    goto :goto_25

    .line 529
    :catch_1f
    move-exception v1

    .line 530
    const-string v2, "Failed to bring app to foreground"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    :goto_25
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;
    .registers 3

    const-class v0, Lcom/ailife/ClockSkinCoco/AodManager;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/ailife/ClockSkinCoco/AodManager;->instance:Lcom/ailife/ClockSkinCoco/AodManager;

    if-nez v1, :cond_e

    .line 68
    new-instance v1, Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/AodManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ailife/ClockSkinCoco/AodManager;->instance:Lcom/ailife/ClockSkinCoco/AodManager;

    .line 70
    :cond_e
    sget-object p0, Lcom/ailife/ClockSkinCoco/AodManager;->instance:Lcom/ailife/ClockSkinCoco/AodManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 66
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private loadPreferences()V
    .registers 7

    .line 122
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    .line 124
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    .line 125
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    .line 126
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_timeout"

    const-string v4, "15"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTimeout:I

    .line 127
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_dim_screen"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDimScreen:Z

    .line 128
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_brightness"

    const-string v5, "20"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodBrightness:I

    .line 129
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_true_always_on"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTrueAlwaysOn:Z

    .line 130
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_lock_viewpager"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodLockViewPager:Z

    .line 131
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_shallow_sleep"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodShallowSleep:Z

    .line 132
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_disable_long_press"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDisableLongPress:Z

    .line 133
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "aod_disable_tap_action"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDisableTapAction:Z

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preferences loaded - enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDimScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shallowSleep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodShallowSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AodManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-eqz v1, :cond_c6

    if-nez v0, :cond_c6

    .line 141
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->acquireScreenWakeLock()V

    goto :goto_cf

    .line 142
    :cond_c6
    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-nez v1, :cond_cf

    if-eqz v0, :cond_cf

    .line 143
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->releaseScreenWakeLock()V

    .line 145
    :cond_cf
    :goto_cf
    return-void
.end method

.method private lockViewPager()V
    .registers 5

    .line 362
    const-string v0, "AodManager"

    :try_start_2
    # Use ViewPagerManager to lock
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lock(I)Z

    .line 365
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    .line 370
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AodManager$3;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/AodManager$3;-><init>(Lcom/ailife/ClockSkinCoco/AodManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    const-string v1, "ViewPager locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    .line 380
    goto :goto_2d

    .line 378
    :catch_27
    move-exception v1

    .line 379
    const-string v2, "Failed to lock ViewPager"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    :goto_2d
    return-void
.end method

.method private releaseScreenWakeLock()V
    .registers 4

    .line 601
    const-string v0, "AodManager"

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 603
    :try_start_e
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 604
    const-string v1, "Screen wake lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    .line 607
    goto :goto_1f

    .line 605
    :catch_19
    move-exception v1

    .line 606
    const-string v2, "Failed to release wake lock"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    :cond_1f
    :goto_1f
    return-void
.end method

.method public resetAodTimeout()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    :cond_b
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->scheduleAodTimeout()V

    .line 177
    return-void
.end method

.method private restoreNormalBrightness()V
    .registers 6

    .line 296
    const-string v0, "AodManager"

    :try_start_2
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 298
    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->originalBrightness:F

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_16

    .line 299
    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->originalBrightness:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_18

    .line 301
    :cond_16
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 304
    :goto_18
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 305
    iput v4, p0, Lcom/ailife/ClockSkinCoco/AodManager;->originalBrightness:F

    .line 306
    const-string v1, "Normal brightness restored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    .line 309
    goto :goto_2b

    .line 307
    :catch_25
    move-exception v1

    .line 308
    const-string v2, "Failed to restore brightness"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :goto_2b
    return-void
.end method

.method private restoreNormalFps()V
    .registers 4

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sp_clock_skin_display"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 330
    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/AodManager;->setFps(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 334
    goto :goto_1f

    .line 331
    :catch_12
    move-exception v0

    .line 332
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/ailife/ClockSkinCoco/AodManager;->setFps(I)V

    .line 333
    const-string v1, "AodManager"

    const-string v2, "Failed to restore FPS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :goto_1f
    return-void
.end method

.method private scheduleAodTimeout()V
    .registers 5

    .line 181
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-eqz v0, :cond_9

    goto :goto_3f

    .line 185
    :cond_9
    new-instance v0, Lcom/ailife/ClockSkinCoco/AodManager$1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/AodManager$1;-><init>(Lcom/ailife/ClockSkinCoco/AodManager;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->timeoutRunnable:Ljava/lang/Runnable;

    .line 204
    iget v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 205
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/AodManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AOD timeout scheduled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 182
    :cond_3f
    :goto_3f
    return-void
.end method

.method private scheduleViewPagerLock()V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 341
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    :cond_b
    new-instance v0, Lcom/ailife/ClockSkinCoco/AodManager$2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/AodManager$2;-><init>(Lcom/ailife/ClockSkinCoco/AodManager;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLockRunnable:Ljava/lang/Runnable;

    .line 354
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    const-string v0, "AodManager"

    const-string v1, "ViewPager lock scheduled for 10 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private setAodBrightness()V
    .registers 5

    .line 275
    const-string v0, "AodManager"

    :try_start_2
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 278
    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->originalBrightness:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    .line 279
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->originalBrightness:F

    .line 283
    :cond_13
    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodBrightness:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 284
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 286
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD brightness set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    .line 290
    goto :goto_45

    .line 288
    :catch_3f
    move-exception v1

    .line 289
    const-string v2, "Failed to set AOD brightness"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :goto_45
    return-void
.end method

.method private setFps(I)V
    .registers 5

    .line 316
    const-string v0, "AodManager"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ailife.ClockSkinCoco.SET_FPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v2, "fps"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS broadcast sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    .line 322
    goto :goto_30

    .line 320
    :catch_2a
    move-exception p1

    .line 321
    const-string v1, "Failed to send FPS broadcast"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    :goto_30
    return-void
.end method

.method private turnScreenOn()V
    .registers 5

    .line 537
    const-string v0, "AodManager"

    :try_start_2
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 538
    if-eqz v1, :cond_22

    .line 540
    nop

    .line 543
    const-string v2, "AodManager:TurnScreenOn"

    const v3, 0x3000001a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 544
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 545
    const-string v1, "Screen turned on via wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    .line 549
    :cond_22
    goto :goto_29

    .line 547
    :catch_23
    move-exception v1

    .line 548
    const-string v2, "Failed to turn screen on"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    :goto_29
    return-void
.end method

.method private unlockViewPager()V
    .registers 5

    .line 387
    const-string v0, "AodManager"

    :try_start_2
    # Use ViewPagerManager to unlock
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->unlock(I)Z

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    .line 391
    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerUnlockSingleUse:Z

    .line 394
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AodManager$4;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/AodManager$4;-><init>(Lcom/ailife/ClockSkinCoco/AodManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    const-string v1, "ViewPager unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    .line 404
    goto :goto_2f

    .line 402
    :catch_29
    move-exception v1

    .line 403
    const-string v2, "Failed to unlock ViewPager"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :goto_2f
    return-void
.end method


# virtual methods
.method public enterAodMode()V
    .registers 4

    .line 211
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-eqz v0, :cond_5

    .line 212
    return-void

    .line 215
    :cond_5
    const-string v0, "AodManager"

    const-string v1, "Entering AOD mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    .line 219
    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDimScreen:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    if-eqz v1, :cond_1a

    .line 220
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->setAodBrightness()V

    .line 224
    :cond_1a
    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodLockViewPager:Z

    if-eqz v1, :cond_21

    .line 225
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->scheduleViewPagerLock()V

    .line 229
    :cond_21
    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/AodManager;->setFps(I)V

    .line 232
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ailife.ClockSkinCoco.AOD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    const-string v2, "aod_active"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method public exitAodMode()V
    .registers 5

    .line 239
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-nez v0, :cond_5

    .line 240
    return-void

    .line 243
    :cond_5
    const-string v0, "Exiting AOD mode"

    const-string v1, "AodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    .line 247
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLockRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    if-nez v2, :cond_23

    .line 248
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    const-string v2, "Cancelled pending ViewPager lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_23
    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDimScreen:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    if-eqz v1, :cond_2e

    .line 254
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->restoreNormalBrightness()V

    .line 261
    :cond_2e
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->restoreNormalFps()V

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ailife.ClockSkinCoco.AOD_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v2, "aod_active"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V

    .line 270
    return-void
.end method

.method public handleScreenOff()V
    .registers 6

    .line 451
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->loadPreferences()V

    .line 453
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodTrueAlwaysOn:Z

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-nez v0, :cond_c

    goto :goto_6b

    .line 457
    :cond_c
    const-string v0, "True always-on enabled, handling screen off event"

    const-string v1, "AodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    if-eqz v0, :cond_3f

    .line 461
    const-string v0, "ViewPager is locked, turning screen on and unlocking ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->turnScreenOn()V

    .line 467
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->isInForeground:Z

    if-nez v0, :cond_26

    .line 468
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->bringToForeground()V

    .line 472
    :cond_26
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-eqz v0, :cond_2d

    .line 473
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->exitAodMode()V

    .line 478
    :cond_2d
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AodManager$5;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/AodManager$5;-><init>(Lcom/ailife/ClockSkinCoco/AodManager;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    const-string v0, "ViewPager will be unlocked and timeout reset after delay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 496
    :cond_3f
    const-string v0, "ViewPager not locked, entering AOD mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->turnScreenOn()V

    .line 502
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->isInForeground:Z

    if-nez v0, :cond_4e

    .line 503
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->bringToForeground()V

    .line 507
    :cond_4e
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-nez v0, :cond_6a

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.GO_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ailife/ClockSkinCoco/AodManager$6;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/AodManager$6;-><init>(Lcom/ailife/ClockSkinCoco/AodManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    :cond_6a
    return-void

    .line 454
    :cond_6b
    :goto_6b
    return-void
.end method

.method public init(Landroid/view/Window;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->window:Landroid/view/Window;

    .line 76
    const-string p1, "AodManager"

    const-string v0, "AodManager initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->loadPreferences()V

    .line 82
    iget-boolean p1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-eqz p1, :cond_13

    .line 83
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->acquireScreenWakeLock()V

    .line 87
    :cond_13
    return-void
.end method

.method public isAodActive()Z
    .registers 2

    .line 445
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    return v0
.end method

.method public isViewPagerLocked()Z
    .registers 2

    .line 409
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    return v0
.end method

.method public clearViewPagerLock()V
    .registers 3

    .line 413
    # Clear AOD's internal viewpager lock state
    const-string v0, "AodManager"

    const-string v1, "clearViewPagerLock() - Unlocking ViewPager from AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerUnlockSingleUse:Z

    return-void
.end method

.method public notifyUserActivity()V
    .registers 3

    .line 150
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->shouldIgnoreSingleTouch()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    const-string v0, "AodManager"

    const-string v1, "Single touch ignored - shallow sleep disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->lastActivityTime:J

    .line 158
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-eqz v0, :cond_1b

    .line 159
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->exitAodMode()V

    .line 163
    :cond_1b
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-eqz v0, :cond_22

    .line 164
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V

    .line 166
    :cond_22
    return-void
.end method

.method public onPause()V
    .registers 4

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->isInForeground:Z

    .line 108
    const-string v0, "App in background"

    const-string v1, "AodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 112
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/AodManager;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    const-string v0, "AOD timeout cancelled (background)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1a
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->releaseScreenWakeLock()V

    .line 118
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->isInForeground:Z

    .line 92
    const-string v0, "AodManager"

    const-string v1, "App in foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-eqz v0, :cond_11

    .line 96
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->acquireScreenWakeLock()V

    .line 100
    :cond_11
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodEnabled:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-nez v0, :cond_1c

    .line 101
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V

    .line 103
    :cond_1c
    return-void
.end method

.method public shouldBlockLongPress()Z
    .registers 4

    .line 563
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDisableLongPress:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 564
    :goto_b
    if-eqz v0, :cond_14

    .line 565
    const-string v1, "AodManager"

    const-string v2, "Blocking long press - disabled in AOD settings and viewpager locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_14
    return v0
.end method

.method public shouldBlockTapAction()Z
    .registers 4

    .line 572
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodDisableTapAction:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 573
    :goto_b
    if-eqz v0, :cond_14

    .line 574
    const-string v1, "AodManager"

    const-string v2, "Blocking tap action - disabled in AOD settings and viewpager locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_14
    return v0
.end method

.method public shouldIgnoreSingleTouch()Z
    .registers 4

    .line 554
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodShallowSleep:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 555
    :goto_b
    if-eqz v0, :cond_14

    .line 556
    const-string v1, "AodManager"

    const-string v2, "Ignoring single touch - shallow sleep disabled and viewpager locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_14
    return v0
.end method

.method public unlockViewPagerOnce()V
    .registers 5

    .line 414
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->viewPagerLocked:Z

    if-nez v0, :cond_5

    .line 415
    return-void

    .line 418
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlockViewPagerOnce called - aodActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shallowSleep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodShallowSleep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :try_start_2b
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->context:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 423
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 424
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_43

    .line 428
    :cond_42
    goto :goto_49

    .line 426
    :catch_43
    move-exception v0

    .line 427
    const-string v2, "Failed to vibrate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    :goto_49
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->unlockViewPager()V

    .line 432
    const-string v0, "ViewPager unlocked via double-press"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/AodManager;->aodActive:Z

    if-eqz v0, :cond_5e

    .line 436
    const-string v0, "Exiting AOD mode after viewpager unlock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->exitAodMode()V

    goto :goto_63

    .line 439
    :cond_5e
    const-string v0, "AOD already inactive, not calling exitAodMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_63
    return-void
.end method
