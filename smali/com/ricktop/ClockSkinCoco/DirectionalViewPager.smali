.class public Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;,
        Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;,
        Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;
    }
.end annotation


# instance fields
.field private A0:Ljava/lang/ClassLoader;

.field private B0:I

.field private C0:I

.field private D0:Landroid/widget/Scroller;

.field private E0:Z

.field private F0:Z

.field private G0:I

.field private H0:Landroid/view/VelocityTracker;

.field private k0:I

.field private l0:Landroidx/viewpager/widget/a;

.field private m0:I

.field private n0:F

.field private o0:Z

.field private p0:Z

.field private final q0:Ljava/util/ArrayList;

.field private r0:F

.field private s0:F

.field private t0:I

.field private u0:I

.field private v0:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;

.field private w0:Landroidx/viewpager/widget/ViewPager$i;

.field private x0:I

.field private y0:Z

.field private z0:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->B0:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->z0:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->A0:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->C0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->S()V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "orientation"

    invoke-interface {p2, v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method static synthetic O(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->T()V

    return-void
.end method

.method private P(II)V
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;-><init>()V

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->g(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->a:Ljava/lang/Object;

    if-gez p2, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private Q()V
    .locals 6

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->E0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollState(I)V

    :cond_2
    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->y0:Z

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->E0:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iget-boolean v4, v3, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->c:Z

    if-eqz v4, :cond_3

    iput-boolean v1, v3, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->c:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    :cond_5
    return-void
.end method

.method private R(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget-object v3, v1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/a;->h(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private S()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->G0:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->u0:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->t0:I

    return-void
.end method

.method private T()V
    .locals 9

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1
    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget-object v8, v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/a;->e(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v3, :cond_4

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget v7, v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    iget-object v8, v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v7, v8}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    if-ne v0, v6, :cond_1

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v5}, Landroidx/viewpager/widget/a;->d()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    iget v8, v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    if-eq v8, v7, :cond_4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    if-ne v8, v0, :cond_3

    move v5, v7

    :cond_3
    iput v7, v6, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_5
    if-ltz v5, :cond_6

    invoke-direct {p0, v5, v1, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    :goto_4
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method private U()V
    .locals 8

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->y0:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->d()I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    :goto_0
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_1
    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    if-lt v6, v0, :cond_2

    if-le v6, v2, :cond_3

    :cond_2
    iget-boolean v7, v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->c:Z

    if-nez v7, :cond_3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    iget-object v7, v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v4, p0, v6, v7}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-ge v4, v2, :cond_5

    if-le v6, v0, :cond_5

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    move v4, v0

    :cond_4
    :goto_2
    if-gt v4, v2, :cond_5

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    if-ge v4, v6, :cond_5

    invoke-direct {p0, v4, v3}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->P(II)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget v4, v5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    goto :goto_4

    :cond_7
    const/4 v3, -0x1

    :goto_4
    if-ge v3, v2, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-gt v3, v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v3

    :goto_5
    if-gt v0, v2, :cond_9

    invoke-direct {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->P(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    :cond_a
    return-void
.end method

.method private V(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr p1, v0

    sub-int/2addr p2, v1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->E0:Z

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollState(I)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private W()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private X(IZZ)V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_2

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    if-ne p3, p1, :cond_2

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_5

    :cond_2
    :goto_0
    const/4 p3, 0x1

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_4
    :goto_1
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    add-int/lit8 v2, v0, 0x1

    if-gt p1, v2, :cond_5

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iput-boolean p3, v2, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    if-ne v0, p1, :cond_7

    const/4 p3, 0x0

    :cond_7
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    if-eqz p2, :cond_a

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    mul-int p2, p2, p1

    invoke-direct {p0, p2, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->V(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int p2, p2, p1

    invoke-direct {p0, v1, p2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->V(II)V

    :goto_3
    if-eqz p3, :cond_9

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_9

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_9
    return-void

    :cond_a
    if-eqz p3, :cond_b

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_b
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez p2, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    mul-int p2, p2, p1

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int p2, p2, p1

    invoke-virtual {p0, v1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    :goto_5
    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->p0:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->C0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->C0:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->b(I)V

    :cond_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->F0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->F0:Z

    :cond_0
    return-void
.end method

.method private x(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->D0:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_1

    if-eq v1, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    move v2, v3

    :goto_0
    rem-int v1, v2, v0

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    div-int/2addr v2, v0

    int-to-float v4, v1

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-interface {v3, v2, v4, v1}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    if-eqz v4, :cond_1

    return v1

    :cond_1
    iget-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->p0:Z

    if-eqz v4, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    if-eq v0, v2, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v7, v4

    move v4, v0

    move v0, v7

    :goto_0
    iget v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->G0:I

    int-to-float v6, v5

    cmpl-float v6, v0, v6

    if-lez v6, :cond_7

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollState(I)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->W()V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_6

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto :goto_1

    :cond_6
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    :goto_1
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    return v1

    :cond_7
    int-to-float p1, v5

    cmpl-float p1, v4, p1

    if-lez p1, :cond_b

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->p0:Z

    return v3

    :cond_8
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->C0:I

    if-ne p1, v4, :cond_a

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->W()V

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->p0:Z

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollState(I)V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->p0:Z

    :cond_b
    :goto_3
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    return p1

    :cond_c
    :goto_4
    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->p0:Z

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_0

    sub-int/2addr p4, p2

    goto :goto_0

    :cond_0
    sub-int p4, p5, p3

    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_2

    invoke-direct {p0, p3}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->R(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    move-result-object p5

    if-eqz p5, :cond_2

    iget p5, p5, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    mul-int p5, p5, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v2, :cond_1

    add-int/2addr v0, p5

    goto :goto_2

    :cond_1
    add-int/2addr v1, p5

    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3, v0, v1, p5, v2}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    return-void

    :cond_0
    iget v0, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->d:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->B0:I

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->z0:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->c:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->A0:Ljava/lang/ClassLoader;

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    iput v1, v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->d:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->l()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;->b:Landroid/os/Parcelable;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/ViewPager;->onSizeChanged(IIII)V

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez p3, :cond_1

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    mul-int p2, p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    if-eq p2, p1, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void

    :cond_1
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    mul-int p1, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_2

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/4 v3, -0x1

    const/4 v4, 0x3

    if-eq v0, v2, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    goto/16 :goto_9

    :cond_6
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    invoke-direct {p0, p1, v2, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m()V

    goto/16 :goto_9

    :cond_7
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v7, v5

    move v5, v4

    move v4, v7

    :goto_1
    iget v6, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->G0:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->W()V

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v4, :cond_9

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto :goto_2

    :cond_9
    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    :goto_2
    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollState(I)V

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setScrollingCacheEnabled(Z)V

    :cond_a
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    sub-float/2addr v4, v3

    add-float/2addr v0, v4

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    sub-float/2addr v4, p1

    add-float/2addr v3, v4

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    move p1, v0

    move v0, v3

    :goto_3
    iget v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    sub-int/2addr v3, v2

    mul-int v3, v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v4}, Landroidx/viewpager/widget/a;->d()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v3, v3, p1

    int-to-float v3, v3

    cmpg-float v4, v0, v1

    if-gez v4, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    cmpl-float v1, v0, v3

    if-lez v1, :cond_d

    move v0, v3

    :cond_d
    :goto_4
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v1, :cond_e

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    float-to-int v3, v0

    int-to-float v4, v3

    sub-float v4, v0, v4

    add-float/2addr v1, v4

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_5

    :cond_e
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    float-to-int v3, v0

    int-to-float v4, v3

    sub-float v4, v0, v4

    add-float/2addr v1, v4

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->scrollTo(II)V

    :goto_5
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v1, :cond_15

    float-to-int v0, v0

    div-int v3, v0, p1

    rem-int/2addr v0, p1

    int-to-float v4, v0

    int-to-float p1, p1

    div-float/2addr v4, p1

    invoke-interface {v1, v3, v4, v0}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    goto/16 :goto_9

    :cond_f
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->o0:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->t0:I

    int-to-float v0, v0

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v4

    goto :goto_6

    :cond_10
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v4

    :goto_6
    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->y0:Z

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->u0:I

    if-gt p1, v4, :cond_11

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_11

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    invoke-direct {p0, p1, v2, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m()V

    goto :goto_9

    :cond_11
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_12

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    sub-int/2addr p1, v2

    invoke-direct {p0, p1, v2, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    goto :goto_7

    :cond_12
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    add-int/2addr p1, v2

    invoke-direct {p0, p1, v2, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    :goto_7
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m()V

    goto :goto_9

    :cond_13
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    :goto_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->k0:I

    :cond_15
    :goto_9
    return v2

    :cond_16
    return v1
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->v0:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->r(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget v4, v2, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->b:I

    iget-object v2, v2, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->v0:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;

    const/4 v2, 0x0

    if-nez p1, :cond_2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;

    invoke-direct {p1, p0, v2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;-><init>(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$a;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->v0:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->v0:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/a;->j(Landroid/database/DataSetObserver;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    if-ge v0, p1, :cond_4

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->y0:Z

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->B0:I

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->l0:Landroidx/viewpager/widget/a;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->z0:Landroid/os/Parcelable;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->A0:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v3}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->B0:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->B0:I

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->z0:Landroid/os/Parcelable;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->A0:Ljava/lang/ClassLoader;

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->U()V

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->y0:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->X(IZZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->w0:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only HORIZONTAL and VERTICAL are valid orientations."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    if-eq p1, v0, :cond_4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->Q()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->n0:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->r0:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->s0:F

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->H0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->x0:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int p1, p1, v1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->m0:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int p1, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method
