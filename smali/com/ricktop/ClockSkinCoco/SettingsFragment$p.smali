.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$p;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$p;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
