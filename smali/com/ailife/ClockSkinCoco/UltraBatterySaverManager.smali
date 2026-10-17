.class public Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;
.super Ljava/lang/Object;
.source "UltraBatterySaverManager.java"


# static fields
.field private static final ACTION_SET_PAGING:Ljava/lang/String; = "com.ailife.ClockSkinCoco.SET_PAGING"

.field private static final KEY_ADVANCED_KIOSK:Ljava/lang/String; = "ultra_battery_saver_advanced_kiosk"

.field private static final KEY_AUTO_LOCK:Ljava/lang/String; = "ultra_battery_saver_auto_lock"

.field private static final KEY_LOCKED:Ljava/lang/String; = "ultra_battery_saver_locked"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "ultra_battery_saver_password"

.field private static final KEY_PASSWORD_TYPE:Ljava/lang/String; = "ultra_battery_saver_password_type"

.field private static final TAG:Ljava/lang/String; = "UBSManager"

.field public static final TYPE_PASSWORD:I = 0x2

.field public static final TYPE_PATTERN:I = 0x0

.field public static final TYPE_PIN:I = 0x1

.field private static instance:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;


# instance fields
.field private context:Landroid/content/Context;

.field private isLocked:Z

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->context:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    .line 49
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ultra_battery_saver_locked"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initialized. Lock state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UBSManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-boolean p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    if-eqz p1, :cond_3f

    .line 55
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->lockViewPager()V

    .line 57
    :cond_3f
    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->setLuaLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;
    .registers 3

    const-class v0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->instance:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    if-nez v1, :cond_e

    .line 64
    new-instance v1, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->instance:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    .line 66
    :cond_e
    sget-object p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->instance:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 62
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private performUnlock()V
    .registers 6

    .line 145
    const-string v0, "Unlocking ViewPager"

    const-string v1, "UBSManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    .line 149
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ultra_battery_saver_locked"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v0

    .line 155
    const/4 v2, 0x2

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->unlock(IJ)Z

    move-result v0

    .line 157
    if-nez v0, :cond_2e

    .line 158
    const-string v0, "Failed to unlock ViewPager via ViewPagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 163
    :cond_2e
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_55

    .line 166
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->isAodActive()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 167
    const-string v2, "UBS unlocking - exiting AOD mode and resetting timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->exitAodMode()V

    .line 169
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->resetAodTimeout()V

    .line 172
    :cond_47
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->isViewPagerLocked()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 173
    const-string v2, "UBS unlocking - clearing AOD viewpager lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->clearViewPagerLock()V

    .line 179
    :cond_55
    return-void
.end method

.method private setLuaLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 216
    const-string v0, "UBSManager"

    :try_start_2
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object v1

    .line 218
    if-nez v1, :cond_e

    .line 219
    const-string p1, "MainActivity not available, cannot call Lua"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 224
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    new-instance v2, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$2;

    invoke-direct {v2, p0, p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$2;-><init>(Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called Lua __G__SETUBSLOCKED__("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    .line 242
    goto :goto_50

    .line 240
    :catch_4a
    move-exception p1

    .line 241
    const-string p2, "Failed to call Lua setUBSLocked"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :goto_50
    return-void
.end method

.method public static unlockFromLua()V
    .registers 2

    .line 131
    const-string v0, "Unlock requested from Lua - password was correct"

    const-string v1, "UBSManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->instance:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    if-eqz v0, :cond_11

    .line 134
    sget-object v0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->instance:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->performUnlock()V

    goto :goto_16

    .line 136
    :cond_11
    const-string v0, "Cannot unlock - instance is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_16
    return-void
.end method


# virtual methods
.method public handleScreenOff()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ultra_battery_saver_auto_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 75
    const-string v0, "UBSManager"

    const-string v1, "Screen off - auto-lock enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->lockViewPager()V

    .line 78
    :cond_15
    return-void
.end method

.method public handleScreenOn()V
    .registers 3

    .line 86
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    if-eqz v0, :cond_b

    .line 87
    const-string v0, "UBSManager"

    const-string v1, "Screen on while locked - waiting for Lua to unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_b
    return-void
.end method

.method public isAdvancedKioskEnabled()Z
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ultra_battery_saver_advanced_kiosk"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    return v0
.end method

.method public isLockedWithKiosk()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isAdvancedKioskEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPasswordValid()Z
    .registers 8

    .line 250
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ultra_battery_saver_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ultra_battery_saver_password_type"

    const-string v3, "keypad"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    const/4 v2, 0x0

    const-string v4, "UBSManager"

    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_25

    goto/16 :goto_9f

    .line 259
    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-gt v5, v6, :cond_32

    .line 260
    const-string v0, "Password validation failed: password must be longer than 4 characters"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v2

    .line 265
    :cond_32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 267
    const-string v3, "[1-9]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 268
    const-string v0, "Password validation failed: keypad must be digits 1-9 only"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v2

    .line 271
    :cond_46
    const-string v3, "morse"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 273
    const-string v3, "[01]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 274
    const-string v0, "Password validation failed: morse must be 0s and 1s only"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v2

    .line 282
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password validation passed (type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x1

    return v0

    .line 278
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password validation failed: unknown password type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v2

    .line 255
    :cond_9f
    :goto_9f
    const-string v0, "Password validation failed: empty password"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v2
.end method

.method public lockViewPager()V
    .registers 6

    .line 96
    const-string v0, "Locking ViewPager"

    const-string v1, "UBSManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    .line 100
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ultra_battery_saver_locked"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v0

    .line 104
    const/4 v2, 0x2

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lock(IJ)Z

    move-result v0

    .line 106
    if-nez v0, :cond_2e

    .line 107
    const-string v0, "Failed to lock ViewPager via ViewPagerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 112
    :cond_2e
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ultra_battery_saver_password"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "ultra_battery_saver_password_type"

    const-string v4, "keypad"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 116
    const-string v0, "No password set! Setting default password \'1234\'"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "1234"

    .line 122
    :cond_4f
    invoke-direct {p0, v0, v2}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->setLuaLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public notifyLuaIfLocked()V
    .registers 5

    .line 190
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLocked:Z

    if-eqz v0, :cond_3a

    .line 191
    const-string v0, "UBSManager"

    const-string v1, "MainActivity ready - scheduling Lua notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ultra_battery_saver_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ultra_battery_saver_password_type"

    const-string v3, "keypad"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v0, "1234"

    .line 198
    :cond_27
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;-><init>(Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_3a
    return-void
.end method
