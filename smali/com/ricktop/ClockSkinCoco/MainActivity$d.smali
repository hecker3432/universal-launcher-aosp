.class Lcom/ricktop/ClockSkinCoco/MainActivity$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$d;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mLockReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.ricktop.ClockSkinCoco.LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$d;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->A(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/ScreenControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/ScreenControl;->b()V

    goto :goto_0

    :cond_1
    const-string v0, "com.ricktop.ClockSkinCoco.SCREENOFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$d;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->A(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/ScreenControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/ScreenControl;->c()V

    goto :goto_0

    :cond_3
    const-string v0, "com.ailife.ClockSkinCoco.SET_PAGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$d;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->x(Lcom/ricktop/ClockSkinCoco/MainActivity;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setPagingEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method
