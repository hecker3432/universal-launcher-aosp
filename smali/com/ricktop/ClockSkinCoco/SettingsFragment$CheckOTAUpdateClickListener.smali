.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$CheckOTAUpdateClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckOTAUpdateClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$CheckOTAUpdateClickListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    # Create OTA Manager instance
    new-instance v0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$CheckOTAUpdateClickListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;-><init>(Landroid/content/Context;)V

    # Force check for updates (ignores settings)
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->checkUpdate(Z)V

    # Return true to indicate the click was handled
    const/4 v0, 0x1

    return v0
.end method
