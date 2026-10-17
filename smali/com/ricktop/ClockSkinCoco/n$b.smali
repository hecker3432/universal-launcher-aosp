.class Lcom/ricktop/ClockSkinCoco/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/n;->i(Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/n;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b(III)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$b;->a:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method
