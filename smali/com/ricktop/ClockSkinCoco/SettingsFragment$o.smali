.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$o;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$o;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    sget-object v0, Landroid/content/Intent;->ACTION_VIEW:Ljava/lang/String;

    const-string v1, "https://gitlab.com/ailife8881/better-health-tracker/-/releases"
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1

    # Create the Intent with ACTION_VIEW and Uri
    new-instance v2, Landroid/content/Intent;
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    # Add FLAG_ACTIVITY_NEW_TASK
    sget v1, Landroid/content/Intent;->FLAG_ACTIVITY_NEW_TASK:I  # Load the flag value
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    # Start the activity (using the current Activity as Context)
    # Assuming this method is inside an Activity (p0 = "this" Activity instance)
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V


    const/4 v0, 0x1

    return v0
.end method
