.class public Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;
.super Ljava/lang/Object;
.source "ErrorDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorDialogHelper"

.field private static currentActivity:Landroid/app/Activity;

.field private static dialogShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 3

    sput-object p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->currentActivity:Landroid/app/Activity;

    const-string v0, "ErrorDialogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity context set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showLuaError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Watch Face Error"

    invoke-static {v0, p0}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->showLuaError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showLuaError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->currentActivity:Landroid/app/Activity;
    if-nez v0, :cond_0
    return-void
    :cond_0
    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "ignoreLuaError"
    const/4 v2, 0x0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :cond_1
    return-void
    :cond_1
    const-string v0, "ErrorDialogHelper"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Lua Error - "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ": "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    sget-object v1, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->currentActivity:Landroid/app/Activity;
    if-nez v1, :cond_2
    const-string p0, "Cannot show dialog: Activity context is null"
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    return-void
    :cond_2
    sget-boolean v1, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->dialogShowing:Z
    if-eqz v1, :cond_3
    const-string p0, "Dialog already showing, skipping duplicate error"
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void
    :cond_3
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v1, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;
    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->dialogShowing:Z

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ailife/ClockSkinCoco/ErrorDialogHelper;->dialogShowing:Z

    return p0
.end method
