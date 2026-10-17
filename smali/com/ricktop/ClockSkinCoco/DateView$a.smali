.class Lcom/ricktop/ClockSkinCoco/DateView$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/DateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/DateView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/DateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView$a;->a:Lcom/ricktop/ClockSkinCoco/DateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    const-string v2, "android.intent.action.TIME_CHANGED"

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView$a;->a:Lcom/ricktop/ClockSkinCoco/DateView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/DateView;->f(Lcom/ricktop/ClockSkinCoco/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateView$a;->a:Lcom/ricktop/ClockSkinCoco/DateView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/DateView;->g(Lcom/ricktop/ClockSkinCoco/DateView;)V

    :cond_3
    return-void
.end method
