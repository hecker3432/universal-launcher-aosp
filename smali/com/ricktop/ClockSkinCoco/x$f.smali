.class public Lcom/ricktop/ClockSkinCoco/x$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/x;


# direct methods
.method public constructor <init>(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$f;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$f;->a:Lcom/ricktop/ClockSkinCoco/x;

    const-string v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/x;->I1(Lcom/ricktop/ClockSkinCoco/x;I)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$f;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/x;->H1(Lcom/ricktop/ClockSkinCoco/x;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/x$f;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/x;->H1(Lcom/ricktop/ClockSkinCoco/x;)I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/x;->J1(Lcom/ricktop/ClockSkinCoco/x;Z)Z

    :cond_2
    return-void
.end method
