.class Lcom/ricktop/ClockSkinCoco/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/o;->c0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/o;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->E1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/o;->F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/o;->F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->P()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->w1(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$a;->b:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->w1(Z)V

    :cond_1
    :goto_0
    return-void
.end method
