.class public Lcom/ricktop/ClockSkinCoco/SettingsActivity;
.super Li/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "modded by AILIFE"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-super {p0, p1}, Li/b;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Launching"

    const-string v0, "Settings"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d0022

    invoke-virtual {p0, p1}, Li/b;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/d;->p()Landroidx/fragment/app/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/v;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;-><init>()V

    const v1, 0x7f0a01ba

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/v;->p(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/v;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/v;->i()I

    # OTA Update Check - Check for updates on startup
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "autoUpdateCheck"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :skip_ota_check

    new-instance p1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    invoke-direct {p1, p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->checkUpdate(Z)V

    :skip_ota_check

    return-void
.end method
