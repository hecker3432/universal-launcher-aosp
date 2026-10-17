.class public abstract Lcom/ricktop/ClockSkinCoco/H;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/H$d;,
        Lcom/ricktop/ClockSkinCoco/H$k;,
        Lcom/ricktop/ClockSkinCoco/H$f;,
        Lcom/ricktop/ClockSkinCoco/H$h;,
        Lcom/ricktop/ClockSkinCoco/H$i;,
        Lcom/ricktop/ClockSkinCoco/H$g;,
        Lcom/ricktop/ClockSkinCoco/H$e;,
        Lcom/ricktop/ClockSkinCoco/H$j;
    }
.end annotation


# static fields
.field private static final e0:[I

.field private static final f0:Ljava/util/Comparator;

.field private static final g0:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:I

.field private G:Landroid/view/VelocityTracker;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:J

.field private M:I

.field private N:I

.field private O:Z

.field private P:Landroidx/core/widget/h;

.field private Q:Landroidx/core/widget/h;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Ljava/lang/reflect/Method;

.field private W:I

.field private a0:Ljava/util/ArrayList;

.field private b:I

.field private final b0:Ljava/util/Comparator;

.field private final c:Ljava/util/ArrayList;

.field private final c0:Ljava/lang/Runnable;

.field private final d:Lcom/ricktop/ClockSkinCoco/H$d;

.field private d0:I

.field private final e:Landroid/graphics/Rect;

.field private f:Landroidx/viewpager/widget/a;

.field private g:I

.field private h:I

.field private i:Landroid/os/Parcelable;

.field private j:Ljava/lang/ClassLoader;

.field private k:Lcom/ricktop/ClockSkinCoco/G;

.field private l:Lcom/ricktop/ClockSkinCoco/H$i;

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private final s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/H;->e0:[I

    new-instance v0, Lcom/ricktop/ClockSkinCoco/H$a;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/H$a;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/H;->f0:Ljava/util/Comparator;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/H$b;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/H$b;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/H;->g0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/H$d;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/H$d;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->d:Lcom/ricktop/ClockSkinCoco/H$d;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->e:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->h:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/H;->i:Landroid/os/Parcelable;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/H;->j:Ljava/lang/ClassLoader;

    const p2, -0x800001

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/H;->s:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->v:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/H;->S:Z

    new-instance p1, Lcom/ricktop/ClockSkinCoco/H$k;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/H$k;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->b0:Ljava/util/Comparator;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/H$c;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/H$c;-><init>(Lcom/ricktop/ClockSkinCoco/H;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c0:Ljava/lang/Runnable;

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/H;->d0:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->y()V

    return-void
.end method

.method private A(IFI)V
    .locals 8

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/H;->U:I

    const/4 p2, 0x1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v6, v5, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    iget v5, v5, Lcom/ricktop/ClockSkinCoco/H$e;->b:I

    and-int/lit8 v5, v5, 0x7

    if-eq v5, p2, :cond_3

    const v6, 0x800003

    if-eq v5, v6, :cond_2

    const v6, 0x800005

    if-eq v5, v6, :cond_1

    move v5, p3

    goto :goto_2

    :cond_1
    sub-int v5, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    :goto_1
    move v7, v5

    move v5, p3

    move p3, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, p3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :goto_2
    add-int/2addr p3, p1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr p3, v6

    if-eqz p3, :cond_4

    invoke-virtual {v4, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move p3, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->R()V

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/H;->T:Z

    return-void
.end method

.method private B(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, LI/o;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private C()Z
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->M(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private D()Z
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/ricktop/ClockSkinCoco/H;->M(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private E(I)Z
    .locals 7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/H;->T:Z

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v2}, Lcom/ricktop/ClockSkinCoco/H;->A(IFI)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/H;->T:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->v()Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v3

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/H;->T:Z

    invoke-direct {p0, v6, p1, v0}, Lcom/ricktop/ClockSkinCoco/H;->A(IFI)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/H;->T:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private F(F)Z
    .locals 9

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    mul-float v2, v2, v0

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/H$d;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    iget v6, v3, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-eqz v6, :cond_0

    iget v1, v3, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v8}, Landroidx/viewpager/widget/a;->d()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    mul-float v2, v2, v0

    const/4 v7, 0x0

    :cond_1
    const/4 v5, 0x2

    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-eq v2, v5, :cond_2

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

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

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eq v1, v5, :cond_4

    if-eqz v7, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/core/widget/h;->f(F)Z

    move-result v4

    :cond_4
    move p1, v2

    :cond_5
    :goto_1
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->E(I)Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->v()Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object p1

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->H(I)V

    return v4
.end method

.method private G()V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->H(I)V

    return-void
.end method

.method private H(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-eq v2, v1, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v4, 0x42

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    :goto_0
    invoke-direct {v0, v2}, Lcom/ricktop/ClockSkinCoco/H;->w(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v2

    iput v1, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v2, 0x0

    :goto_1
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->Q()V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/H;->v:I

    iget v5, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v7}, Landroidx/viewpager/widget/a;->d()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    iget v9, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v8, v0, Lcom/ricktop/ClockSkinCoco/H;->b:I

    if-ne v7, v8, :cond_20

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v9, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/H$d;

    iget v10, v9, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v11, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-lt v10, v11, :cond_4

    if-ne v10, v11, :cond_5

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_6

    if-lez v7, :cond_6

    iget v9, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-direct {v0, v9, v8}, Lcom/ricktop/ClockSkinCoco/H;->g(II)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v9

    :cond_6
    if-eqz v9, :cond_17

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_7

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_8

    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    iget v15, v9, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v15, v3

    :goto_5
    iget v3, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_6
    if-ltz v3, :cond_e

    cmpl-float v16, v6, v15

    if-ltz v16, :cond_b

    if-ge v3, v5, :cond_b

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    iget v10, v12, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ne v3, v10, :cond_d

    iget-boolean v10, v12, Lcom/ricktop/ClockSkinCoco/H$d;->c:Z

    if-nez v10, :cond_d

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget-object v12, v12, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v3, v12}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v11, :cond_a

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    goto :goto_8

    :cond_b
    if-eqz v12, :cond_c

    iget v10, v12, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ne v3, v10, :cond_c

    iget v10, v12, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_a

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v11, 0x1

    invoke-direct {v0, v3, v10}, Lcom/ricktop/ClockSkinCoco/H;->g(II)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v10

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    if-ltz v11, :cond_a

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_7

    :cond_d
    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_e
    :goto_9
    iget v3, v9, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-int/lit8 v5, v8, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_16

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    :goto_a
    if-gtz v13, :cond_10

    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v13

    div-float/2addr v10, v11

    add-float/2addr v10, v14

    :goto_b
    iget v11, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    :goto_c
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v7, :cond_16

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13

    if-le v11, v1, :cond_13

    if-nez v6, :cond_11

    goto :goto_e

    :cond_11
    iget v12, v6, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ne v11, v12, :cond_15

    iget-boolean v12, v6, Lcom/ricktop/ClockSkinCoco/H$d;->c:Z

    if-nez v12, :cond_15

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget-object v6, v6, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v6}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    goto :goto_d

    :cond_13
    if-eqz v6, :cond_14

    iget v12, v6, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ne v11, v12, :cond_14

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_d

    :cond_14
    invoke-direct {v0, v11, v5}, Lcom/ricktop/ClockSkinCoco/H;->g(II)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/H$d;

    :cond_15
    :goto_d
    goto :goto_c

    :cond_16
    :goto_e
    invoke-direct {v0, v9, v8, v2}, Lcom/ricktop/ClockSkinCoco/H;->i(Lcom/ricktop/ClockSkinCoco/H$d;ILcom/ricktop/ClockSkinCoco/H$d;)V

    :cond_17
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-eqz v9, :cond_18

    iget-object v3, v9, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/a;->n(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$e;

    iput v2, v5, Lcom/ricktop/ClockSkinCoco/H$e;->f:I

    iget-boolean v6, v5, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-nez v6, :cond_19

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$e;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1a

    invoke-direct {v0, v3}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget v6, v3, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    iput v6, v5, Lcom/ricktop/ClockSkinCoco/H$e;->c:F

    iget v3, v3, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iput v3, v5, Lcom/ricktop/ClockSkinCoco/H$e;->e:I

    goto :goto_11

    :cond_19
    const/4 v7, 0x0

    :cond_1a
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->S()V

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->T()V

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->Q()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v3

    goto :goto_12

    :cond_1c
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_1d

    iget v1, v3, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v2, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-eq v1, v2, :cond_1f

    :cond_1d
    const/4 v6, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_1f

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget v2, v2, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-ne v2, v3, :cond_1e

    invoke-virtual {v1, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_14

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1f
    :goto_14
    return-void

    :cond_20
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

    iget v4, v0, Lcom/ricktop/ClockSkinCoco/H;->b:I

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

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

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
    .locals 7

    const/4 v0, 0x0

    if-lez p2, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v1

    mul-float p3, p3, p2

    float-to-int v2, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroid/view/View;->scrollTo(II)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/G;->l()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/H;->M:I

    int-to-long p2, p2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    sub-long/2addr p2, v3

    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/H;->L:J

    sub-long/2addr p2, v3

    long-to-int p3, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/H;->w(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object p2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/ricktop/ClockSkinCoco/H;->L:J

    iput v6, p0, Lcom/ricktop/ClockSkinCoco/H;->M:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int v4, p2

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ricktop/ClockSkinCoco/G;->p(IIIII)V

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/H;->w(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_2

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->k(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

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

    check-cast v1, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v1, v1, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private K(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private L(IZIZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->w(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p4, p3}, Lcom/ricktop/ClockSkinCoco/H;->P(III)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p4}, Lcom/ricktop/ClockSkinCoco/H;->k(Z)V

    invoke-virtual {p0, p1, p4}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->E(I)Z

    :goto_1
    return-void
.end method

.method private N(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ricktop/ClockSkinCoco/H;->O(IZZI)V

    return-void
.end method

.method private O(IZZI)V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->v:I

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/H$d;

    iput-boolean p3, v2, Lcom/ricktop/ClockSkinCoco/H$d;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    if-eqz p3, :cond_7

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->H(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/ricktop/ClockSkinCoco/H;->L(IZIZ)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method private P(III)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

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

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->k(Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

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

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->o(F)F

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
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x12c    # 300ms - reduced from 600ms (0x258) for faster snapping

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ricktop/ClockSkinCoco/H;->L:J

    iput v7, p0, Lcom/ricktop/ClockSkinCoco/H;->M:I

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual/range {v2 .. v7}, Lcom/ricktop/ClockSkinCoco/G;->p(IIIII)V

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    return-void
.end method

.method private Q()V
    .locals 4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->W:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->a0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->a0:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->a0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->a0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->b0:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private R()V
    .locals 0

    return-void
.end method

.method private S()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v2, v2, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private T()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v2, v2, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/H;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/H;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    return-void
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/H;)Landroidx/viewpager/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    return-object p0
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/H;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    return p0
.end method

.method static synthetic e(Lcom/ricktop/ClockSkinCoco/H;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->m()V

    return-void
.end method

.method static synthetic f()[I
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/H;->e0:[I

    return-object v0
.end method

.method private g(II)Lcom/ricktop/ClockSkinCoco/H$d;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/H$d;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/H$d;-><init>()V

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->g(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p1

    iput p1, v0, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h(I)Z
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

    const-string v2, "VelocityViewPager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x42

    const/16 v3, 0x11

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    if-ne p1, v3, :cond_6

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ricktop/ClockSkinCoco/H;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ricktop/ClockSkinCoco/H;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v2, v3, :cond_5

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->C()Z

    move-result v0

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_6

    :cond_6
    if-ne p1, v2, :cond_a

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ricktop/ClockSkinCoco/H;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ricktop/ClockSkinCoco/H;->s(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v2, v3, :cond_7

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->D()Z

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
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->D()Z

    move-result v0

    goto :goto_6

    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->C()Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v0
.end method

.method private i(Lcom/ricktop/ClockSkinCoco/H$d;ILcom/ricktop/ClockSkinCoco/H$d;)V
    .locals 10

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    iget v3, p3, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v4, p1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ge v3, v4, :cond_3

    iget v4, p3, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    const/4 p3, 0x0

    :goto_1
    iget v5, p1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    :goto_2
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_2

    :cond_1
    :goto_3
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iput v4, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v5, v5, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    add-int/lit8 v3, v3, -0x1

    :goto_4
    iget v5, p1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    :goto_5
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_5

    :cond_4
    :goto_6
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-le v3, v6, :cond_5

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    iput p3, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v3, p1, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v4, p1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    const v6, -0x800001

    :goto_7
    iput v6, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    iget v4, p1, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ricktop/ClockSkinCoco/H$d;

    :goto_a
    iget v8, v7, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-le v5, v8, :cond_9

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    :cond_9
    iget v9, v7, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    iput v3, v7, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    if-nez v8, :cond_a

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_b
    iget v3, p1, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v4, p1, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v4, p1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    :goto_c
    iget v7, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ge v4, v7, :cond_c

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    move v4, v8

    goto :goto_c

    :cond_c
    if-ne v7, v0, :cond_d

    iget v7, p1, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v7, v3

    sub-float/2addr v7, v6

    iput v7, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    :cond_d
    iput v3, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v5, v5, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/H;->S:Z

    return-void
.end method

.method private j(Landroid/view/View;ZIII)Z
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

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v10, v6, v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/ricktop/ClockSkinCoco/H;->j(Landroid/view/View;ZIII)Z

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

    invoke-static {p1, v1}, LI/P;->c(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private k(Z)V
    .locals 7

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->d0:I

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

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v5}, Lcom/ricktop/ClockSkinCoco/G;->i()I

    move-result v5

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v6}, Lcom/ricktop/ClockSkinCoco/G;->j()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/H$d;

    iget-boolean v5, v4, Lcom/ricktop/ClockSkinCoco/H$d;->c:Z

    if-eqz v5, :cond_3

    iput-boolean v3, v4, Lcom/ricktop/ClockSkinCoco/H$d;->c:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, LI/P;->I(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->c0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private l(I)I
    .locals 8

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/core/widget/h;->d(I)Z

    :cond_0
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {p1, v1, v3, v3, v3}, Lcom/ricktop/ClockSkinCoco/G;->o(IIII)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    return v1

    :cond_1
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    if-le p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/core/widget/h;->d(I)Z

    :cond_2
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {p1, v1, v3, v3, v3}, Lcom/ricktop/ClockSkinCoco/G;->o(IIII)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    return v1

    :cond_3
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/G;->k()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->x(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v4

    iget v5, v4, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    mul-float v5, v5, v0

    float-to-int v5, v5

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    mul-float v4, v4, v0

    float-to-int v0, v4

    if-le v1, v0, :cond_8

    add-int v4, v0, v5

    if-ge v1, v4, :cond_8

    sub-int v6, v1, v0

    div-int/lit8 v7, v5, 0x2

    if-le v6, v7, :cond_4

    move v0, v4

    :cond_4
    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    if-ne v4, v2, :cond_6

    if-le v1, v0, :cond_5

    if-le p1, v0, :cond_8

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/G;->n(III)V

    goto :goto_0

    :cond_5
    sub-int v1, v0, v5

    if-le p1, v1, :cond_8

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v1, v0}, Lcom/ricktop/ClockSkinCoco/G;->m(I)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    if-ne v4, v2, :cond_8

    if-ge v1, v0, :cond_7

    if-ge p1, v0, :cond_8

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/G;->n(III)V

    goto :goto_0

    :cond_7
    add-int/2addr v5, v0

    if-ge p1, v5, :cond_8

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v1, v0}, Lcom/ricktop/ClockSkinCoco/G;->m(I)V

    :cond_8
    :goto_0
    return p1
.end method

.method private m()V
    .locals 10

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->v:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ricktop/ClockSkinCoco/H$d;

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget-object v9, v7, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/a;->e(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    :cond_2
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget v8, v7, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget-object v9, v7, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    iget v7, v7, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

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
    iget v9, v7, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-eq v9, v8, :cond_6

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    if-ne v9, v1, :cond_5

    move v2, v8

    :cond_5
    iput v8, v7, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->S()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->T()V

    :cond_8
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    sget-object v5, Lcom/ricktop/ClockSkinCoco/H;->f0:Ljava/util/Comparator;

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

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v6, v5, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    iput v6, v5, Lcom/ricktop/ClockSkinCoco/H$e;->c:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-direct {p0, v2, v4, v3}, Lcom/ricktop/ClockSkinCoco/H;->N(IZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-void
.end method

.method private n(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->J:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->H:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

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
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/H$d;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ricktop/ClockSkinCoco/H$d;

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget p3, p3, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
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

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->x:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private q(Landroid/view/KeyEvent;)Z
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

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->h(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->h(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->h(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->h(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private r(I)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    neg-int v3, p1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/4 v4, 0x0

    move v2, v8

    move v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/ricktop/ClockSkinCoco/G;->f(IIIIIIII)V

    const/4 v0, 0x2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->N:I

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    return-void
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

.method private setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->V:Ljava/lang/reflect/Method;

    const-string v3, "VelocityViewPager"

    if-nez v2, :cond_0

    :try_start_0
    const-class v2, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->V:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->V:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Error changing children drawing order"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->d0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->d0:I

    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/H;->u:Z

    :cond_0
    return-void
.end method

.method private t(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;
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
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object p1

    return-object p1
.end method

.method private u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/H$d;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget-object v3, v1, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

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

.method private v()Lcom/ricktop/ClockSkinCoco/H$d;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->x(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v0

    return-object v0
.end method

.method private w(I)Lcom/ricktop/ClockSkinCoco/H$d;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/ClockSkinCoco/H$d;

    iget v2, v1, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private x(I)Lcom/ricktop/ClockSkinCoco/H$d;
    .locals 12

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    int-to-float p1, p1

    int-to-float v2, v0

    div-float/2addr p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_2
    iget-object v9, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    iget-object v9, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/H$d;

    if-nez v8, :cond_2

    iget v10, v9, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    add-int/2addr v5, v4

    if-eq v10, v5, :cond_2

    iget-object v9, p0, Lcom/ricktop/ClockSkinCoco/H;->d:Lcom/ricktop/ClockSkinCoco/H$d;

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v9, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iput v5, v9, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v1

    iput v1, v9, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-int/lit8 v7, v7, -0x1

    :cond_2
    move-object v5, v9

    iget v1, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v3, v5, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float/2addr v3, v1

    add-float/2addr v3, v2

    if-nez v8, :cond_4

    cmpl-float v8, p1, v1

    if-ltz v8, :cond_3

    goto :goto_3

    :cond_3
    return-object v6

    :cond_4
    :goto_3
    cmpg-float v3, p1, v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v7, v3, :cond_5

    goto :goto_4

    :cond_5
    iget v3, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v6, v5, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    move-object v11, v5

    move v5, v3

    move v3, v6

    move-object v6, v11

    goto :goto_2

    :cond_6
    :goto_4
    return-object v5

    :cond_7
    return-object v6
.end method

.method private y()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ricktop/ClockSkinCoco/G;

    sget-object v3, Lcom/ricktop/ClockSkinCoco/H;->g0:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Lcom/ricktop/ClockSkinCoco/G;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/H;->A:I

    const/high16 v4, 0x44960000    # 1200.0f - increased from 400.0f for easier snapping

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/H;->H:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/H;->I:I

    new-instance v2, Landroidx/core/widget/h;

    invoke-direct {v2, v1}, Landroidx/core/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    new-instance v2, Landroidx/core/widget/h;

    invoke-direct {v2, v1}, Landroidx/core/widget/h;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/H;->J:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/H;->K:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/H;->y:I

    new-instance v1, Lcom/ricktop/ClockSkinCoco/H$f;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/H$f;-><init>(Lcom/ricktop/ClockSkinCoco/H;)V

    invoke-static {p0, v1}, LI/P;->N(Landroid/view/View;LI/a;)V

    invoke-static {p0}, LI/P;->q(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, LI/P;->S(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private z(FF)Z
    .locals 3

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->z:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->z:I

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
.method M(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ricktop/ClockSkinCoco/H;->N(IZZ)V

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

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

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

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

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

    invoke-virtual {p0, p3}, Lcom/ricktop/ClockSkinCoco/H;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/ricktop/ClockSkinCoco/H;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    iput-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    iget-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/H;->t:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/H$e;->d:Z

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

.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/H$e;

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v2}, Lcom/ricktop/ClockSkinCoco/G;->i()I

    move-result v2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v3}, Lcom/ricktop/ClockSkinCoco/G;->j()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/H;->x(I)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v0

    iget v0, v0, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->H(I)V

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/H;->l(I)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->E(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->k(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->q(Landroid/view/KeyEvent;)Z

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

    invoke-direct {p0, v3}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->b()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->b()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->q:F

    int-to-float v5, v2

    mul-float v4, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/h;->h(II)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {v1, p1}, Landroidx/core/widget/h;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/H;->r:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-virtual {v4, v3, v2}, Landroidx/core/widget/h;->h(II)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->n:Landroid/graphics/drawable/Drawable;

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

    new-instance v0, Lcom/ricktop/ClockSkinCoco/H$e;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/H$e;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/H$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ricktop/ClockSkinCoco/H$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/H;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->W:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->a0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/H$e;

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/H$e;->f:I

    return p1
.end method

.method getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->c0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    iget v7, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget-object v8, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/H$d;

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    :goto_1
    iget v11, v5, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/H$d;

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    iget v7, v5, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    iget v11, v5, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_2
    iget v11, v0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    iget-object v13, v0, Lcom/ricktop/ClockSkinCoco/H;->n:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v12

    iget v15, v0, Lcom/ricktop/ClockSkinCoco/H;->o:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v11, v11, v16

    float-to-int v11, v11

    move/from16 v16, v3

    iget v3, v0, Lcom/ricktop/ClockSkinCoco/H;->p:I

    invoke-virtual {v13, v14, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/H;->n:Landroid/graphics/drawable/Drawable;

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
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v8, 0x0

    if-eq v0, v1, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    if-eqz v1, :cond_1

    return v9

    :cond_1
    iget-boolean v1, v6, Lcom/ricktop/ClockSkinCoco/H;->x:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/ricktop/ClockSkinCoco/H;->B(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_4
    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->F:I

    if-ne v0, v2, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/H;->B:F

    sub-float v11, v10, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->E:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_6

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-direct {v6, v0, v11}, Lcom/ricktop/ClockSkinCoco/H;->z(FF)Z

    move-result v0

    if-nez v0, :cond_6

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ricktop/ClockSkinCoco/H;->j(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v10, v6, Lcom/ricktop/ClockSkinCoco/H;->B:F

    iput v13, v6, Lcom/ricktop/ClockSkinCoco/H;->C:F

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/H;->x:Z

    return v8

    :cond_6
    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->A:I

    int-to-float v1, v0

    cmpl-float v1, v12, v1

    if-lez v1, :cond_8

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v12, v12, v1

    cmpl-float v1, v12, v14

    if-lez v1, :cond_8

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/H;->K(Z)V

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_7

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->D:F

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/H;->A:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->D:F

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/H;->A:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/ricktop/ClockSkinCoco/H;->B:F

    iput v13, v6, Lcom/ricktop/ClockSkinCoco/H;->C:F

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_8
    int-to-float v0, v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_9

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/H;->x:Z

    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    if-eqz v0, :cond_c

    invoke-direct {v6, v10}, Lcom/ricktop/ClockSkinCoco/H;->F(F)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static/range {p0 .. p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/H;->D:F

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/H;->E:F

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/H;->C:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/ricktop/ClockSkinCoco/H;->F:I

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/H;->x:Z

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->e()Z

    iget v0, v6, Lcom/ricktop/ClockSkinCoco/H;->d0:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->k()I

    move-result v0

    iget-object v1, v6, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/G;->i()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/ricktop/ClockSkinCoco/H;->K:I

    if-le v0, v1, :cond_b

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    iput-boolean v9, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/H;->K(Z)V

    invoke-direct {v6, v9}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    goto :goto_2

    :cond_b
    invoke-direct {v6, v8}, Lcom/ricktop/ClockSkinCoco/H;->k(Z)V

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    :cond_c
    :goto_2
    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    :cond_d
    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    return v0

    :cond_e
    :goto_3
    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    iput-boolean v8, v6, Lcom/ricktop/ClockSkinCoco/H;->x:Z

    iput v2, v6, Lcom/ricktop/ClockSkinCoco/H;->F:I

    iget-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    :cond_f
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

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

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

    check-cast v12, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v14, v12, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-eqz v14, :cond_6

    iget v12, v12, Lcom/ricktop/ClockSkinCoco/H$e;->b:I

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
    add-int/2addr v4, v8

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
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v10, v9, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-nez v10, :cond_9

    invoke-direct {v0, v8}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    iget v10, v10, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    iget-boolean v14, v9, Lcom/ricktop/ClockSkinCoco/H$e;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/ricktop/ClockSkinCoco/H$e;->d:Z

    iget v9, v9, Lcom/ricktop/ClockSkinCoco/H$e;->c:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iput v5, v0, Lcom/ricktop/ClockSkinCoco/H;->o:I

    sub-int/2addr v3, v7

    iput v3, v0, Lcom/ricktop/ClockSkinCoco/H;->p:I

    iput v11, v0, Lcom/ricktop/ClockSkinCoco/H;->U:I

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/ricktop/ClockSkinCoco/H;->L(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/ricktop/ClockSkinCoco/H;->Q()V

    iput-boolean v2, v0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/H;->y:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/H;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

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

    check-cast v3, Lcom/ricktop/ClockSkinCoco/H$e;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-eqz v7, :cond_b

    iget v7, v3, Lcom/ricktop/ClockSkinCoco/H$e;->b:I

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
    move v10, p1

    goto :goto_5

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

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

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/H;->t:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->t:Z

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

    check-cast v6, Lcom/ricktop/ClockSkinCoco/H$e;

    if-nez v6, :cond_d

    invoke-virtual {v4, v1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_a

    :cond_d
    iget-boolean v7, v6, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-nez v7, :cond_e

    int-to-float v7, p1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/H$e;->c:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v6, p2}, Landroid/view/View;->measure(II)V

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

    invoke-direct {p0, v5}, Lcom/ricktop/ClockSkinCoco/H;->u(Landroid/view/View;)Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget v7, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

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

    instance-of v0, p1, Lcom/ricktop/ClockSkinCoco/H$j;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/ricktop/ClockSkinCoco/H$j;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/H$j;->c:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/ricktop/ClockSkinCoco/H$j;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Lcom/ricktop/ClockSkinCoco/H$j;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->N(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/ricktop/ClockSkinCoco/H$j;->b:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->h:I

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/H$j;->c:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->i:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/H$j;->d:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->j:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/ricktop/ClockSkinCoco/H$j;

    invoke-direct {v1, v0}, Lcom/ricktop/ClockSkinCoco/H$j;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    iput v0, v1, Lcom/ricktop/ClockSkinCoco/H$j;->b:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->l()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/ricktop/ClockSkinCoco/H$j;->c:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/H;->m:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/ricktop/ClockSkinCoco/H;->I(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->O:Z

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
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

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
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->B(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    goto/16 :goto_3

    :cond_5
    invoke-static {p1}, LI/o;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    goto/16 :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/ricktop/ClockSkinCoco/H;->L(IZIZ)V

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->p()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->g()Z

    move-result v0

    or-int/2addr p1, v0

    goto/16 :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->C:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/ricktop/ClockSkinCoco/H;->A:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->K(Z)V

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/H;->D:F

    sub-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->A:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/ricktop/ClockSkinCoco/H;->A:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    :goto_0
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->C:F

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollState(I)V

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H;->F(F)Z

    move-result p1

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->w:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->G:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->I:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-static {v0, v4}, LI/y;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->getClientWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->v()Lcom/ricktop/ClockSkinCoco/H$d;

    move-result-object v6

    iget v7, v6, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget v4, v6, Lcom/ricktop/ClockSkinCoco/H$d;->e:F

    sub-float/2addr v5, v4

    iget v4, v6, Lcom/ricktop/ClockSkinCoco/H$d;->d:F

    div-float/2addr v5, v4

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/H;->D:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/ricktop/ClockSkinCoco/H;->H:I

    if-le v4, v6, :cond_b

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/H;->r(I)V

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_1

    :cond_b
    invoke-direct {p0, v7, v5, v0, p1}, Lcom/ricktop/ClockSkinCoco/H;->n(IFII)I

    move-result p1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/ricktop/ClockSkinCoco/H;->O(IZZI)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->P:Landroidx/core/widget/h;

    invoke-virtual {p1}, Landroidx/core/widget/h;->g()Z

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->Q:Landroidx/core/widget/h;

    invoke-virtual {v0}, Landroidx/core/widget/h;->g()Z

    move-result v0

    or-int v2, p1, v0

    :goto_1
    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->p()V

    move p1, v2

    :goto_2
    if-eqz p1, :cond_d

    invoke-static {p0}, LI/P;->H(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->k:Lcom/ricktop/ClockSkinCoco/G;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->D:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->B:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->E:F

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/H;->C:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->F:I

    :cond_d
    :goto_3
    return v1

    :cond_e
    :goto_4
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->t:Z

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

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->l:Lcom/ricktop/ClockSkinCoco/H$i;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->r(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->q(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/H$d;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget v4, v2, Lcom/ricktop/ClockSkinCoco/H$d;->b:I

    iget-object v2, v2, Lcom/ricktop/ClockSkinCoco/H$d;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->c(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->J()V

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/H;->g:I

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/H;->b:I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->l:Lcom/ricktop/ClockSkinCoco/H$i;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/H$i;

    invoke-direct {p1, p0, v0}, Lcom/ricktop/ClockSkinCoco/H$i;-><init>(Lcom/ricktop/ClockSkinCoco/H;Lcom/ricktop/ClockSkinCoco/H$a;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->l:Lcom/ricktop/ClockSkinCoco/H$i;

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/H;->l:Lcom/ricktop/ClockSkinCoco/H$i;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/a;->j(Landroid/database/DataSetObserver;)V

    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v3}, Landroidx/viewpager/widget/a;->d()I

    move-result v3

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/H;->b:I

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/H;->h:I

    if-ltz v3, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/H;->f:Landroidx/viewpager/widget/a;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/H;->i:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/H;->j:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v3, v4}, Landroidx/viewpager/widget/a;->k(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/H;->h:I

    invoke-direct {p0, p1, v1, v2}, Lcom/ricktop/ClockSkinCoco/H;->N(IZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->h:I

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->i:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->j:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/H;->R:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->N(IZZ)V

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

    const-string v1, "VelocityViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/H;->v:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/H;->v:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/H;->G()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/ricktop/ClockSkinCoco/H$g;)V
    .locals 0

    return-void
.end method

.method public setOnPageChangeListener(Lcom/ricktop/ClockSkinCoco/H$h;)V
    .locals 0

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H;->n:Landroid/graphics/drawable/Drawable;

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
