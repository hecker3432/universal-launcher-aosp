.class Lcom/ricktop/ClockSkinCoco/x$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/x;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/x;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIM:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->G1(Lcom/ricktop/ClockSkinCoco/x;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nService:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->S1(Lcom/ricktop/ClockSkinCoco/x;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Network:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->Q1(Lcom/ricktop/ClockSkinCoco/x;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\ndBm:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->M1(Lcom/ricktop/ClockSkinCoco/x;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " asu:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$d;->b:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->K1(Lcom/ricktop/ClockSkinCoco/x;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method
