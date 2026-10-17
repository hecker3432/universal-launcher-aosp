.class Lcom/ricktop/ClockSkinCoco/DateTimeView$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/DateTimeView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/DateTimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$a;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$a;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->h(Lcom/ricktop/ClockSkinCoco/DateTimeView;)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$a;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->f(Lcom/ricktop/ClockSkinCoco/DateTimeView;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$a;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->g(Lcom/ricktop/ClockSkinCoco/DateTimeView;)V

    :cond_1
    return-void
.end method
