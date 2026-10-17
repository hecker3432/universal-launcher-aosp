.class Lcom/ricktop/ClockSkinCoco/B$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/B;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$a;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6fcd6bbb

    if-eq v0, v1, :cond_3

    const v1, -0x5b36f014

    if-eq v0, v1, :cond_2

    const p2, -0x147b62d9

    if-eq v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "android.net.wifi.STATE_CHANGE"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_1

    :cond_3
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$a;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->C1(Lcom/ricktop/ClockSkinCoco/B;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$a;->a:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->D1(Lcom/ricktop/ClockSkinCoco/B;)V

    return-void
.end method
