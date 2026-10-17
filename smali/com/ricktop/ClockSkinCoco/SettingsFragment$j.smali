.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;
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
.field final synthetic a:Landroidx/preference/ListPreference;

.field final synthetic b:[Ljava/lang/CharSequence;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;Landroidx/preference/ListPreference;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;->c:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;->a:Landroidx/preference/ListPreference;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;->b:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;->a:Landroidx/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->I0(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->t0(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->M(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
