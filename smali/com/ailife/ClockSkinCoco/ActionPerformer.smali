.class public Lcom/ailife/ClockSkinCoco/ActionPerformer;
.super Landroid/accessibilityservice/AccessibilityService;
.source "ActionPerformer.java"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;

.field globalQsActive:Z

.field private statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private notificationShadeDesc:Ljava/lang/String;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->globalQsActive:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    # Check if this is a window state change event
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :window_state_changed

    return-void

    :window_state_changed
    # Get package name
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :has_package

    return-void

    :has_package
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # Check UBS advanced kiosk protection first
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLockedWithKiosk()Z

    move-result v1

    if-eqz v1, :check_global_qs

    # UBS is locked with advanced kiosk - check if package is not our launcher
    const-string v1, "com.ailife.ClockSkinCoco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :check_global_qs

    # Another app is launching - bring launcher to foreground
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v1

    if-eqz v1, :check_global_qs

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/AodManager;->bringToForeground()V

    :check_global_qs
    # Check Hide Apps feature - block hidden apps from launching
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isAppHidden(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :check_global_qs_settings

    # Hidden app detected - check if advanced kiosk protection is enabled
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hide_apps_advanced_kiosk"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :bring_launcher_to_foreground

    goto :check_global_qs_settings

    :bring_launcher_to_foreground
    # Advanced kiosk protection enabled - bring launcher to foreground
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v1

    if-eqz v1, :check_global_qs_settings

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/AodManager;->bringToForeground()V

    :check_global_qs_settings
    # Check if UBS is locked - if so, always close QS even if globalQS is off
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isLockedWithKiosk()Z

    move-result v1

    if-eqz v1, :check_global_qs_enabled

    # UBS is locked - skip globalQS check and proceed to close QS
    goto :check_systemui_package

    :check_global_qs_enabled
    # Check if global QS feature is enabled in settings
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "global_qs_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :check_systemui_package

    return-void

    :check_systemui_package

    const/4 v3, 0x0
    # Check if package is com.android.systemui
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :check_text

    return-void

    :check_text
    # Check if accessibility text matches notification shade description
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :has_text

    return-void

    :has_text
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :check_desc

    return-void

    :check_desc
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->notificationShadeDesc:Ljava/lang/String;

    if-nez v1, :has_desc

    return-void

    :has_desc
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :collapse_system_qs

    return-void

    :collapse_system_qs
    # Log detection
    const-string v0, "ActionPerformer"

    const-string v1, "Notification shade detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Immediately trigger custom QS
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.TRIGGER_GLOBAL_QS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->sendBroadcast(Landroid/content/Intent;)V

    # Now collapse system QS using IStatusBarService
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :use_statusbar_service

    # Fallback: use broadcast intent or performGlobalAction
    :use_fallback
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :use_broadcast_intent_delayed

    # Android 12+ (API 31+): use GLOBAL_ACTION_DISMISS_NOTIFICATION_SHADE (no delay needed)
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->performGlobalAction(I)Z

    return-void

    :use_broadcast_intent_delayed
    # Android < 12: send CLOSE_SYSTEM_DIALOGS broadcast with delay
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ailife/ClockSkinCoco/ActionPerformer$2;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/ActionPerformer$2;-><init>(Lcom/ailife/ClockSkinCoco/ActionPerformer;)V

    const-wide/16 v2, 0x64  # 100ms delay for broadcast

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :use_statusbar_service
    # Check Android version to use appropriate method (no delay needed)
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c  # API 28 (Android 9)

    if-lt v1, v2, :use_animate_collapse

    # Android 9+: Try collapsePanels()
    :try_collapse_start
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_collapse_end

    .catch Ljava/lang/Throwable; {:try_collapse_start .. :try_collapse_end} :catch_collapse

    return-void

    :use_animate_collapse
    # Android 8.1-8: Use animateCollapsePanels() - more reliable on older versions
    :try_animate_start
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->animateCollapsePanels()V
    :try_animate_end

    .catch Ljava/lang/Throwable; {:try_animate_start .. :try_animate_end} :catch_collapse

    return-void

    :catch_collapse
    # If IStatusBarService fails, use fallback
    const-string v1, "ActionPerformer"
    const-string v2, "IStatusBarService failed, using fallback method"
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :use_fallback
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public onServiceConnected()V
    .locals 5

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    new-instance v0, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/ActionPerformer$1;-><init>(Lcom/ailife/ClockSkinCoco/ActionPerformer;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ailife.ClockSkinCoco.RECENTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ailife.ClockSkinCoco.POWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ailife.ClockSkinCoco.GLOBAL_QS_EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ailife.ClockSkinCoco.GLOBAL_QS_COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_13

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v1, v0, v2}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_13

    :old_api_registerReceiver_compat_13
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v1, v0}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_13

    # Get IStatusBarService
    :try_get_statusbar_start
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_get_statusbar_end

    .catch Ljava/lang/Throwable; {:try_get_statusbar_start .. :try_get_statusbar_end} :catch_statusbar

    :catch_statusbar

    # Get notification shade description from SystemUI resources
    :try_get_desc_start
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/ActionPerformer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "accessibility_desc_notification_shade"

    const-string v2, "string"

    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->notificationShadeDesc:Ljava/lang/String;
    :try_get_desc_end

    .catch Ljava/lang/Exception; {:try_get_desc_start .. :try_get_desc_end} :catch_desc

    goto :desc_done

    :catch_desc
    # Fallback to default description
    const-string v0, "Notification shade."

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ActionPerformer;->notificationShadeDesc:Ljava/lang/String;

    :desc_done

    return-void
.end method
