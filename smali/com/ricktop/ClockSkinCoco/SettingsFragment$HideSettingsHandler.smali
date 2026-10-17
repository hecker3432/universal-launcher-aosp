.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideSettingsHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;

# instance fields
.field final synthetic this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideSettingsHandler;->this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    # Get context
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideSettingsHandler;->this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->h1()Landroid/content/Context;

    move-result-object v0

    # Call SettingsIntegration.onSetPasswordClick
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/hideapps/SettingsIntegration;->onSetPasswordClick(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
