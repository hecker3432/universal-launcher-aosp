.class Lcom/ricktop/ClockSkinCoco/q$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/q;->c0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/q;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/q$a;->a:Lcom/ricktop/ClockSkinCoco/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0


    const-string v1, "notificationFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    # Get cache key instead of SBN
    const-string v1, "sbn_key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # Retrieve SBN from cache
    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/r;->getCachedSbn(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    # Check if SBN is null
    if-nez v1, :notif_filter_check_compat_70

    return-void

    :notif_filter_check_compat_70
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;
    move-result-object v1      # Store Notification in v1

    iget v2, v1, Landroid/app/Notification;->flags:I  # Get flags field into v2
    sget v3, Landroid/app/Notification;->FLAG_ONGOING_EVENT:I  # Get constant value (2) into v3

    and-int v2, v2, v3       # v2 = flags & FLAG_ONGOING_EVENT
    if-eqz v2, :cond_3  # Jump if result is zero

    # --- Your code here if ongoing ---
    # This block executes when (flags & ONGOING_EVENT) != 0
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.ricktop.ClockSkinCoco.NOTIF.ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Notif sbn"

    const-string v1, "sbn_key"

    if-eqz p1, :cond_1

    # Get cache key and retrieve SBN from cache
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->getCachedSbn(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    # Check if SBN is null
    if-nez p2, :notif_added_valid_compat_70

    return-void

    :notif_added_valid_compat_70
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q$a;->a:Lcom/ricktop/ClockSkinCoco/q;

    invoke-static {v0, p2}, Lcom/ricktop/ClockSkinCoco/q;->D1(Lcom/ricktop/ClockSkinCoco/q;Landroid/service/notification/StatusBarNotification;)V

    # Remove from cache after processing
    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->removeCachedSbn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.ricktop.ClockSkinCoco.NOTIF.REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    # Get cache key and retrieve SBN from cache
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->getCachedSbn(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    # Check if SBN is null
    if-nez p2, :notif_removed_valid_compat_70

    return-void

    :notif_removed_valid_compat_70
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q$a;->a:Lcom/ricktop/ClockSkinCoco/q;

    invoke-static {v0, p2}, Lcom/ricktop/ClockSkinCoco/q;->E1(Lcom/ricktop/ClockSkinCoco/q;Landroid/service/notification/StatusBarNotification;)V

    # Remove from cache after processing
    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->removeCachedSbn(Ljava/lang/String;)V

    :cond_2
    :goto_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/q$a;->a:Lcom/ricktop/ClockSkinCoco/q;

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/q;->L1()V

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/q;->K1()V

    return-void
.end method
