.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HealthCheckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;->this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_allow

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;->this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->isBetterHealthInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_allow

    const-string p1, "Better Health app is not installed. Please install it first."

    const/4 p2, 0x1

    invoke-static {v2, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_allow
    const/4 p1, 0x1

    return p1
.end method
