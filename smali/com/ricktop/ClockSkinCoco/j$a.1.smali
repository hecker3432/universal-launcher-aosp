.class Lcom/ricktop/ClockSkinCoco/j$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j;->k(ILjava/lang/String;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:I

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/app/Dialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$a;->c:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$a;->a:Landroid/app/Dialog;

    iput p3, p0, Lcom/ricktop/ClockSkinCoco/j$a;->b:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$a;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->b(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$a;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/j;->a(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    # BUGFIX: Don't reset j.c to old initial value - keep the current SeekBar value
    # iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$a;->c:Lcom/ricktop/ClockSkinCoco/j;
    # iget p2, p0, Lcom/ricktop/ClockSkinCoco/j$a;->b:I
    # invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/j;->d(Lcom/ricktop/ClockSkinCoco/j;I)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$a;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    new-instance p2, Lcom/ricktop/ClockSkinCoco/j$a$a;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/j$a$a;-><init>(Lcom/ricktop/ClockSkinCoco/j$a;)V

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
