.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$GlobalQsChangeListener;
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
    name = "GlobalQsChangeListener"
.end annotation

# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$GlobalQsChangeListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    # Cast newValue to Boolean
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # Get context from fragment
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$GlobalQsChangeListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object p1

    # Cast context to activity
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    # Check if enabling or disabling
    if-eqz v0, :disable_service

    # User wants to enable - check and request permissions
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->checkAndRequestPermissionsForSettings(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :permissions_not_granted

    # All permissions granted, start service
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->startService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :start_failed

    # Service started successfully
    const-string v0, "GlobalQsHelper"

    const-string v1, "Global QS service started successfully from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :start_failed
    # Failed to start service
    const-string v0, "GlobalQsHelper"

    const-string v1, "Failed to start Global QS service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to start service"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    return v0

    :permissions_not_granted
    # Permissions not granted yet
    const-string v0, "GlobalQsHelper"

    const-string v1, "Permissions requested, user needs to grant them"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Please grant the required permissions"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Return false to prevent toggle
    const/4 v0, 0x0

    return v0

    :disable_service
    # User wants to disable
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/GlobalQsHelper;->stopService(Landroid/content/Context;)V

    const-string p1, "GlobalQsHelper"

    const-string p2, "Global QS service stopped from settings"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
