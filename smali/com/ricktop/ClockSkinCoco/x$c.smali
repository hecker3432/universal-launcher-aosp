.class Lcom/ricktop/ClockSkinCoco/x$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/x;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/x;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$c;->a:Lcom/ricktop/ClockSkinCoco/x;

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
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$c;->a:Lcom/ricktop/ClockSkinCoco/x;

    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/x;->F1(Lcom/ricktop/ClockSkinCoco/x;Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$c;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/x;->P1(Lcom/ricktop/ClockSkinCoco/x;)V

    :cond_1
    return-void
.end method
