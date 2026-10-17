.class public Lcom/ailife/ClockSkinCoco/hideapps/SettingsIntegration;
.super Ljava/lang/Object;
.source "SettingsIntegration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onRemovePasswordClick(Landroid/content/Context;)Z
    .registers 3

    .line 45
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object v0

    .line 46
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setPassword(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->lockSettings()V

    .line 48
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->saveConfiguration()V

    .line 50
    const-string v0, "Password removed. Settings will reappear on next launch."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 53
    return v1
.end method

.method public static onSelectHiddenAppsClick(Landroid/content/Context;)Z
    .registers 3

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    const/4 p0, 0x1

    return p0
.end method

.method public static onSetPasswordClick(Landroid/content/Context;)Z
    .registers 4

    .line 27
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getHiddenPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_21

    .line 36
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return v2

    .line 30
    :cond_21
    :goto_21
    const-string v0, "Please select hidden apps first"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 33
    return v2
.end method

.method public static shouldShowHideAppsCategory(Landroid/content/Context;)Z
    .registers 2

    .line 61
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isPasswordProtected()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isSettingsUnlocked()Z

    move-result p0

    if-nez p0, :cond_12

    .line 65
    const/4 p0, 0x0

    return p0

    .line 68
    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldShowRemovePassword(Landroid/content/Context;)Z
    .registers 1

    .line 83
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isPasswordProtected()Z

    move-result p0

    return p0
.end method

.method public static shouldShowSetPassword(Landroid/content/Context;)Z
    .registers 1

    .line 75
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isPasswordProtected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
