.class public Lcom/ricktop/ClockSkinCoco/NotificationService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field private static isServiceConnected:Z


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/NotificationService$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/NotificationService$a;-><init>(Lcom/ricktop/ClockSkinCoco/NotificationService;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationService;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static isServiceRunning()Z
    .locals 1

    # Return the current service connection status
    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/NotificationService;->isServiceConnected:Z

    return v0
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/NotificationService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/NotificationService;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    # Check if API level is 21+ (Android 5.0+) for cancelNotification support
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    # Cancel the notification using the key
    invoke-static {p0, p1}, Lcom/ricktop/ClockSkinCoco/s;->a(Lcom/ricktop/ClockSkinCoco/NotificationService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ricktop.watchapp.NOTIFICATION_LISTENER.CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/NotificationService;->b:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_30

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_30

    :old_api_registerReceiver_compat_30
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_30

    return-void
.end method

.method public onListenerConnected()V
    .locals 2

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    # Set service connected flag to true
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ricktop/ClockSkinCoco/NotificationService;->isServiceConnected:Z

    const-string v0, "Notif"

    const-string v1, "NotificationListener connected for Android 7+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    # Set service connected flag to false
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ricktop/ClockSkinCoco/NotificationService;->isServiceConnected:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notif"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.NOTIF.ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    # Cache the SBN and get the cache key
    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->cacheSbn(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    # Send cache key instead of the entire SBN
    const-string v1, "sbn_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notif"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ricktop/ClockSkinCoco/r;->b(Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT FOUND:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed Notification pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sbn="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.ClockSkinCoco.NOTIF.REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Cache the SBN and get the cache key
    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->cacheSbn(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    # Send cache key instead of the entire SBN
    const-string v1, "sbn_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
