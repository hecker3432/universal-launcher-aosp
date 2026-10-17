.class Lcom/ricktop/ClockSkinCoco/B$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/B;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Z1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/B;->a2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    const/4 v1, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v2, 0x21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v2, :old_api_registerReceiver_compat_26

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p2, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_26

    :old_api_registerReceiver_compat_26
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/B$g;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/B;->a2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "ACTION_SCREEN_OFF"

    const-string p2, "Quicksetting"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
