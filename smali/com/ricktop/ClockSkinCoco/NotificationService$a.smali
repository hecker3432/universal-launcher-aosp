.class Lcom/ricktop/ClockSkinCoco/NotificationService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/NotificationService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/NotificationService;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationService$a;->a:Lcom/ricktop/ClockSkinCoco/NotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "com.ricktop.watchapp.NOTIFICATION_LISTENER.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationService$a;->a:Lcom/ricktop/ClockSkinCoco/NotificationService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/NotificationService;->a(Lcom/ricktop/ClockSkinCoco/NotificationService;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
