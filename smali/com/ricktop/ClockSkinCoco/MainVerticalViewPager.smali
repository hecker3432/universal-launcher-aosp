.class public Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;,
        Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$f;,
        Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;,
        Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;,
        Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$i;,
        Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;
    }
.end annotation


# static fields
.field private static final b0:[I

.field private static final c0:Ljava/util/Comparator;

.field private static final d0:Landroid/view/animation/Interpolator;

.field private static final e0:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$i;


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:Landroid/view/VelocityTracker;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Landroidx/core/widget/h;

.field private O:Landroidx/core/widget/h;

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Landroidx/viewpager/widget/ViewPager$i;

.field private T:Landroidx/viewpager/widget/ViewPager$i;

.field private U:I

.field private V:Ljava/util/ArrayList;

.field private final W:Ljava/lang/Runnable;

.field private a0:I

.field private b:I

.field private c:J

.field private final d:Ljava/util/ArrayList;

.field private final e:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

.field private final f:Landroid/graphics/Rect;

.field private g:Landroidx/viewpager/widget/a;

.field private h:I

.field private i:I

.field private j:Landroid/os/Parcelable;

.field private k:Ljava/lang/ClassLoader;

.field private l:Landroid/widget/Scroller;

.field private m:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b0:[I

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$a;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$a;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->c0:Ljava/util/Comparator;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$b;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$b;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d0:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$i;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$i;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->e0:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->c:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->e:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->f:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j:Landroid/os/Parcelable;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->k:Ljava/lang/ClassLoader;

    const/4 p2, 0x0

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    const v0, -0x800001

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    new-instance p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$c;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$c;-><init>(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->W:Ljava/lang/Runnable;

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->a0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x()V

    return-void
.end method

.method private A(IFI)V
    .locals 10

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->R:I

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget-boolean v8, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    iget v7, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->b:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_3

    const/16 v8, 0x30

    if-eq v7, v8, :cond_2

    const/16 v8, 0x50

    if-eq v7, v8, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    sub-int v7, v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v2, v8

    :goto_1
    move v9, v7

    move v7, v1

    move v1, v9

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    :goto_2
    add-int/2addr v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v1, v8

    if-eqz v1, :cond_4

    invoke-virtual {v6, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_4
    move v1, v7

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->S:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_6
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->T:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q:Z

    return-void
.end method

.method private B(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, LI/o;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private C()Z
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private D(I)Z
    .locals 7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q:Z

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->A(IFI)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v()Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v3

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q:Z

    invoke-direct {p0, v6, p1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->A(IFI)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private E()Z
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private F(F)Z
    .locals 9

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    mul-float v2, v2, v0

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget v6, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-eqz v6, :cond_0

    iget v1, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v8}, Landroidx/viewpager/widget/a;->d()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    mul-float v2, v2, v0

    const/4 v7, 0x0

    :cond_1
    cmpg-float v5, p1, v1

    if-gez v5, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/h;->f(F)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    move v0, p1

    move p1, v1

    goto :goto_3

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v7, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/core/widget/h;->f(F)Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    move v0, p1

    move p1, v2

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    float-to-int v2, p1

    int-to-float v3, v2

    sub-float/2addr p1, v3

    add-float/2addr v1, p1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D(I)Z

    move v4, v0

    :cond_6
    return v4
.end method

.method private G()V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H(I)V

    return-void
.end method

.method private H(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-eq v2, v1, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v4, 0x82

    goto :goto_0

    :cond_0
    const/16 v4, 0x21

    :goto_0
    invoke-direct {v0, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w(I)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v2

    iput v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v2, 0x0

    :goto_1
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q()V

    return-void

    :cond_2
    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q()V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w:I

    iget v5, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v7}, Landroidx/viewpager/widget/a;->d()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    iget v9, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v8, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b:I

    if-ne v7, v8, :cond_21

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v9, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget v10, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v11, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-lt v10, v11, :cond_5

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    iget v9, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-direct {v0, v9, v8}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i(II)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_18

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_8

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_9

    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    iget v15, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v15, v3

    :goto_5
    iget v3, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_6
    if-ltz v3, :cond_f

    cmpl-float v16, v6, v15

    if-ltz v16, :cond_c

    if-ge v3, v5, :cond_c

    if-nez v12, :cond_a

    goto :goto_9

    :cond_a
    iget v10, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ne v3, v10, :cond_e

    iget-boolean v10, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->c:Z

    if-nez v10, :cond_e

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget-object v12, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v3, v12}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v11, :cond_b

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    goto :goto_8

    :cond_c
    if-eqz v12, :cond_d

    iget v10, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ne v3, v10, :cond_d

    iget v10, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_b

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_7

    :cond_d
    add-int/lit8 v10, v11, 0x1

    invoke-direct {v0, v3, v10}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i(II)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v10

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    if-ltz v11, :cond_b

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_7

    :cond_e
    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_f
    :goto_9
    iget v3, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-int/lit8 v5, v8, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_17

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    if-gtz v13, :cond_11

    const/4 v10, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v13

    div-float/2addr v10, v11

    add-float/2addr v10, v14

    :goto_b
    iget v11, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    :goto_c
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v7, :cond_17

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_14

    if-le v11, v1, :cond_14

    if-nez v6, :cond_12

    goto :goto_e

    :cond_12
    iget v12, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ne v11, v12, :cond_16

    iget-boolean v12, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->c:Z

    if-nez v12, :cond_16

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget-object v6, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v6}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    goto :goto_d

    :cond_14
    if-eqz v6, :cond_15

    iget v12, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ne v11, v12, :cond_15

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_d

    :cond_15
    invoke-direct {v0, v11, v5}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i(II)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    :cond_16
    :goto_d
    goto :goto_c

    :cond_17
    :goto_e
    invoke-direct {v0, v9, v8, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->k(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;ILcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;)V

    :cond_18
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-eqz v9, :cond_19

    iget-object v3, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/a;->n(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iput v2, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->f:I

    iget-boolean v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-nez v6, :cond_1a

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    invoke-direct {v0, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget v6, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    iput v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->c:F

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iput v3, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->e:I

    goto :goto_11

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->Q()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v3

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_1e

    iget v1, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-eq v1, v2, :cond_20

    :cond_1e
    const/4 v6, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_20

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v2, v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne v2, v3, :cond_1f

    invoke-virtual {v1, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_14

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_20
    :goto_14
    return-void

    :cond_21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw v2

    :goto_17
    goto :goto_16
.end method

.method private I(IIII)V
    .locals 6

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    mul-float p3, p3, p2

    float-to-int v2, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, v2}, Landroid/view/View;->scrollTo(II)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w(I)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object p2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w(I)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method private J()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget-boolean v1, v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private K()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private L(IZIZ)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w(I)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    iget v0, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-direct {p0, v1, v0, p3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P(III)V

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->S:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_1
    if-eqz p4, :cond_5

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->T:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->S:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_3
    if-eqz p4, :cond_4

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->T:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m(Z)V

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private N(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O(IZZI)V

    return-void
.end method

.method private O(IZZI)V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w:I

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iput-boolean p3, v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    if-eqz p3, :cond_9

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-eqz v1, :cond_7

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->S:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_7
    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->T:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->L(IZIZ)V

    :goto_2
    return-void

    :cond_a
    :goto_3
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method private P(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m(Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollState(I)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->p(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    int-to-float p1, p3

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    return-void
.end method

.method private Q()V
    .locals 4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->U:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->V:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->V:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->V:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->V:Ljava/util/ArrayList;

    sget-object v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->e0:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    return-void
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)Landroidx/viewpager/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    return-object p0
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    return p0
.end method

.method static synthetic e(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y(I)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n()V

    return-void
.end method

.method private getClientHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic h()[I
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b0:[I

    return-object v0
.end method

.method private i(II)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;-><init>()V

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->g(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p1

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private j(I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    if-ne v2, p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewPager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x82

    const/16 v3, 0x21

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    if-ne p1, v3, :cond_6

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_5

    if-lt v2, v3, :cond_5

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->E()Z

    move-result v0

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_6

    :cond_6
    if-ne p1, v2, :cond_a

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_7

    if-gt v2, v3, :cond_7

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C()Z

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_6

    :cond_8
    if-eq p1, v3, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v2, :cond_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C()Z

    move-result v0

    goto :goto_6

    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->E()Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v0
.end method

.method private k(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;ILcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;)V
    .locals 9

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_6

    iget v1, p3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ge v1, v3, :cond_3

    iget v3, p3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v3, p3

    add-float/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    const/4 p3, 0x0

    :goto_1
    iget v4, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-gt v1, v4, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    :goto_2
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-le v1, v5, :cond_1

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p3, v5, :cond_1

    add-int/lit8 p3, p3, 0x1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_2

    :cond_1
    :goto_3
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iput v3, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_6

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    add-int/lit8 v1, v1, -0x1

    :goto_4
    iget v4, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-lt v1, v4, :cond_6

    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    :goto_5
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ge v1, v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_5

    :cond_4
    :goto_6
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-le v1, v5, :cond_5

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_5
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    iput p3, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_7

    move v5, v1

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v0, :cond_8

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v3, v1

    sub-float/2addr v3, v5

    goto :goto_8

    :cond_8
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    add-int/lit8 v3, p2, -0x1

    :goto_9
    if-ltz v3, :cond_b

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    :goto_a
    iget v7, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-le v4, v7, :cond_9

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v4}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    move v4, v8

    goto :goto_a

    :cond_9
    iget v8, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v1, v8

    iput v1, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    if-nez v7, :cond_a

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_b
    iget v1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    :goto_c
    iget v4, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ge p1, v4, :cond_c

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_c

    :cond_c
    if-ne v4, v0, :cond_d

    iget v4, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    :cond_d
    iput v1, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private l(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v10, v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v11, v6, v8

    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    invoke-static {p1, v1}, LI/P;->d(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private m(Z)V
    .locals 7

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->a0:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget-boolean v5, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->c:Z

    if-eqz v5, :cond_3

    iput-boolean v3, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->c:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->W:Ljava/lang/Runnable;

    invoke-static {p0, p1}, LI/P;->I(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->W:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private n()V
    .locals 10

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget-object v9, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/a;->e(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    :cond_2
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget v8, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget-object v9, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    iget v7, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ne v1, v7, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    iget v9, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-eq v9, v8, :cond_6

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne v9, v1, :cond_5

    move v2, v8

    :cond_5
    iput v8, v7, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    :cond_8
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    sget-object v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->c0:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget-boolean v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    iput v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->c:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0, v2, v4, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N(IZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-void
.end method

.method private o(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->K:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->I:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    :goto_1
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private p(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private r(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N(IZZ)V

    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->a0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->a0:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->S:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->b(I)V

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u:Z

    :cond_0
    return-void
.end method

.method private t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object p1

    return-object p1
.end method

.method private u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget-object v3, v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

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

.method private v()Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;
    .locals 13

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_2
    iget-object v10, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    iget-object v10, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    if-nez v9, :cond_2

    iget v11, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    add-int/2addr v6, v5

    if-eq v11, v6, :cond_2

    iget-object v10, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->e:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iput v6, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v1

    iput v1, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-int/lit8 v8, v8, -0x1

    :cond_2
    move-object v6, v10

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v4, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    if-nez v9, :cond_4

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_3

    goto :goto_3

    :cond_3
    return-object v7

    :cond_4
    :goto_3
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_5

    goto :goto_4

    :cond_5
    iget v4, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v7, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    move-object v12, v6

    move v6, v4

    move v4, v7

    move-object v7, v12

    goto :goto_2

    :cond_6
    :goto_4
    return-object v6

    :cond_7
    return-object v7
.end method

.method private w(I)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget v2, v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private x()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d0:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->I:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->J:I

    new-instance v2, Landroidx/core/widget/h;

    invoke-direct {v2, v1}, Landroidx/core/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    new-instance v2, Landroidx/core/widget/h;

    invoke-direct {v2, v1}, Landroidx/core/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->K:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->L:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->z:I

    new-instance v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$f;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$f;-><init>(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)V

    invoke-static {p0, v1}, LI/P;->N(Landroid/view/View;LI/a;)V

    invoke-static {p0}, LI/P;->q(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, LI/P;->S(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private y(I)Z
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private z(FF)Z
    .locals 3

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->A:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->A:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public M(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N(IZZ)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    iput-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    iget-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->t:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    # Block keyboard navigation when paging is disabled (M field is true)
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M:Z

    if-eqz v0, :continue_normal_key

    const/4 v0, 0x0

    return v0

    :continue_normal_key
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    # Block encoder wheel/rotary input when paging is disabled (M field is true)
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M:Z

    if-eqz v0, :continue_generic_vertical

    const/4 v0, 0x0

    return v0

    :continue_generic_vertical
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->b()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->b()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->r:F

    int-to-float v5, v1

    mul-float v4, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-virtual {v3, v2, v1}, Landroidx/core/widget/h;->h(II)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-virtual {v1, p1}, Landroidx/core/widget/h;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->s:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-virtual {v4, v3, v2}, Landroidx/core/widget/h;->h(II)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-virtual {v2, p1}, Landroidx/core/widget/h;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->V:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->W:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget v7, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget-object v8, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    :goto_1
    iget v11, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    iget v7, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    iget v11, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_2
    iget v11, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    iget-object v13, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->p:I

    float-to-int v15, v12

    move/from16 v16, v3

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->q:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v11, v11, v17

    float-to-int v11, v11

    invoke-virtual {v13, v14, v15, v3, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    # Block touch interception when paging is disabled (M field is true)
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M:Z

    if-eqz v0, :continue_normal

    const/4 v0, 0x0

    return v0

    :continue_normal
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->c:J

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ricktop.ClockSkinCoco.SCREENTOUCHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    if-eqz v4, :cond_2

    return v1

    :cond_2
    iget-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y:Z

    if-eqz v4, :cond_3

    return v3

    :cond_3
    const/4 v4, 0x2

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    if-ne v0, v2, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->E:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    invoke-direct {p0, v7, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->z(FF)Z

    move-result v7

    if-nez v7, :cond_7

    float-to-int v11, v3

    float-to-int v12, v0

    float-to-int v13, v2

    const/4 v10, 0x0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_7

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y:Z

    :cond_7
    iget v7, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    int-to-float v8, v7

    cmpl-float v8, v4, v8

    if-lez v8, :cond_a

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v4, v4, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->c()Z

    move-result v4

    if-nez v4, :cond_8

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    :cond_8
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->K()V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollState(I)V

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F:F

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F:F

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_0
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_a
    int-to-float v0, v7

    cmpl-float v0, v5, v0

    if-lez v0, :cond_b

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y:Z

    :cond_b
    :goto_1
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F(F)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->E:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->a0:I

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->L:I

    if-le v0, v2, :cond_d

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->K()V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollState(I)V

    goto :goto_2

    :cond_d
    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m(Z)V

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_f
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    return p1

    :cond_10
    :goto_3
    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->y:Z

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_11
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget-boolean v14, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-eqz v14, :cond_6

    iget v12, v12, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const v15, 0x800003

    if-eq v14, v15, :cond_1

    const v15, 0x800005

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_1

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_3

    :goto_4
    add-int/2addr v5, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_a

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    iget-boolean v10, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-nez v10, :cond_9

    invoke-direct {v0, v8}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v3

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v5

    iget-boolean v14, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->d:Z

    sub-int v14, v2, v4

    sub-int/2addr v14, v6

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget v9, v9, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->c:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v14, v9}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v8, v4, v10, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    iput v4, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->p:I

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->q:I

    iput v11, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->R:I

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->L(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->z:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-eqz v7, :cond_b

    iget v7, v3, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const v9, 0x800003

    if-eq v8, v9, :cond_3

    const v9, 0x800005

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_5

    const/high16 v8, 0x40000000    # 2.0f

    :cond_4
    const/high16 v9, -0x80000000

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_4

    const/high16 v9, 0x40000000    # 2.0f

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    :goto_5
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_6

    :cond_6
    move v10, p2

    goto :goto_5

    :cond_7
    move v10, p2

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p1

    goto :goto_7

    :cond_9
    move v3, p1

    move v5, v9

    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p1, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->t:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->t:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;

    if-nez v6, :cond_d

    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_a

    :cond_d
    iget-boolean v7, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->a:Z

    if-nez v7, :cond_e

    int-to-float v7, p1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$e;->c:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, p2, v6}, Landroid/view/View;->measure(II)V

    :cond_e
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v4, -0x1

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget v7, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->c:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->b:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i:I

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->c:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->d:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->k:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;

    invoke-direct {v1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    iput v0, v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->b:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->l()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$h;->c:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    invoke-direct {p0, p2, p4, p1, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->I(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_b

    const/4 v3, -0x1

    if-eq v0, v1, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    goto/16 :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->L(IZIZ)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->q()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->g()Z

    move-result v0

    :goto_0
    or-int/2addr p1, v0

    goto/16 :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->K()V

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F:F

    sub-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->B:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    :goto_1
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollState(I)V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F(F)Z

    move-result p1

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->x:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->H:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->J:I

    int-to-float v2, v2

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->getClientHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v()Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    move-result-object v5

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget v2, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->e:F

    sub-float/2addr v4, v2

    iget v2, v5, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->d:F

    div-float/2addr v4, v2

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v6, v4, v0, p1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o(IFII)I

    move-result p1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O(IZZI)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->q()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->O:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->g()Z

    move-result v0

    goto/16 :goto_0

    :goto_2
    if-eqz p1, :cond_c

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->E:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->C:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->F:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->D:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G:I

    :cond_c
    :goto_3
    return v1

    :cond_d
    :goto_4
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->r(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget v4, v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->b:I

    iget-object v2, v2, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->J()V

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->h:I

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b:I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;

    invoke-direct {p1, p0, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;-><init>(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$a;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->m:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$g;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/a;->j(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->v:Z

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->P:Z

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    invoke-virtual {v3}, Landroidx/viewpager/widget/a;->d()I

    move-result v3

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b:I

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i:I

    if-ltz v3, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->g:Landroidx/viewpager/widget/a;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->k:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v4}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i:I

    invoke-direct {p0, p1, v1, v2}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->N(IZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->i:I

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->j:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->k:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->w:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->G()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->S:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->I(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->M:Z

    return-void
.end method
