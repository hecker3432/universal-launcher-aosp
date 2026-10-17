.class public Lcom/ailife/ClockSkinCoco/UBSLauncherActivity;
.super Landroid/app/Activity;
.source "UBSLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/ToastHelper;->setActivity(Landroid/app/Activity;)V

    .line 18
    # Get UltraBatterySaverManager instance
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object p1

    .line 19
    # Check if password is valid before locking
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isPasswordValid()Z

    move-result v0

    if-nez v0, :password_valid

    .line 20
    # Password invalid - show toast and finish
    const-string v0, "Cannot lock, password invalid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/ToastHelper;->showToast(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UBSLauncherActivity;->finish()V

    return-void

    :password_valid
    .line 22
    # Check if advanced kiosk is enabled
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isAdvancedKioskEnabled()Z

    move-result v0

    if-nez v0, :kiosk_check_done

    # Advanced kiosk disabled - skip accessibility check
    goto :proceed_with_lock

    :kiosk_check_done
    # Advanced kiosk enabled - check accessibility permission
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkAccessibilityPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :accessibility_ok

    # Accessibility not enabled - show toast and finish
    const-string v0, "Enable accessibility service for advanced kiosk protection"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/ToastHelper;->showToast(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UBSLauncherActivity;->finish()V

    return-void

    :accessibility_ok
    :proceed_with_lock
    # Password valid and accessibility OK (if needed) - proceed with locking
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->lockViewPager()V

    .line 24
    # Bring AOD to foreground instead of going home
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/AodManager;->bringToForeground()V

    .line 27
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UBSLauncherActivity;->finish()V

    .line 28
    return-void
.end method
