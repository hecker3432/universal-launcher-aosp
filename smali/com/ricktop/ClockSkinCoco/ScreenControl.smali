.class Lcom/ricktop/ClockSkinCoco/ScreenControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/ScreenControl$LockAppDeviceAdmin;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Landroid/os/PowerManager;
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b:Landroid/os/PowerManager;

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    const-class v2, Lcom/ricktop/ClockSkinCoco/LockDeviceReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    const-class v4, Lcom/ricktop/ClockSkinCoco/ScreenControl$LockAppDeviceAdmin;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "mLockReceiver"

    const-string v1, "registerAdminRights"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "Used for locking the device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method c()V
    .locals 3

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "ClockSkinCoco:screenOff"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    const-class v2, Lcom/ricktop/ClockSkinCoco/ScreenControl$LockAppDeviceAdmin;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/ScreenControl;->a:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
