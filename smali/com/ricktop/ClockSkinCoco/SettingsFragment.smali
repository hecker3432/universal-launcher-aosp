.class public Lcom/ricktop/ClockSkinCoco/SettingsFragment;
.super Landroidx/preference/d;
.source "SourceFile"


# static fields
.field private static h0:Z = true

.field private static i0:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/d;-><init>()V

    return-void
.end method

.method static synthetic T1()Z
    .locals 1

    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->h0:Z

    return v0
.end method

.method static synthetic U1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->h0:Z

    return p0
.end method

.method static synthetic V1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->i0:Z

    return p0
.end method

.method public static W1()Z
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Skin_Weather_Temp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->h0:Z

    :cond_0
    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->h0:Z

    return v0
.end method

.method public static X1()Z
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Skin_Distance_Unit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->i0:Z

    :cond_0
    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->i0:Z

    return v0
.end method

.method public static isBetterHealthInstalled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.ailife.betterhealth"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public K1(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    const p1, 0x7f140001

    invoke-virtual {p0, p1}, Landroidx/preference/d;->C1(I)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0
    
    const-string p2, "sp_launcher_appstyle"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "2"

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->J0()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object p2, v2, p2

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->t0(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;

    invoke-direct {p2, p0, v0, v2}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$j;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;Landroidx/preference/ListPreference;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_3
    const-string p2, "launchSetting"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$k;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$k;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_4
    const-string p2, "getWatchFace"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$l;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$l;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_5
    const-string p2, "setskin"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$m;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$m;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_6
    # Set change listener for watchface selector 2.0 to block on round displays
    const-string p2, "useWatchfaceSelector2"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_6a

    # Create and set the round screen blocker listener
    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$RoundScreenBlocker;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$RoundScreenBlocker;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_6a
    const-string p2, "skinprefs"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$n;

    invoke-direct {v0, p0, p1}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$n;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_7
    const-string p2, "resetWatchface"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_reset

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ResetWatchfaceClickListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ResetWatchfaceClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_reset
    const-string p2, "download_betterhealth"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$o;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$o;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_8
    const-string p2, "bugReport"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_g

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$q;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$q;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_g
    const-string p2, "shareCrashReport"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_share_crash

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ShareCrashReportClickListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ShareCrashReportClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_share_crash
    const-string p2, "backup"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_h

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$r;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$r;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_h
    const-string p2, "import_clockskin"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_import

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ImportClockSkinClickListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ImportClockSkinClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_import
    const-string p2, "restart"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$p;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$p;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_9
    const-string p2, "google_Widget"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$a;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_a
    const-string p2, "exit"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$b;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_b
    const-string p2, "uninstall"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$c;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_c
    const-string p2, "force_stop_launcher"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_c0

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ForceStopLauncherClickListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ForceStopLauncherClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_c0
    const-string p2, "crash_launcher"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_d

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$t;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$t;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_d
    const-string p2, "checkUpdateNow"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_d1_ota

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$CheckOTAUpdateClickListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$CheckOTAUpdateClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_d1_ota
    const-string p2, "edit_tap_action"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_d2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$TapActionEditor;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$TapActionEditor;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_d2
    const-string p2, "sendWatchFace"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_e_new

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$d;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$d;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_e_new
    const-string p2, "editGallery"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_e2_new

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$GalleryClickListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$GalleryClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_e2_new
    const-string p2, "app_dpi_override"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_f_new

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$e;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$e;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_f_new
    # Global QS preference handler
    const-string p2, "global_qs_enabled"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_global_qs

    new-instance v0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$GlobalQsChangeListener;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$GlobalQsChangeListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_global_qs

    const-string p2, "app_dpi_value"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_10_new

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->t0(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$f;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$f;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_10_new
    const-string p2, "iconPack"

    invoke-virtual {p0, p2}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_11

    sget-object v2, Lcom/ricktop/ClockSkinCoco/MainActivity;->F:Lcom/ricktop/ClockSkinCoco/m;

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ricktop/ClockSkinCoco/m;->b(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "System"

    aput-object v6, v2, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/m$a;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, v5, Lcom/ricktop/ClockSkinCoco/m$a;->b:Ljava/lang/String;

    aput-object v7, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/ricktop/ClockSkinCoco/m$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "IconsPref"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto :goto_0

    :cond_10
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->O0([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->P0([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->t0(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/ricktop/ClockSkinCoco/SettingsFragment$g;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$g;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_11
    const-string p1, "allowCalendarAccess"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_12

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$s;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$s;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_12
    const-string p1, "notificationStation"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_notif

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$NotificationStationChangeListener;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$NotificationStationChangeListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_notif
    const-string p1, "stepEnabled"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_step

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_step
    const-string p1, "heartEnabled"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_heart

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HealthCheckListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_heart
    const-string p1, "app_version"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_version_done

    :try_start_version
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/WatchApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/WatchApp;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->t0(Ljava/lang/CharSequence;)V
    :try_end_version
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_version .. :try_end_version} :catch_version

    goto :cond_version_done

    :catch_version
    move-exception p2

    const-string p2, "V4"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->t0(Ljava/lang/CharSequence;)V

    :cond_version_done

    # Ultra Battery Saver - Set Password preference
    const-string p1, "ultra_battery_saver_set_password"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_ubs_password

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSPasswordClickListener;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSPasswordClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :cond_ubs_password

    # Ultra Battery Saver - Enable Launcher toggle
    const-string p1, "ultra_battery_saver_enabled"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_ubs_enabled

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSLauncherToggleListener;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSLauncherToggleListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_ubs_enabled

    # Ultra Battery Saver - Auto-lock toggle
    const-string p1, "ultra_battery_saver_auto_lock"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_ubs_auto_lock

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSAutoLockToggleListener;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$UBSAutoLockToggleListener;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->q0(Landroidx/preference/Preference$d;)V

    :cond_ubs_auto_lock

    # === Hide Apps Integration ===
    # Check if category should be hidden
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->h1()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->shouldShowSettings()Z

    move-result p2

    # Log the result
    const-string v0, "SettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # If shouldShowSettings is true, setup click handlers and done
    if-nez p2, :setup_hide_apps_handlers

    # shouldShowSettings is false - remove category
    invoke-virtual {p0}, Landroidx/preference/d;->G1()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :find_category

    goto :done_hide_apps

    :find_category
    const-string p1, "hide_apps_category"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :done_hide_apps

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result v1

    const-string v2, "SettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Category removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Force RecyclerView adapter to refresh
    invoke-virtual {p0}, Landroidx/preference/d;->F1()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :done_hide_apps

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    if-eqz v1, :done_hide_apps

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    const-string v1, "SettingsFragment"

    const-string v2, "Adapter refreshed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :done_hide_apps

    :setup_hide_apps_handlers
    # Setup click listeners for the preferences
    const-string p1, "select_hidden_apps"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :skip_select_apps

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideAppsSelector;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideAppsSelector;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :skip_select_apps
    const-string p1, "hide_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/d;->g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :done_hide_apps

    new-instance p2, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideSettingsHandler;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/SettingsFragment$HideSettingsHandler;-><init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    :done_hide_apps
    # === End Hide Apps Integration ===

    return-void
.end method
