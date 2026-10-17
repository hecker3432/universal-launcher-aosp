.class public Lcom/ricktop/ClockSkinCoco/ScreenSensorService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;
    }
.end annotation


# static fields
.field private static g:Z = false


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/os/PowerManager;

.field private d:Landroid/hardware/SensorManager;

.field private final e:Landroid/hardware/SensorEventListener;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->b:Ljava/lang/String;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;-><init>(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->e:Landroid/hardware/SensorEventListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ricktop.ClockSkinCoco.SCREENTOUCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$a;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$a;-><init>(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)V

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->f:Landroid/content/BroadcastReceiver;

    :try_start_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    const/4 v3, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v15, v4, :old_api_registerReceiver_compat_38

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_38

    :old_api_registerReceiver_compat_38
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_38
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)Landroid/os/PowerManager;
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->e()Landroid/os/PowerManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->g()V

    return-void
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->g:Z

    return v0
.end method

.method private e()Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->c:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->c:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->c:Landroid/os/PowerManager;

    return-object v0
.end method

.method private f()Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->d:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->d:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->d:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->e()Landroid/os/PowerManager;

    move-result-object v0

    const v1, 0x1000000a

    const-string v2, "ClockSkinCoco:wake"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "turnOnTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->g:Z

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$b;

    invoke-direct {v2, p0, v0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$b;-><init>(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->b:Ljava/lang/String;

    const-string v1, "goToWake"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->f()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->e:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->f()Landroid/hardware/SensorManager;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->b:Ljava/lang/String;

    const-string v1, "initSensorTiltDetector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized i()V
    .locals 2

    const-class v0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private j()V
    .locals 4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->f()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->e:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->f()Landroid/hardware/SensorManager;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->b:Ljava/lang/String;

    const-string v1, "stopSleepSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->j()V

    :try_start_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->h()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
