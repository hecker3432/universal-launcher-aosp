.class Lcom/ricktop/ClockSkinCoco/j$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j;->k(ILjava/lang/String;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:I

.field final synthetic d:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/app/Dialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$j;->d:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$j;->b:Landroid/app/Dialog;

    iput p3, p0, Lcom/ricktop/ClockSkinCoco/j$j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$j;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$j;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->b(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$j;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/j;->a(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$j;->d:Lcom/ricktop/ClockSkinCoco/j;

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/j$j;->c:I

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/j;->d(Lcom/ricktop/ClockSkinCoco/j;I)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$j;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/j$j$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/j$j$a;-><init>(Lcom/ricktop/ClockSkinCoco/j$j;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method
