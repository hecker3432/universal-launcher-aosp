.class Lcom/ricktop/ClockSkinCoco/D$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/D;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/D;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/D;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/D$d;->c:Lcom/ricktop/ClockSkinCoco/D;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/D$d;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/D$d;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/D$d;->c:Lcom/ricktop/ClockSkinCoco/D;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/D;->c(Lcom/ricktop/ClockSkinCoco/D;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/D$d;->c:Lcom/ricktop/ClockSkinCoco/D;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/D;->b(Lcom/ricktop/ClockSkinCoco/D;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/D$d;->c:Lcom/ricktop/ClockSkinCoco/D;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/D;->d(Lcom/ricktop/ClockSkinCoco/D;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->updateWeather()V

    return-void
.end method
