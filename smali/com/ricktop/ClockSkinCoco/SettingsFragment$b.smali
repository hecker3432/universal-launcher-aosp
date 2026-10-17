.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110098

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110032

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b$b;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;)V

    const v1, 0x1040013

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b$a;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;)V

    const v1, 0x1040009

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
