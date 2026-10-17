.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$RoundScreenBlocker;
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
    name = "RoundScreenBlocker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$RoundScreenBlocker;->this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    # Check if screen is round
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$RoundScreenBlocker;->this$0:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_allow

    # Screen is round, show toast and return false
    const-string p1, "Not available on round displays"

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_allow
    # Screen is not round, allow the change
    const/4 p1, 0x1

    return p1
.end method
