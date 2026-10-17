.class public abstract synthetic Lcom/ricktop/ClockSkinCoco/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/ricktop/ClockSkinCoco/NotificationService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    return-void
.end method
