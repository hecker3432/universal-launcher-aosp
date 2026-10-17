.class public Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialerUnlockReceiver.java"


# static fields
.field private static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final TAG:Ljava/lang/String; = "DialerUnlockReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 65
    :try_start_0
    const-string v0, "com.ricktop.ClockSkinCoco.WatchApp"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    const-string v1, "a"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 67
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    new-instance v2, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver$1;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 83
    goto :goto_53

    .line 79
    :catch_2a
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to show toast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialerUnlockReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    :goto_53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_7f

    .line 25
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 26
    if-nez p2, :cond_1a

    .line 27
    return-void

    .line 30
    :cond_1a
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secret code detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialerUnlockReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isPasswordProtected()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 36
    invoke-virtual {v0, p2}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->verifyPassword(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 38
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->unlockSettings()V

    .line 39
    const-string p2, ""

    invoke-virtual {v0, p2}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setPassword(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->saveConfiguration()V

    .line 43
    const-string p2, "App list settings shown"

    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const-string p2, "Settings unlocked successfully, password deleted"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.ailife.ClockSkinCoco.REFRESH_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    goto :goto_7e

    .line 51
    :cond_6e
    const-string p2, "Invalid unlock code"

    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/hideapps/DialerUnlockReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    const-string p1, "Invalid unlock code attempted"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 55
    :cond_79
    const-string p1, "Password protection not enabled, ignoring secret code"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_7e
    return-void

    .line 21
    :cond_7f
    :goto_7f
    return-void
.end method
