.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$s;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$s;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$s;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->checkCalendarPermission(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
