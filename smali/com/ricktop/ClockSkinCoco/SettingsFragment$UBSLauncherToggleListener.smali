.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSLauncherToggleListener;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSLauncherToggleListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

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

    # Get WatchApp context
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    # Get ComponentName for UBSLauncherActivity
    new-instance p2, Landroid/content/ComponentName;

    const-class v1, Lcom/ailife/ClockSkinCoco/UBSLauncherActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    # Get PackageManager
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    # Set component enabled state
    if-eqz p1, :disable_launcher

    # Enable launcher
    const/4 v1, 0x1

    goto :set_state

    :disable_launcher
    # Disable launcher
    const/4 v1, 0x2

    :set_state
    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 p1, 0x1

    return p1
.end method
