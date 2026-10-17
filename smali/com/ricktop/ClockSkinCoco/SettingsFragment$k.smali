.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$k;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$k;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Lcom/ricktop/ClockSkinCoco/D;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$k;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ricktop/ClockSkinCoco/D;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/D;->e()V

    const/4 p1, 0x1

    return p1
.end method
