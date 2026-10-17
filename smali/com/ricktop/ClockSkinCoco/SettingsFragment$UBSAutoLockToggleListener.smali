.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSAutoLockToggleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/SettingsFragment;->K1(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSAutoLockToggleListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    # Cast newValue to Boolean
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    # Only validate if enabling (not disabling)
    if-nez p1, :allow_change

    # Disabling - always allow
    const/4 p1, 0x1

    return p1

    :allow_change
    # Enabling auto-lock - validate password and permissions

    # Get context
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSAutoLockToggleListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    # Get UltraBatterySaverManager
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object p1

    # Check password validity
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isPasswordValid()Z

    move-result p2

    if-eqz p2, :password_invalid

    # Password valid - check if advanced kiosk is enabled
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->isAdvancedKioskEnabled()Z

    move-result p1

    if-nez p1, :check_accessibility

    # Advanced kiosk disabled - no accessibility check needed
    const/4 p1, 0x1

    return p1

    :check_accessibility
    # Advanced kiosk enabled - check accessibility permission
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkAccessibilityPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :accessibility_ok

    # Accessibility not enabled - show toast and deny
    const-string v1, "Enable accessibility service for advanced kiosk protection"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :accessibility_ok
    # All checks passed
    const/4 p1, 0x1

    return p1

    :password_invalid
    # Password invalid - show toast and deny
    const-string v1, "Cannot enable auto-lock, password invalid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method
