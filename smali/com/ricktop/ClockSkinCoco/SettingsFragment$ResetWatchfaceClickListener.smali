.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$ResetWatchfaceClickListener;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ResetWatchfaceClickListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 5

    # Get current skin name
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->getSkin()Ljava/lang/String;

    move-result-object v4

    # Build the SharedPreferences key: "Lua_memory_<skinname>"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lua_memory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # Get SharedPreferences
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    # Delete the Lua_memory_<skinname> key only
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Clear video frame cache
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->clearAllCache()Z

    # Call __G__FORCERELOAD__ on GL thread to prevent crashes
    # Get MainActivity instance from context
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/MainActivity;->getInstance()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object v2

    if-eqz v2, :skip_reload

    # Create ForceReloadRunnable
    new-instance v3, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ForceReloadRunnable;

    invoke-direct {v3}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ForceReloadRunnable;-><init>()V

    # Call runOnGLThread
    invoke-virtual {v2, v3}, Lcom/ricktop/ClockSkinCoco/MainActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :skip_reload

    # Show toast message
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    const-string v1, "Watchface %s reset successfully"

    # Format the string with the skin name
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    # Finish the settings activity - get context from the preference (p1 parameter)
    # In the a(Landroidx/preference/Preference;)Z method, p1 is the Preference object
    
    invoke-virtual {p1}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    move-result-object v0

    # Check if the Context is an Activity
    instance-of v1, v0, Landroid/app/Activity;
    if-eqz v1, :cond_0

    # Cast to Activity
    check-cast v0, Landroid/app/Activity;

    # Send broadcast to go home
    new-instance v1, Landroid/content/Intent;
    const-string v2, "com.ailife.ClockSkinCoco.GO_HOME"
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    # Now finish the activity
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0

    const/4 p1, 0x1

    return p1
.end method
