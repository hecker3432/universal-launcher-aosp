.class Lcom/ricktop/ClockSkinCoco/MainActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/MainActivity;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.ricktop.watchapp.NOTIFICATION_LISTENER.REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.ricktop.watchapp.NOTIFICATION_LISTENER.HIDE_INDICATOR"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.ricktop.watchapp.NOTIFICATION_LISTENER.REFRESH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->x(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->x(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    # Handle AOD screen-off logic
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->handleScreenOff()V

    # Handle UBS screen-off logic
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->handleScreenOff()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->y(Lcom/ricktop/ClockSkinCoco/MainActivity;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change pager screen"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notif SCREEN_OFF"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->x(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->x(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->H1()V

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->w1(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    # Handle UBS screen-on logic
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->handleScreenOn()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1, v1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->y(Lcom/ricktop/ClockSkinCoco/MainActivity;Z)Z

    goto :goto_0

    :cond_5
    const-string v0, "com.ailife.ClockSkinCoco.GO_HOME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_screentouched

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->goHome()V

    goto :goto_0

    :cond_screentouched
    const-string v0, "com.ricktop.ClockSkinCoco.SCREENTOUCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_setfps

    # Notify AodManager of user activity
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/AodManager;->notifyUserActivity()V

    goto :goto_0

    :cond_setfps
    const-string v0, "com.ailife.ClockSkinCoco.SET_FPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    # Get FPS from intent extra
    const-string v0, "fps"

    const/16 v1, 0x19

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    # Get CocosClockFragment and set FPS
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v2

    if-eqz v2, :cond_9

    # Set the FPS value and trigger display update
    invoke-virtual {v2, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->setDark(I)V

    invoke-virtual {v2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->updateDisplay()V

    goto :goto_0

    :cond_9
    const-string v0, "com.android.watchengine.changeface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string p2, "faceName"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change watch face: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changeface"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "watch_index"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "watch_path"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->G()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p2

    if-eqz p2, :cond_7

    sput-object p1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    :cond_7
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainActivity$a$a;

    invoke-direct {v0, p0, p1}, Lcom/ricktop/ClockSkinCoco/MainActivity$a$a;-><init>(Lcom/ricktop/ClockSkinCoco/MainActivity$a;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_0
    return-void
.end method
