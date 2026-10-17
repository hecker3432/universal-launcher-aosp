.class public Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;
.super Ljava/lang/Object;
.source "DefaultLauncherManager.java"


# static fields
.field private static final KEY_NEVER_ASK:Ljava/lang/String; = "never_ask_again"

.field private static final KEY_USER_WANTS_SET:Ljava/lang/String; = "user_wants_set_as_default"

.field private static final PREFS_NAME:Ljava/lang/String; = "default_launcher_prefs"

.field private static final REQUEST_CODE_SET_LAUNCHER:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "DefaultLauncherManager"


# instance fields
.field private activity:Landroid/app/Activity;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    const-string v0, "default_launcher_prefs"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)Landroid/content/SharedPreferences;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->openLauncherChooser()V

    return-void
.end method

.method private openLauncherChooser()V
    .registers 7

    const-string v0, "DefaultLauncherManager"

    .line 141
    :try_start_2
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    const-string v4, "com.ricktop.ClockSkinCoco.FakeHome"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 145
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 150
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    .line 151
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_21} :catch_30

    .line 154
    :try_start_21
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_21 .. :try_end_26} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_26} :catch_30

    :catch_26
    const/4 v4, 0x2

    .line 160
    :try_start_27
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v1, "Opened launcher chooser with FakeHome trick"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v1

    const-string v2, "RuntimeException in launcher chooser"

    .line 166
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method private showLauncherDialog()V
    .registers 4

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Set as Default Launcher"

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Universal Launcher needs to be set as your default launcher to work properly.\n\nNote: Some systems don\'t allow setting \'Always\' on first selection. If that happens, you\'ll need to select it again."

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    new-instance v1, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$1;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$1;-><init>(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)V

    const-string v2, "Set Now"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v1, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$2;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$2;-><init>(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)V

    const-string v2, "Later"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v1, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$3;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$3;-><init>(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)V

    const-string v2, "Never Ask Again"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkAndPromptIfNeeded()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "never_ask_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "DefaultLauncherManager"

    if-eqz v0, :cond_13

    const-string v0, "User chose \'Never Ask Again\', skipping prompt"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_13
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->isDefaultLauncher()Z

    move-result v0

    const-string v3, "user_wants_set_as_default"

    if-eqz v0, :cond_2e

    const-string v0, "Already default launcher"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 83
    :cond_2e
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "User wants to set as default, opening chooser again"

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->openLauncherChooser()V

    return-void

    .line 90
    :cond_3f
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->showLauncherDialog()V

    return-void
.end method

.method public hasUserChosenNeverAsk()Z
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "never_ask_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDefaultLauncher()Z
    .registers 6

    const-string v0, "DefaultLauncherManager"

    .line 43
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 47
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 49
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5d

    .line 50
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current default launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Our package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_57

    return v0

    :catch_57
    move-exception v1

    const-string v2, "Error checking default launcher"

    .line 59
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5d
    const/4 v0, 0x0

    return v0
.end method

.method public resetNeverAskAgain()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "never_ask_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "DefaultLauncherManager"

    const-string v1, "Reset \'Never Ask Again\' preference"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
