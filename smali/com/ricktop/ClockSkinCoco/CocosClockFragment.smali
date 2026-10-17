.class public Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;,
        Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;,
        Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;,
        Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;,
        Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;,
        Lcom/ricktop/ClockSkinCoco/CocosClockFragment$StepsRunnable;
    }
.end annotation


# static fields
.field public static final SP_CLOCK_SKIN_FULLSCREEN:Ljava/lang/String; = "sp_clock_skin_fullscreen"

.field public static final SP_CLOCK_SKIN_HR:Ljava/lang/String; = "sp_clock_skin_hr"

.field public static final SP_CLOCK_SKIN_SORT:Ljava/lang/String; = "sp_clock_skin_sort"

.field public static final SP_CLOCK_SKIN_WEATHER:Ljava/lang/String; = "sp_clock_skin_weather"

.field static p0:Ljava/lang/String; = ""

.field private static final q0:Ljava/lang/String; = "CocosClockFragment"

.field private static r0:I = 0x1

.field private static s0:I = 0x1

.field public static steps:I

.field public static calories:J

.field public static distance:D

.field public static target:I

.field public static heartrate:I

.field public static bloodOxygen:I

.field private static heartRateHandler:Landroid/os/Handler;

.field private static t0:I

.field private static u0:I

.field static needsShaderReloadAfterProcessStart:Z = true


# instance fields
.field private Y:Ljava/lang/String;

.field private Z:Landroid/content/Context;

.field private a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private b0:LZ/c;

.field private c0:[Ljava/lang/String;

.field private d0:Lcom/ricktop/ClockSkinCoco/D;

.field private e0:Landroid/content/BroadcastReceiver;

.field private f0:I

.field private g0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;

.field private h0:Z

.field private i0:Z

.field private j0:J

.field private k0:J

.field private l0:D

.field private m0:I

.field private n0:Ljava/lang/String;

.field private o0:Ljava/lang/String;

.field private v0:Z

.field private w0:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->f0:I

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h0:Z

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->i0:Z

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->v0:Z

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->n0:Ljava/lang/String;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->o0:Ljava/lang/String;

    const-string v0, "Cocos"

    const-string v1, "CocosClockFragment()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->f0:I

    return p0
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->f0:I

    return p1
.end method

.method static synthetic E1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->q0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->X1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G1()I
    .locals 1

    sget v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->s0:I

    return v0
.end method

.method static synthetic H1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h0:Z

    return p0
.end method

.method static synthetic I1()I
    .locals 1

    sget v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->u0:I

    return v0
.end method

.method static synthetic J1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->i2()V

    return-void
.end method

.method static synthetic K1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic M1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lcom/ricktop/ClockSkinCoco/D;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->d0:Lcom/ricktop/ClockSkinCoco/D;

    return-object p0
.end method

.method static synthetic N1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)LZ/c;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    return-object p0
.end method

.method static synthetic O1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->j0:J

    return-wide p1
.end method

.method static synthetic P1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->k0:J

    return-wide v0
.end method

.method static synthetic Q1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)D
    .locals 2

    iget-wide v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->l0:D

    return-wide v0
.end method

.method static synthetic R1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->m0:I

    return p0
.end method

.method static synthetic S1()I
    .locals 3

    # Check if dim mode is enabled
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_dim_mode_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    # Dim mode enabled: return 5
    const/4 v0, 0x5

    return v0

    :cond_0
    # Dim mode disabled: return user's FPS setting
    sget v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->r0:I

    return v0
.end method

.method static synthetic T1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic U1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic V1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->j2()V

    return-void
.end method

.method static synthetic W1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c2()V

    return-void
.end method

.method static synthetic access$getGLSurfaceView(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object p0
.end method

.method private sendMediaKeyEvent(I)V
    .locals 4

    # Helper method to send media key events
    # p1 = keyCode (e.g., KEYCODE_MEDIA_PLAY_PAUSE)

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;
    if-nez v0, :has_context
    return-void

    :has_context
    const-string v1, "audio"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :has_audio_manager
    return-void

    :has_audio_manager
    # Create KeyEvent for ACTION_DOWN
    new-instance v1, Landroid/view/KeyEvent;
    const/4 v2, 0x0
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    # Create KeyEvent for ACTION_UP
    new-instance v1, Landroid/view/KeyEvent;
    const/4 v2, 0x1
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private handleTapAction(Ljava/lang/String;)Z
    .locals 6

    # This method handles new tap actions (volume, media controls, and custom actions)
    # Returns true if action was handled, false to continue with legacy handling

    # Check for volume up
    const-string v0, "vol_up"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_vol_down

    # Handle volume up
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;
    const-string v1, "audio"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/media/AudioManager;
    const/4 v1, 0x3
    const/4 v2, 0x1
    const/4 v3, 0x1
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    const/4 v0, 0x1
    return v0

    :check_vol_down
    const-string v0, "vol_down"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_media_play_pause

    # Handle volume down
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;
    const-string v1, "audio"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/media/AudioManager;
    const/4 v1, 0x3
    const/4 v2, -0x1
    const/4 v3, 0x1
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    const/4 v0, 0x1
    return v0

    :check_media_play_pause
    const-string v0, "media_play_pause"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_media_play
    const/16 v0, 0x55
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->sendMediaKeyEvent(I)V
    const/4 v0, 0x1
    return v0

    :check_media_play
    const-string v0, "media_play"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_media_pause
    const/16 v0, 0x7e
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->sendMediaKeyEvent(I)V
    const/4 v0, 0x1
    return v0

    :check_media_pause
    const-string v0, "media_pause"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_media_next
    const/16 v0, 0x7f
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->sendMediaKeyEvent(I)V
    const/4 v0, 0x1
    return v0

    :check_media_next
    const-string v0, "media_next"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_media_prev
    const/16 v0, 0x57
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->sendMediaKeyEvent(I)V
    const/4 v0, 0x1
    return v0

    :check_media_prev
    const-string v0, "media_prev"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :check_set_alarm
    const/16 v0, 0x58
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->sendMediaKeyEvent(I)V
    const/4 v0, 0x1
    return v0

    :check_set_alarm
    # Check for set_alarm_ prefix
    const-string v0, "set_alarm_"
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :check_custom_actions

    # Extract time from "set_alarm_HH:MM" format
    const/16 v0, 0xa
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0

    # Split time by ":"
    const-string v1, ":"
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0

    # Check if we have 2 parts (hour and minute)
    array-length v1, v0
    const/4 v2, 0x2
    if-eq v1, v2, :parse_time
    # Invalid format, return false
    const/4 v0, 0x0
    return v0

    :parse_time
    :try_start_alarm
    # Parse hour
    const/4 v1, 0x0
    aget-object v1, v0, v1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1

    # Parse minute
    const/4 v2, 0x1
    aget-object v0, v0, v2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0

    # Create SET_ALARM intent
    new-instance v2, Landroid/content/Intent;
    const-string v3, "android.intent.action.SET_ALARM"
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Add hour extra
    const-string v3, "android.intent.extra.alarm.HOUR"
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # Add minute extra
    const-string v1, "android.intent.extra.alarm.MINUTES"
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # Skip UI flag to go directly to alarm app
    const-string v0, "android.intent.extra.alarm.SKIP_UI"
    const/4 v1, 0x0
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    # Set flags
    const/high16 v0, 0x10000000
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    # Start activity
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V

    :try_end_alarm
    .catch Ljava/lang/NumberFormatException; {:try_start_alarm .. :try_end_alarm} :catch_alarm
    .catch Ljava/lang/Exception; {:try_start_alarm .. :try_end_alarm} :catch_alarm

    # Success
    const/4 v0, 0x1
    return v0

    :catch_alarm
    move-exception v0
    # Log error
    const-string v1, "SetAlarm"
    const-string v2, "Failed to parse alarm time"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    # Return false to continue with legacy handling
    const/4 v0, 0x0
    return v0

    :check_custom_actions
    # Check SharedPreferences for custom tap action configuration
    const-string v0, "TapAction"
    const-string v1, "Checking for custom action"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;
    move-result-object v0
    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0

    # Build preference key: "tap_action_" + action name
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "tap_action_"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    # Log the preference key
    const-string v2, "TapAction"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Checking preference key: "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Check if this action has a custom configuration
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    move-result v2

    # Log whether key exists
    const-string v3, "TapAction"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Key exists: "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :has_custom_action
    # Key not found in SharedPreferences
    # Check if this is a "known" action by checking against TAP_ACTIONS array
    sget-object v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTIONS:[Ljava/lang/String;
    array-length v1, v0
    const/4 v2, 0x0
    :loop_check_known
    if-ge v2, v1, :not_known_action
    aget-object v3, v0, v2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :continue_loop
    # This is a known action that's not configured - do nothing
    const-string v0, "TapAction"
    const-string v1, "Known action not configured - doing nothing"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v0, 0x1
    return v0
    :continue_loop
    add-int/lit8 v2, v2, 0x1
    goto :loop_check_known

    :not_known_action
    # Not a known action, return false to continue with legacy handling
    const-string v0, "TapAction"
    const-string v1, "Not a custom or known action, falling through to legacy"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v0, 0x0
    return v0

    :has_custom_action
    # Get the custom action from preferences (format: "package/activity")
    const-string v2, ""
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0

    # Log the value
    const-string v1, "TapAction"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Custom action value: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # If empty string, action is configured but disabled - just return true (handled, do nothing)
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :launch_custom_action
    const-string v0, "TapAction"
    const-string v1, "Action configured but empty - doing nothing"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v0, 0x1
    return v0

    :launch_custom_action
    # Parse package/activity format and launch
    const-string v1, "/"
    const/4 v2, 0x2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v0

    array-length v1, v0
    const/4 v2, 0x2
    if-ge v1, v2, :valid_format
    # Invalid format, return true (handled, but show error)
    const-string v1, "TapAction"
    const-string v2, "Invalid format - less than 2 parts after split"
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;
    if-eqz v0, :return_handled
    const-string v1, "Invalid tap action format"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :return_handled
    const/4 v0, 0x1
    return v0

    :valid_format
    const/4 v1, 0x0
    aget-object v1, v0, v1
    const/4 v2, 0x1
    aget-object v0, v0, v2

    # Log what we're about to launch
    const-string v2, "TapAction"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Launching: "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "/"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h2(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0x1
    return v0
.end method

.method private X1(Ljava/lang/String;)V
    .locals 4

    const-string v0, "LaunchAction"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Check for new action types (volume, media, custom) before existing logic
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->handleTapAction(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :continue_legacy_actions
    # Action was handled by new handler, return
    return-void

    :continue_legacy_actions
    # Continue with existing legacy action handling
    # Note: voice_search, w_agenda, and widget_health are now handled via SharedPreferences
    :try_start_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "com.google.android.apps.wearable.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V

    goto :goto_3

    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v3, :cond_4

    aget-object p1, v0, v2

    aget-object v0, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V

    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz p1, :goto_3

    const-string v0, "This application is not available on your device"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :catch_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz p1, :goto_3

    const-string v0, "This application is not available on your device"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method

.method private Z1(Landroid/content/Context;)I
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_19

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    move-result-object p1
    goto :registerReceiver_done_compat_19

    :old_api_registerReceiver_compat_19
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    move-result-object p1

    :registerReceiver_done_compat_19

    if-nez p1, :cond_0

    const/16 p1, 0x32

    return p1

    :cond_0
    const-string v0, "level"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    const-string v2, "scale"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method

.method private a2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LZ/c;->g(I)LZ/c$c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->n0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    invoke-virtual {v2, v1}, LZ/c;->g(I)LZ/c$c;

    move-result-object v1

    iget v1, v1, LZ/c$c;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private b2()V
    .locals 7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e0:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0

    new-instance v0, Lcom/ricktop/ClockSkinCoco/D;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/D;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->d0:Lcom/ricktop/ClockSkinCoco/D;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "watch_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    sput v3, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->t0:I

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->t0:I

    :goto_0
    const-string v1, "watch_path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-nez v1, :cond_3

    sput-object v4, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sput-object v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    :goto_1
    const-string v1, "sp_clock_skin_display"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x19

    if-nez v1, :cond_4

    sput v5, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->r0:I

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->r0:I

    :goto_2
    const-string v1, "sp_clock_skin_sort"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    if-nez v1, :cond_5

    sput v5, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->s0:I

    goto :goto_3

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->s0:I

    :goto_3
    const-string v1, "sp_clock_skin_hr"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h0:Z

    goto :goto_4

    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h0:Z

    :goto_4
    const-string v1, "sp_clock_skin_fullscreen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    sput v3, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->u0:I

    goto :goto_5

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->u0:I

    :goto_5
    const-string v1, "sp_clock_skin_weather"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    goto :goto_6

    :cond_8
    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    :goto_6
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->d0:Lcom/ricktop/ClockSkinCoco/D;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/D;->f()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    if-nez v0, :cond_9

    new-instance v0, LZ/c;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, LZ/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    :cond_9
    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    invoke-direct {v0, p0, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e0:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ricktop.ClockSkinCoco.WEATHER.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.INIT.WATCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.LAUNCH.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.SET.SCALE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.SET.SKIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.UPDATE.WEATHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ricktop.ClockSkinCoco.SCREENTOUCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e0:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v6, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v6, :old_api_registerReceiver_compat_20

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_20

    :old_api_registerReceiver_compat_20
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_20

    :cond_a

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-static {v1}, Lcom/ailife/healthapi/healthapi;->init(Landroid/content/Context;)V

    return-void
.end method

.method private c2()V
    .locals 21


    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2, v1}, LZ/c;->k(Ljava/lang/String;Z)Z

    :cond_1
    iget-object v0, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_2

    const-string v4, "`"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c0:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "``"

    const-string v5, "`0`"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-direct {v14, v2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z1(Landroid/content/Context;)I

    move-result v9

    iget-object v2, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-direct {v14, v2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->d2(Landroid/content/Context;)Z

    move-result v10

    iget-object v2, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-static {v2}, Lcom/ailife/healthapi/healthapi;->getData(Landroid/content/Context;)V

    sget v2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->heartrate:I

    if-nez v2, :cond_3

    iget-object v2, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "last_heart_rate"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "heart_rate"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :cond_3
    move v7, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "24H"

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_4
    const-string v0, "12H"

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "doublePressAction"

    const-string v13, "4"

    invoke-interface {v2, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d1

    const/4 v4, 0x1

    goto :goto_d1

    :cond_d1
    const/4 v4, 0x0

    :goto_d1

    const-string v13, "3"

    const-string v0, "longPressAction"

    invoke-interface {v2, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d2

    const/4 v5, 0x1

    goto :cond0

    :cond_d2
    const/4 v5, 0x0

    :cond0
    new-instance v0, LZ/a;

    invoke-direct {v0}, LZ/a;-><init>()V

    invoke-virtual {v0}, LZ/a;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y1()V

    # Get notification count from com.ricktop.ClockSkinCoco.r.length()
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->length()I

    move-result v11

    # Missed calls feature removed - app does not have permission
    # Always return 0 for missed calls count
    const/4 v12, 0x0

    :goto_c
    const-string v0, "alwayson"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v2

    if-eqz v2, :cond_a

    const/16 v2, 0x80

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_d

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_a
    :goto_d
    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v14, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->j0:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1388

    cmp-long v17, v2, v0

    if-lez v17, :cond_b

    const/4 v15, 0x1

    goto :goto_e

    :cond_b
    const/4 v15, 0x0

    :goto_e
    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v4

    move v4, v5

    move v5, v15

    invoke-direct/range {v1 .. v13}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;ZZZLjava/lang/String;ILjava/lang/String;IZIILjava/lang/String;)V

    invoke-virtual {v14, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d2(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_21

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    move-result-object p1
    goto :registerReceiver_done_compat_21

    :old_api_registerReceiver_compat_21
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    move-result-object p1

    :registerReceiver_done_compat_21

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "plugged"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getDays()Ljava/lang/String;
    .locals 13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v10

    invoke-static {v10}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v5, "weatherAutoLanguage"

    const/4 v4, 0x0

    invoke-interface {v10, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "en"

    const-string v5, "US"

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rsub-int/lit8 v4, v0, 0x2

    const v5, 0x5265c00

    mul-int v4, v4, v5

    int-to-long v6, v4

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    rsub-int/lit8 v6, v0, 0x3

    mul-int v6, v6, v5

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    rsub-int/lit8 v7, v0, 0x4

    mul-int v7, v7, v5

    int-to-long v7, v7

    add-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    rsub-int/lit8 v8, v0, 0x5

    mul-int v8, v8, v5

    int-to-long v8, v8

    add-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    rsub-int/lit8 v9, v0, 0x6

    mul-int v9, v9, v5

    int-to-long v9, v9

    add-long/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    rsub-int/lit8 v10, v0, 0x7

    mul-int v10, v10, v5

    int-to-long v10, v10

    add-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    rsub-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v5

    int-to-long v11, v0

    add-long/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dayList = {\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeartRateHandler()Landroid/os/Handler;
    .locals 2

    # Check if Handler is already initialized
    sget-object v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->heartRateHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    # Initialize Handler with main looper
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->heartRateHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->heartRateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getFullscreen()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->u0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonths()Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "monthList = {"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v8

    invoke-static {v8}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v6, "weatherAutoLanguage"

    const/4 v7, 0x0

    invoke-interface {v8, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v6, "en"

    const-string v7, "US"

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4


    const-string v6, "%tB"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\',"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/WatchApp;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getSkin()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ClockSkin/default.watch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default.watch"

    return-object v0

    :cond_0
    sget-object v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    return-object v0
.end method

.method private h2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p2, "This application is not available on your device"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string p2, "This application is not available on your device"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private i2()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    # Check if watchface selector 2.0 is enabled
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useWatchfaceSelector2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    # Create intent
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    # Choose activity based on preference
    if-eqz v0, :use_old_selector

    # Use WatchFaceSelectionActivity (2.0)
    const-class v3, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :start_activity

    :use_old_selector
    # Use ClockSelectActivity (1.0)
    const-class v3, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->t0:I

    add-int/lit8 v0, v0, -0x1

    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :start_activity
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->y1(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static initWatch()V
    .locals 2

    const-string v0, "StaticReceiver"

    const-string v1, "initWatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.INIT.WATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private j2()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, LZ/c;->i()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LZ/c;->g(I)LZ/c$c;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, v3, LZ/c$c;->h:Ljava/lang/String;

    iget-object v6, v3, LZ/c$c;->i:Ljava/lang/String;

    iget v7, v3, LZ/c$c;->d:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    iget v8, v3, LZ/c$c;->e:F

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    iget v9, v3, LZ/c$c;->f:F

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    iget v10, v3, LZ/c$c;->g:F

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, LZ/c$c;->k:Ljava/lang/String;

    iget-object v12, v3, LZ/c$c;->l:Ljava/lang/String;

    iget v3, v3, LZ/c$c;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v11, "45.00"

    const-string v5, "-"

    const-string v7, "0"

    move-object v6, v5

    move-object v3, v7

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v12, v11

    :goto_0
    # Start loop at index 1 to skip current weather at index 0
    # New weather system stores: index 0=current, indices 1-6=forecast
    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x7

    const-string v15, "`"

    if-ge v13, v14, :cond_3

    iget-object v14, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    invoke-virtual {v14, v13}, LZ/c;->g(I)LZ/c$c;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, LZ/c$c;->a:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, LZ/c$c;->b:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, LZ/c$c;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v14, LZ/c$c;->m:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v4, "`0`0`-`1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->n0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LZ/c;->g(I)LZ/c$c;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v4, v4, LZ/c$c;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    const-string v4, "0"

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LZ/c;->g(I)LZ/c$c;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v4, v4, LZ/c$c;->p:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_6
    const-string v4, "0"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b0:LZ/c;

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LZ/c;->g(I)LZ/c$c;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-wide v4, v4, LZ/c$c;->q:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_7
    const-string v4, "0"

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->o0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->n0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sp_clock_skin_weather"

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const-string v2, "Weather updated"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c2()V

    return-void
.end method

.method public static launchAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LUA->java launchAction"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Check ViewPagerManager state first
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->isLocked()Z

    move-result v1

    if-eqz v1, :check_aod_tap_block

    # ViewPager is locked - block tap action
    return-void

    :check_aod_tap_block
    # Check if tap actions should be blocked (AOD manager)
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->shouldBlockTapAction()Z

    move-result v0

    if-eqz v0, :continue_launch

    # Tap action blocked, return early
    const-string v0, "LUA->java launchAction"

    const-string v1, "Tap action blocked - disabled in AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :continue_launch
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.LAUNCH.ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static loadMemory()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lua_memory_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LUA->java"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static executeGestureAction(ILjava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 5

    # Add vibration (300ms)
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_vibrate_done

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_vibrate_done

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.ricktop.ClockSkinCoco.SET.SCALE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_1
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.ricktop.ClockSkinCoco.SET.SKIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :pswitch_2
    # Manual lock/unlock viewpager via ViewPagerManager
    const-string p0, "viewpagerLocked"

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Get ViewPagerManager and use it to lock/unlock (use v2 for Context)
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    if-nez v2, :has_context

    goto :cond_3

    :has_context
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v3

    if-eqz v0, :manual_unlock

    # Lock with SOURCE_MANUAL (3)
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lock(I)Z

    goto :cond_3

    :manual_unlock
    # Unlock with SOURCE_MANUAL (3)
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->unlock(I)Z

    :cond_3
    # Skip old toast code - ViewPagerManager handles it now
    return-void

    :pswitch_3
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.ricktop.ClockSkinCoco.LOCK"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static runSetScale(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DoublePress"

    const-string v1, "Double press triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Check ViewPagerManager state first
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->isLockedByUBS()Z

    move-result v1

    if-eqz v1, :check_aod_lock

    # Locked by UBS - double press has no effect
    return-void

    :check_aod_lock
    # Check if locked by AOD
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->isViewPagerLocked()Z

    move-result v1

    if-eqz v1, :normal_double_press

    # ViewPager is locked by AOD, unlock it for one time
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->unlockViewPagerOnce()V

    return-void

    :normal_double_press
    # Continue with normal double-press action
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "doublePressAction"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->executeGestureAction(ILjava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static realSetScale(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.SET.SCALE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "scale"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.GO_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static runSetSkin()V
    .locals 4

    const-string v0, "LongPress"

    const-string v1, "Long press triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_clock_skin_size_offset"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "longPressAction"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->executeGestureAction(ILjava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static realSetSkin()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.SET.SKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static saveMemory(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lua_memory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LUA->java saveMemory"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateWeather()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.UPDATE.WEATHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->i0:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->i0:Z

    # Check if GLSurfaceView exists
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-nez v0, :glview_exists

    # No GLSurfaceView yet, just call regular Cocos2dxHelper resume
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    return-void

    :glview_exists
    # Post a delayed runnable to ensure the view is properly laid out
    new-instance v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$2;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$2;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    # Store the visibility state
    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->v0:Z

    const-string v0, "CocosClockFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # If becoming visible and fragment is resumed, resume the GLSurfaceView
    if-eqz p1, :cond_visible_end

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->i0:Z

    if-nez v0, :cond_visible_end

    # Fragment is resumed but GLSurfaceView wasn't started yet, start it now
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_visible_end

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :cond_visible_end

    # Post a delayed runnable to ensure the view is properly laid out
    new-instance v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$1;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$1;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    # Restart text animations when fragment becomes visible
    new-instance v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_visible_end
    # If becoming invisible, pause the GLSurfaceView
    if-nez p1, :cond_invisible_end

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :cond_invisible_end

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    :cond_invisible_end
    return-void
.end method

.method public Y1()V
    .locals 8

    const-wide v2, 0x3fe3e2456f75d9a1L

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "steps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " target%:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->steps:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    sget v3, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->target:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->calories:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steps"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$a;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    invoke-virtual {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cocos"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b2()V

    :cond_0
    return-void
.end method

.method public e2(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "CocosClockFragment"

    const-string v1, "e2() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :cond_0

    const-string v1, "CocosClockFragment"

    const-string v1, "a0 is not null, queuing event"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "CocosClockFragment"

    const-string v1, "a0 is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseGLRendering()V
    .locals 2

    const-string v0, "CocosClockFragment"

    const-string v1, "pauseGLRendering() - pausing GL thread before reload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    const-string v0, "CocosClockFragment"

    const-string v1, "GL rendering paused successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "CocosClockFragment"

    const-string v1, "Cannot pause - GL view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f0(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->f0(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cocos"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttach() really"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->setActivity(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/ToastHelper;->setActivity(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b2()V

    :cond_0
    return-void
.end method

.method public f2(IIZI)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    sput p1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->r0:I

    :cond_0
    sput p2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->s0:I

    iput-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h0:Z

    sput p4, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->u0:I

    return-void
.end method

.method public setDark(I)V
    .locals 1

    sput p1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->r0:I

    return-void
.end method

.method public updateDisplay()V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c2()V

    return-void
.end method

.method public setFullScreen(I)V
    .locals 3

    sput p1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->u0:I

    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$f;

    invoke-direct {v0, p0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$f;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;I)V

    invoke-virtual {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->h0:Z

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    # Setup GestureDetector for long press detection
    # Create the gesture listener
    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;)V

    # Create the GestureDetector
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    # Store the GestureDetector
    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->w0:Landroid/view/GestureDetector;

    # Create the OnTouchListener
    new-instance v2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Landroid/view/GestureDetector;Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;)V

    # Set the OnTouchListener on the Cocos view
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "GestureDetector"

    const-string v1, "Long press GestureDetector initialized for Cocos view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Z:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {v0}, Lcom/ailife/healthapi/healthapi;->destroy(Landroid/content/Context;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StaticReceiver"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public y0()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->i0:Z

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->a0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    :cond_1
    return-void
.end method


.method public updateHeart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->heartrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeartRate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e$a;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    invoke-virtual {p0, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateBloodOxygen()V
    .locals 3

    const-string v0, "BloodOxygen"

    const-string v1, "Static updateBloodOxygen() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->bloodOxygen:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__G__SETBLOODOXYGEN__"

    invoke-static {v2, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Lua bridge call completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
