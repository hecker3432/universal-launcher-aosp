.class public Lcom/ailife/ClockSkinCoco/GlobalQsHelper;
.super Ljava/lang/Object;
.source "GlobalQsHelper.java"


# static fields
.field private static final KEY_ENABLED:Ljava/lang/String; = "global_qs_enabled"

.field private static final PREFS_NAME:Ljava/lang/String; = "shared_prefs"

.field private static final REQUEST_CODE_LOCATION_PERMISSION:I = 0x3ea

.field private static final REQUEST_CODE_OVERLAY_PERMISSION:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "GlobalQsHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestPermissionsForSettings(Landroid/content/Context;Landroid/app/Activity;)Z
    .registers 8

    .line 134
    const-string v0, "Checking permissions for settings page"

    const-string v1, "GlobalQsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_41

    .line 138
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 139
    const-string v0, "Requesting overlay permission"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    const/16 p0, 0x3e9

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    return v2

    .line 148
    :cond_41
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasFineLocationPermission(Landroid/content/Context;)Z

    move-result v0

    const/16 v4, 0x3ea

    const/4 v5, 0x1

    if-nez v0, :cond_5d

    .line 149
    const-string p0, "Requesting fine location permission"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_5c

    .line 151
    new-array p0, v5, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v0, p0, v2

    invoke-virtual {p1, p0, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 156
    :cond_5c
    return v2

    .line 160
    :cond_5d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_78

    .line 161
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasBackgroundLocationPermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_78

    .line 162
    const-string p0, "Requesting background location permission"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-array p0, v5, [Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v0, p0, v2

    invoke-virtual {p1, p0, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 167
    return v2

    .line 171
    :cond_78
    const-string p0, "All permissions granted"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v5
.end method

.method public static hasAllPermissions(Landroid/content/Context;)Z
    .registers 6

    .line 215
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasOverlayPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasFineLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 217
    :goto_11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_22

    .line 218
    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasBackgroundLocationPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    move v0, v1

    .line 221
    :cond_22
    return v0
.end method

.method public static hasBackgroundLocationPermission(Landroid/content/Context;)Z
    .registers 4

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_12

    .line 96
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2

    .line 99
    :cond_12
    return v2
.end method

.method public static hasFineLocationPermission(Landroid/content/Context;)Z
    .registers 4

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_12

    .line 107
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2

    .line 110
    :cond_12
    return v2
.end method

.method public static hasOverlayPermission(Landroid/content/Context;)Z
    .registers 3

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 86
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 88
    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 69
    const-string v0, "shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 70
    const-string v0, "global_qs_enabled"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static requestOverlayPermission(Landroid/content/Context;)V
    .registers 4

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_30

    .line 118
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    :cond_30
    return-void
.end method

.method public static restartServiceIfNeeded(Landroid/content/Context;)V
    .registers 7

    .line 183
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 184
    const-string v0, "Service was enabled, checking if it needs restart"

    const-string v1, "GlobalQsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasOverlayPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    .line 188
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasFineLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 190
    :goto_1e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2f

    .line 191
    if-eqz v0, :cond_2d

    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasBackgroundLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    move v0, v2

    .line 194
    :cond_2f
    if-eqz v0, :cond_4e

    .line 195
    const-string v0, "All permissions granted, restarting service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    const-string v1, "com.ailife.ClockSkinCoco.GlobalQsService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4a

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4d

    .line 201
    :cond_4a
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    :goto_4d
    goto :goto_56

    .line 204
    :cond_4e
    const-string v0, "Permissions not granted, cannot restart service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {p0, v3}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->setEnabled(Landroid/content/Context;Z)V

    .line 209
    :cond_56
    :goto_56
    return-void
.end method

.method private static setEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 77
    const-string v0, "shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "global_qs_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    return-void
.end method

.method public static startService(Landroid/content/Context;)Z
    .registers 5

    .line 25
    const-string v0, "Starting GlobalQsService"

    const-string v1, "GlobalQsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1a

    .line 29
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 30
    const-string p0, "No overlay permission"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v3

    .line 36
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2c

    .line 37
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->hasBackgroundLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 38
    const-string p0, "No background location permission"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v3

    .line 43
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v1, "com.ailife.ClockSkinCoco.GlobalQsService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_40

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_43

    .line 48
    :cond_40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    :goto_43
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->setEnabled(Landroid/content/Context;Z)V

    .line 51
    return v0
.end method

.method public static stopService(Landroid/content/Context;)V
    .registers 3

    .line 58
    const-string v0, "GlobalQsHelper"

    const-string v1, "Stopping GlobalQsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v1, "com.ailife.ClockSkinCoco.GlobalQsService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->setEnabled(Landroid/content/Context;Z)V

    .line 63
    return-void
.end method
