.class public Lcom/ricktop/ClockSkinCoco/VerticalViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;,
        Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;,
        Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;,
        Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;,
        Lcom/ricktop/ClockSkinCoco/VerticalViewPager$i;,
        Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;
    }
.end annotation


# static fields
.field private static final S:Ljava/util/Comparator;

.field private static final T:[I

.field private static final U:Landroid/view/animation/Interpolator;

.field private static final V:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$i;


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;

.field private D:I

.field private E:Landroidx/viewpager/widget/ViewPager$i;

.field private F:I

.field private G:Z

.field private H:Landroid/os/Parcelable;

.field private I:Ljava/lang/ClassLoader;

.field private J:I

.field private K:I

.field private L:Landroid/widget/Scroller;

.field private M:Z

.field private final N:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

.field private final O:Landroid/graphics/Rect;

.field private P:Landroidx/core/widget/h;

.field private Q:I

.field private R:Landroid/view/VelocityTracker;

.field private b:I

.field private c:Landroidx/viewpager/widget/a;

.field private d:Landroidx/core/widget/h;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/util/ArrayList;

.field private final l:Ljava/lang/Runnable;

.field private m:Z

.field private n:F

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private final v:Ljava/util/ArrayList;

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->T:[I

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$a;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$a;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->S:Ljava/util/Comparator;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$b;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$b;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->U:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$i;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$i;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->V:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->N:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->O:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->H:Landroid/os/Parcelable;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->I:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    const/4 p2, 0x1

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    new-instance p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$c;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$c;-><init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w()V

    return-void
.end method

.method private A(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, LI/o;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private B()Z
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L(IZ)V

    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private C(I)Z
    .locals 7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e:Z

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->z(IFI)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u()Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

    move-result v3

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e:Z

    invoke-direct {p0, v6, p1, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->z(IFI)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private D()Z
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L(IZ)V

    return v1
.end method

.method private E(F)Z
    .locals 9

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    mul-float v2, v2, v0

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget v6, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-eqz v6, :cond_0

    iget v1, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v8}, Landroidx/viewpager/widget/a;->d()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    mul-float v2, v2, v0

    const/4 v7, 0x0

    :cond_1
    cmpg-float v5, p1, v1

    if-gez v5, :cond_3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/h;->f(F)Z

    move-result v4

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v7, :cond_4

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/core/widget/h;->f(F)Z

    move-result v4

    :cond_4
    move p1, v2

    :cond_5
    :goto_1
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C(I)Z

    return v4
.end method

.method private F()V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G(I)V

    return-void
.end method

.method private G(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-eq v2, v1, :cond_0

    invoke-direct {v0, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v(I)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v2

    iput v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P()V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D:I

    iget v4, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v6}, Landroidx/viewpager/widget/a;->d()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget v9, v8, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-lt v9, v10, :cond_4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    iget v8, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-direct {v0, v8, v7}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->h(II)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_15

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    iget-object v11, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    iget v12, v8, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    const/high16 v13, 0x40000000    # 2.0f

    sub-float v12, v13, v12

    iget v14, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    :goto_4
    if-ltz v14, :cond_d

    cmpl-float v16, v15, v12

    if-ltz v16, :cond_a

    if-ge v14, v4, :cond_a

    if-nez v11, :cond_8

    goto :goto_7

    :cond_8
    iget v3, v11, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ne v14, v3, :cond_c

    iget-boolean v3, v11, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->e:Z

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget-object v11, v11, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0, v14, v11}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_9

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    move-object v11, v3

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    iget v3, v11, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ne v14, v3, :cond_b

    iget v3, v11, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v15, v3

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_9

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v10, 0x1

    invoke-direct {v0, v14, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->h(II)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v3

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v15, v3

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_9

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    iget v3, v8, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v10, v3, v13

    if-gez v10, :cond_14

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    iget v11, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    :goto_9
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_14

    cmpl-float v12, v3, v13

    if-ltz v12, :cond_11

    if-le v11, v1, :cond_11

    if-nez v10, :cond_f

    goto :goto_b

    :cond_f
    iget v12, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ne v11, v12, :cond_13

    iget-boolean v12, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->e:Z

    if-nez v12, :cond_13

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget-object v10, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v10}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    goto :goto_a

    :cond_11
    if-eqz v10, :cond_12

    iget v12, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ne v11, v12, :cond_12

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v3, v10

    add-int/lit8 v4, v4, 0x1

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_a

    :cond_12
    invoke-direct {v0, v11, v4}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->h(II)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v3, v10

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    :cond_13
    :goto_a
    goto :goto_9

    :cond_14
    :goto_b
    invoke-direct {v0, v8, v7, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->j(Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;ILcom/ricktop/ClockSkinCoco/VerticalViewPager$d;)V

    :cond_15
    if-eqz v8, :cond_16

    iget-object v1, v8, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    if-eqz v1, :cond_16

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-virtual {v2, v0, v3, v1}, Landroidx/viewpager/widget/a;->n(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    :cond_16
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v6, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-nez v6, :cond_17

    iget v6, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->c:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_17

    invoke-direct {v0, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v3

    if-eqz v3, :cond_17

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    iput v3, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->c:F

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v3

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_1a

    iget v1, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-eq v1, v2, :cond_1c

    :cond_1a
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1c

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v2, v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_f

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1c
    :goto_f
    return-void
.end method

.method private H(IIII)V
    .locals 6

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float p3, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr v0, p2

    mul-float p3, p3, v0

    float-to-int v2, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p2, v2}, Landroid/view/View;->scrollTo(II)V

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v(I)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object p2

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int v4, p2

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->timePassed()I

    move-result p2

    sub-int v5, p1, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v(I)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    if-eqz p2, :cond_3

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_4
    return-void
.end method

.method private I()V
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

    check-cast v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v1, v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private J()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private K(IZIZ)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v(I)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    iget v0, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

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

    invoke-direct {p0, v1, v0, p3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->O(III)V

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l(Z)V

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C(I)Z

    return-void
.end method

.method private L(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M(IZZ)V

    return-void
.end method

.method private M(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->N(IZZI)V

    return-void
.end method

.method private N(IZZI)V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_2

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-ne p3, p1, :cond_2

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_5

    :cond_2
    :goto_0
    const/4 p3, 0x1

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_4
    :goto_1
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D:I

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_5

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_6

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iput-boolean p3, v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->e:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-ne v0, p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    :goto_3
    iget-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    if-eqz p3, :cond_9

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K(IZIZ)V

    goto :goto_5

    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    :goto_5
    return-void
.end method

.method private O(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

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

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l(Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollState(I)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    int-to-float p2, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->o(F)F

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
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v0

    mul-float p1, p1, v0

    add-float/2addr p3, p1

    div-float/2addr p2, p3

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    return-void
.end method

.method private P()V
    .locals 4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->j:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k:Ljava/util/ArrayList;

    sget-object v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->V:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->T:[I

    return-object v0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)Landroidx/viewpager/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    return-object p0
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    return p0
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x(I)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m()V

    return-void
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

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

.method private h(II)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;-><init>()V

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->g(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p1

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private i(I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    if-ne v2, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x82

    const/16 v3, 0x21

    if-eqz v1, :cond_a

    if-ne v1, v0, :cond_4

    goto :goto_4

    :cond_4
    if-ne p1, v3, :cond_7

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->O:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->O:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D()Z

    move-result v0

    goto :goto_7

    :cond_6
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_7

    :cond_7
    if-ne p1, v2, :cond_c

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->O:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->O:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->B()Z

    move-result v0

    goto :goto_7

    :cond_9
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_7

    :cond_a
    :goto_4
    if-eq p1, v3, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_6

    :cond_b
    if-eq p1, v2, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    :goto_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->B()Z

    move-result v0

    goto :goto_7

    :cond_e
    :goto_6
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D()Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_f

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_f
    return v0
.end method

.method private j(Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;ILcom/ricktop/ClockSkinCoco/VerticalViewPager$d;)V
    .locals 9

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_6

    iget v1, p3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ge v1, v3, :cond_3

    iget v3, p3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v3, p3

    add-float/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    const/4 p3, 0x0

    :goto_1
    iget v4, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-gt v1, v4, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    :goto_2
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-le v1, v5, :cond_1

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p3, v5, :cond_1

    add-int/lit8 p3, p3, 0x1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_2

    :cond_1
    :goto_3
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iput v3, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_6

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    add-int/lit8 v1, v1, -0x1

    :goto_4
    iget v4, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-lt v1, v4, :cond_6

    if-ltz v3, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    :goto_5
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ge v1, v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    goto :goto_5

    :cond_4
    :goto_6
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-le v1, v5, :cond_5

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_5
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    iput p3, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_7

    move v5, v1

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    add-int/lit8 v5, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_8

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v3, v1

    sub-float/2addr v3, v6

    goto :goto_8

    :cond_8
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    add-int/lit8 v3, p2, -0x1

    :goto_9
    if-ltz v3, :cond_b

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    :goto_a
    iget v7, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-le v4, v7, :cond_9

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v7, v4}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v7

    add-float/2addr v7, v2

    sub-float/2addr v1, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_9
    iget v8, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v8, v2

    sub-float/2addr v1, v8

    iput v1, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    if-nez v7, :cond_a

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_b
    iget v1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    :goto_c
    iget v4, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ge p1, v4, :cond_c

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v4, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v1, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_d

    iget v4, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    :cond_d
    iput v1, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private k(Landroid/view/View;ZIII)Z
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

    invoke-direct/range {v6 .. v11}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k(Landroid/view/View;ZIII)Z

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

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private l(Z)V
    .locals 7

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K:I

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

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget-boolean v5, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->e:Z

    if-eqz v5, :cond_3

    iput-boolean v3, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->e:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l:Ljava/lang/Runnable;

    invoke-static {p0, p1}, LI/P;->I(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method

.method private m()V
    .locals 10

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget-object v9, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/a;->e(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    :cond_1
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget v8, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget-object v9, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    iget v7, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ne v1, v7, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    iget v9, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-eq v9, v8, :cond_5

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-ne v9, v1, :cond_4

    move v2, v8

    :cond_4
    iput v8, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    :cond_7
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    sget-object v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->S:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_9

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v6, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-nez v6, :cond_8

    const/4 v6, 0x0

    iput v6, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->c:F

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-direct {p0, v2, v4, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M(IZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-void
.end method

.method private n(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->o:I

    if-le p4, v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->B:I

    if-gt p4, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    int-to-float p3, p1

    add-float/2addr p3, p2

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-lt p1, p2, :cond_3

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_3
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr p3, p1

    float-to-int p1, p3

    :goto_2
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_4

    return p1

    :cond_4
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private o(F)F
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

.method private p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private q(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_5

    const/16 v2, 0x16

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->i(I)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->i(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    const/16 p1, 0x42

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->i(I)Z

    move-result p1

    return p1

    :cond_5
    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->i(I)Z

    move-result p1

    return p1
.end method

.method private r(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

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

    check-cast p2, Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_2

    if-eq p2, p0, :cond_2

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

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private s(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->b(I)V

    :cond_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M:Z

    :cond_0
    return-void
.end method

.method private t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget-object v3, v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

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

.method private u()Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;
    .locals 13

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

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

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

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
    iget-object v10, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_6

    iget-object v10, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    if-nez v9, :cond_2

    iget v11, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    add-int/2addr v6, v5

    if-eq v11, v6, :cond_2

    iget-object v10, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->N:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iput v6, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v1

    iput v1, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-int/lit8 v8, v8, -0x1

    :cond_2
    move-object v6, v10

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    iget v4, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    if-nez v9, :cond_3

    cmpg-float v9, v2, v1

    if-gez v9, :cond_3

    return-object v7

    :cond_3
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_4

    goto :goto_3

    :cond_4
    iget v4, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v7, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    move-object v12, v6

    move v6, v4

    move v4, v7

    move-object v7, v12

    goto :goto_2

    :cond_5
    :goto_3
    return-object v6

    :cond_6
    return-object v7
.end method

.method private v(I)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget v2, v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private w()V
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

    sget-object v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->U:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ricktop/ClockSkinCoco/WatchApp;->e()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->B:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->A:I

    new-instance v2, Landroidx/core/widget/h;

    invoke-direct {v2, v1}, Landroidx/core/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    new-instance v2, Landroidx/core/widget/h;

    invoke-direct {v2, v1}, Landroidx/core/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->o:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->f:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->i:I

    new-instance v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$f;-><init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V

    invoke-static {p0, v1}, LI/P;->N(Landroid/view/View;LI/a;)V

    invoke-static {p0}, LI/P;->q(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, LI/P;->S(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private x(I)Z
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->getClientHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-gt v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    if-gtz p1, :cond_3

    return v1

    :cond_3
    int-to-float p1, v0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-lt v2, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private y(FF)Z
    .locals 3

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->p:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->p:I

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

.method private z(IFI)V
    .locals 10

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->h:I

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

    check-cast v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v8, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-eqz v8, :cond_4

    iget v7, v7, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->b:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x10

    if-eq v7, v8, :cond_2

    const/16 v8, 0x30

    if-eq v7, v8, :cond_1

    const/16 v8, 0x50

    if-eq v7, v8, :cond_0

    move v7, v1

    goto :goto_2

    :cond_0
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

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    goto :goto_2

    :cond_2
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

    if-eqz v1, :cond_3

    invoke-virtual {v6, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    move v1, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e:Z

    return-void
.end method


# virtual methods
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

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

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

    if-ne v0, p2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
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

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    iput-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->q:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->e:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_1

    if-eq v1, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->q(Landroid/view/KeyEvent;)Z

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

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->b()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->b()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

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

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n:F

    int-to-float v5, v1

    mul-float v4, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    invoke-virtual {v3, v2, v1}, Landroidx/core/widget/h;->h(II)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    invoke-virtual {v1, p1}, Landroidx/core/widget/h;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

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

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

    invoke-virtual {v4, v3, v2}, Landroidx/core/widget/h;->h(II)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

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
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->a:I

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v8, 0x0

    if-eq v0, v1, :cond_d

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    if-eqz v1, :cond_1

    return v9

    :cond_1
    iget-boolean v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->A(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_4
    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    if-eq v0, v2, :cond_b

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    sub-float v11, v10, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_5

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    invoke-direct {v6, v0, v11}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->y(FF)Z

    move-result v0

    if-nez v0, :cond_5

    float-to-int v3, v11

    float-to-int v4, v13

    float-to-int v5, v10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->k(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v13, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    iput v10, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u:Z

    return v8

    :cond_5
    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    int-to-float v1, v0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_7

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v12, v12, v1

    cmpl-float v1, v12, v14

    if-lez v1, :cond_7

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J()V

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollState(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_6

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s:F

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_6
    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s:F

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    iput v13, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_7
    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_8

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u:Z

    :cond_8
    :goto_1
    iget-boolean v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    if-eqz v0, :cond_b

    invoke-direct {v6, v10}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E(F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static/range {p0 .. p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r:F

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s:F

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u:Z

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K:I

    if-ne v0, v1, :cond_a

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->f:I

    if-le v0, v1, :cond_a

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J()V

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollState(I)V

    goto :goto_2

    :cond_a
    invoke-direct {v6, v8}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->l(Z)V

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    :cond_b
    :goto_2
    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    :cond_c
    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    return v0

    :cond_d
    :goto_3
    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u:Z

    iput v2, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    :cond_e
    return v8
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

    check-cast v12, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v14, v12, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-eqz v14, :cond_6

    iget v12, v12, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->b:I

    and-int/lit8 v14, v12, 0x70

    and-int/lit8 v12, v12, 0x7

    const/4 v15, 0x1

    if-eq v12, v15, :cond_2

    const/4 v15, 0x3

    if-eq v12, v15, :cond_1

    const/4 v15, 0x5

    if-eq v12, v15, :cond_0

    move v12, v4

    goto :goto_2

    :cond_0
    sub-int v12, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    :goto_1
    move/from16 v17, v12

    move v12, v4

    move/from16 v4, v17

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v2, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_1

    :goto_2
    const/16 v15, 0x10

    if-eq v14, v15, :cond_5

    const/16 v15, 0x30

    if-eq v14, v15, :cond_4

    const/16 v15, 0x50

    if-eq v14, v15, :cond_3

    move v14, v5

    goto :goto_4

    :cond_3
    sub-int v14, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    :goto_3
    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v3, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_3

    :goto_4
    add-int/2addr v5, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move v5, v14

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

    check-cast v9, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    iget-boolean v10, v9, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-nez v10, :cond_9

    invoke-direct {v0, v8}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v3

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v5

    iget-boolean v14, v9, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->e:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->e:Z

    sub-int v14, v2, v4

    sub-int/2addr v14, v6

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget v9, v9, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->c:F

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
    iput v4, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->z:I

    iput v11, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->h:I

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

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

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->i:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->p:I

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

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    if-eqz v3, :cond_b

    iget-boolean v6, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->d:Z

    if-eqz v6, :cond_b

    iget v6, v3, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->b:I

    and-int/lit8 v7, v6, 0x7

    and-int/lit8 v6, v6, 0x70

    const/16 v8, 0x30

    if-eq v6, v8, :cond_1

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v7, -0x80000000

    const/4 v8, 0x2

    if-eqz v6, :cond_5

    const/4 v7, 0x2

    :cond_4
    const/high16 v9, -0x80000000

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_4

    const/4 v9, 0x2

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    :goto_5
    const/4 v7, 0x2

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

    move v8, v9

    :goto_7
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5, v7, v3}, Landroid/view/View;->measure(II)V

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p1, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->q:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->q:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;

    if-eqz v5, :cond_d

    int-to-float v6, p1

    iget v5, v5, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$e;->c:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/view/View;->measure(II)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
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

    invoke-direct {p0, v5}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v7, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

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

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M(IZZ)V

    return-void

    :cond_0
    iget v0, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->d:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J:I

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->H:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->c:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->I:Ljava/lang/ClassLoader;

    return-void

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    iput v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->d:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->l()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$h;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

    invoke-direct {p0, p2, p4, p1, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->H(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->A(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    goto/16 :goto_3

    :cond_4
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-direct {p0, p1, v2, v1, v1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->K(IZIZ)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->p()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->g()Z

    move-result v0

    :goto_0
    or-int/2addr p1, v0

    goto/16 :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J()V

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s:F

    sub-float/2addr v1, v3

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->Q:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    :goto_1
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollState(I)V

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E(F)Z

    move-result p1

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->t:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->R:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->A:I

    int-to-float v1, v1

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->u()Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    move-result-object v1

    iget v4, v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget v5, v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->c:F

    div-float v6, v5, v5

    sub-float/2addr v6, v5

    iget v1, v1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->a:F

    div-float/2addr v6, v1

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {p0, v4, v6, v0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->n(IFII)I

    move-result p1

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->N(IZZI)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->p()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->d:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->g()Z

    move-result v0

    goto/16 :goto_0

    :goto_2
    if-eqz p1, :cond_a

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->L:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->r:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->w:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->s:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->x:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->b:I

    :cond_a
    :goto_3
    return v2

    :cond_b
    return v1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->q:Z

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->r(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget v4, v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->d:I

    iget-object v2, v2, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$d;->b:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->I()V

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->g:I

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;

    invoke-direct {p1, p0, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;-><init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;Lcom/ricktop/ClockSkinCoco/VerticalViewPager$a;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->C:Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/a;->j(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J:I

    if-ltz v3, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->c:Landroidx/viewpager/widget/a;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->H:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->I:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v4}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J:I

    invoke-direct {p0, p1, v1, v2}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M(IZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->J:I

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->H:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->I:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->G:Z

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->m:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->M(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->D:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->E:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->H(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
