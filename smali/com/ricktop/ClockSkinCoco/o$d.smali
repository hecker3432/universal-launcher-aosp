.class Lcom/ricktop/ClockSkinCoco/o$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/o;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$d;->a:Lcom/ricktop/ClockSkinCoco/o;

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
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$d;->a:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1, v1}, Lcom/ricktop/ClockSkinCoco/o;->D1(Lcom/ricktop/ClockSkinCoco/o;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$d;->a:Lcom/ricktop/ClockSkinCoco/o;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/o;->D1(Lcom/ricktop/ClockSkinCoco/o;Z)Z

    goto :goto_0

    :cond_3
    const-string v0, "com.ailife.ClockSkinCoco.SET_PAGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$d;->a:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->E1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "enabled"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->setPagingEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method
