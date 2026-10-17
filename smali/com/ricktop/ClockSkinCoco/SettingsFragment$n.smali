.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$n;
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
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/ricktop/ClockSkinCoco/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$n;->b:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$n;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    move-result-object v0

    # Check if the Context is an Activity
    instance-of v1, v0, Landroid/app/Activity;
    if-eqz v1, :cond_1

    # Cast to Activity and finish()
    check-cast v0, Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$n;->a:Landroid/content/SharedPreferences;

    const-string v0, "sp_clock_skin_size_offset"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "0"

    :cond_0
    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->realSetScale(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
