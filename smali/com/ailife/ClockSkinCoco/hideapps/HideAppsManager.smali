.class public Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;
.super Ljava/lang/Object;
.source "HideAppsManager.java"


# static fields
.field private static final DIALER_PACKAGES:[Ljava/lang/String;

.field private static final KEY_CONFIG:Ljava/lang/String; = "hidden_apps_config"

.field public static final MODE_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final MODE_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final PREFS_NAME:Ljava/lang/String; = "com.ailife.ClockSkinCoco_preferences"

.field private static final TAG:Ljava/lang/String; = "HideAppsManager"

.field private static instance:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;


# instance fields
.field private context:Landroid/content/Context;

.field private enabled:Z

.field private hiddenPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordProtected:Z

.field private settingsUnlocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.dialer"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.android.dialer"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.contacts"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.dialer"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.huawei.contacts"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->DIALER_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->context:Landroid/content/Context;

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    .line 55
    const-string p1, "blacklist"

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    .line 56
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    .line 57
    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    .line 59
    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    .line 60
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->loadConfiguration()V

    .line 61
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;
    .registers 3

    const-class v0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->instance:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    if-nez v1, :cond_e

    .line 65
    new-instance v1, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->instance:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    .line 67
    :cond_e
    sget-object p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->instance:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 63
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private loadConfiguration()V
    .registers 6

    .line 289
    const-string v0, "HideAppsManager"

    :try_start_2
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->context:Landroid/content/Context;

    const-string v2, "com.ailife.ClockSkinCoco_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 290
    const-string v2, "hidden_apps_config"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    if-nez v1, :cond_1a

    .line 293
    const-string v1, "No saved configuration found, using defaults"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 297
    :cond_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v1, "enabled"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    .line 299
    const-string v1, "mode"

    const-string v4, "blacklist"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    .line 300
    const-string v1, "passwordProtected"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    .line 301
    const-string v1, "password"

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    .line 302
    iput-boolean v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    .line 304
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 305
    const-string v1, "hiddenPackages"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_65

    .line 307
    nop

    :goto_53
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_65

    .line 308
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 312
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hidden packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_87} :catch_88

    .line 315
    goto :goto_a3

    .line 313
    :catch_88
    move-exception v1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_a3
    return-void
.end method


# virtual methods
.method public addHiddenApp(Ljava/lang/String;)V
    .registers 3

    .line 124
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isDialerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 125
    const-string p1, "HideAppsManager"

    const-string v0, "Cannot hide dialer app when password is protected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 128
    :cond_12
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public clearConfiguration()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->context:Landroid/content/Context;

    const-string v1, "com.ailife.ClockSkinCoco_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden_apps_config"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    iput-boolean v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    .line 326
    const-string v0, "blacklist"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 328
    iput-boolean v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    .line 329
    const-string v0, ""

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    .line 330
    iput-boolean v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    .line 332
    const-string v0, "HideAppsManager"

    const-string v1, "Configuration cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method public getHiddenPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public isAppHidden(Ljava/lang/String;)Z
    .registers 4

    .line 74
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 75
    return v1

    .line 79
    :cond_6
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isDialerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    return v1

    .line 83
    :cond_11
    const-string v0, "blacklist"

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 85
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 88
    :cond_22
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isDialerApp(Ljava/lang/String;)Z
    .registers 8

    .line 96
    sget-object v0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->DIALER_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x1

    if-ge v3, v1, :cond_14

    aget-object v5, v0, v3

    .line 97
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 98
    return v4

    .line 96
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 104
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 108
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_42

    if-eqz v1, :cond_40

    .line 109
    return v4

    .line 111
    :cond_40
    goto :goto_29

    .line 114
    :cond_41
    goto :goto_5f

    .line 112
    :catch_42
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error checking dialer app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HideAppsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_5f
    return v2
.end method

.method public isEnabled()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    return v0
.end method

.method public isPasswordProtected()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    return v0
.end method

.method public isSettingsUnlocked()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    return v0
.end method

.method public lockSettings()V
    .registers 2

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    .line 238
    return-void
.end method

.method public removeHiddenApp(Ljava/lang/String;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public saveConfiguration()V
    .registers 7

    .line 262
    const-string v0, "HideAppsManager"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 264
    const-string v2, "mode"

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v2, "passwordProtected"

    iget-boolean v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    const-string v2, "password"

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v2, "settingsUnlocked"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 269
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 270
    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 271
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 272
    goto :goto_34

    .line 273
    :cond_44
    const-string v4, "hiddenPackages"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->context:Landroid/content/Context;

    const-string v4, "com.ailife.ClockSkinCoco_preferences"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 276
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "hidden_apps_config"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7c} :catch_7d

    .line 281
    goto :goto_98

    .line 279
    :catch_7d
    move-exception v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_98
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->enabled:Z

    .line 184
    return-void
.end method

.method public setHiddenPackages(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    .line 144
    iget-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    if-eqz p1, :cond_46

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isDialerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 147
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->hiddenPackages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed dialer app from hidden list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HideAppsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_45
    goto :goto_16

    .line 152
    :cond_46
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 4

    .line 165
    const-string v0, "blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "whitelist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 168
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HideAppsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 166
    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->mode:Ljava/lang/String;

    .line 170
    :goto_2c
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 4

    .line 204
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_12

    .line 209
    :cond_a
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    .line 210
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    .line 211
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    goto :goto_1a

    .line 205
    :cond_12
    :goto_12
    const-string p1, ""

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    .line 206
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    .line 207
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    .line 213
    :goto_1a
    return-void
.end method

.method public shouldShowSettings()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    if-nez v0, :cond_6

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_6
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    return v0
.end method

.method public unlockSettings()V
    .registers 2

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->settingsUnlocked:Z

    .line 231
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .registers 3

    .line 219
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->passwordProtected:Z

    if-nez v0, :cond_6

    .line 220
    const/4 p1, 0x1

    return p1

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
