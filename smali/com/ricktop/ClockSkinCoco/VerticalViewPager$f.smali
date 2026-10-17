.class Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;
.super LI/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-direct {p0}, LI/a;-><init>()V

    return-void
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, LI/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, LJ/E;->a()LJ/E;

    move-result-object p1

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, LJ/E;->f(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)Landroidx/viewpager/widget/a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)Landroidx/viewpager/widget/a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager/widget/a;->d()I

    move-result p2

    invoke-virtual {p1, p2}, LJ/E;->c(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)I

    move-result p2

    invoke-virtual {p1, p2}, LJ/E;->b(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)I

    move-result p2

    invoke-virtual {p1, p2}, LJ/E;->g(I)V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;LJ/z;)V
    .locals 1

    invoke-super {p0, p1, p2}, LI/a;->g(Landroid/view/View;LJ/z;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LJ/z;->K(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->n()Z

    move-result p1

    invoke-virtual {p2, p1}, LJ/z;->Q(Z)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, LJ/z;->a(I)V

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, LJ/z;->a(I)V

    :cond_1
    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, LI/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;I)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setCurrentItem(I)V

    return p3

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p1, p3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;I)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;->d:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setCurrentItem(I)V

    return p3
.end method
