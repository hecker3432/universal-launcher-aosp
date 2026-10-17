.class Lcom/ricktop/ClockSkinCoco/E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/E$e;,
        Lcom/ricktop/ClockSkinCoco/E$a;,
        Lcom/ricktop/ClockSkinCoco/E$b;,
        Lcom/ricktop/ClockSkinCoco/E$c;,
        Lcom/ricktop/ClockSkinCoco/E$d;
    }
.end annotation


# static fields
.field private static final o:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final a:Lcom/ricktop/ClockSkinCoco/E$e;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:F

.field private f:Z

.field private final g:Landroid/os/Handler;

.field private h:F

.field private i:Z

.field private final j:F

.field private k:F

.field private final l:I

.field private final m:Landroid/view/VelocityTracker;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/E;->o:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method constructor <init>(ILcom/ricktop/ClockSkinCoco/E$e;FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/E;->j:F

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/E;->g:Landroid/os/Handler;

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    iput p3, p0, Lcom/ricktop/ClockSkinCoco/E;->e:F

    iput p4, p0, Lcom/ricktop/ClockSkinCoco/E;->k:F

    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/E;)Lcom/ricktop/ClockSkinCoco/E$e;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    return-object p0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/E;->t(Landroid/view/View;Z)V

    return-void
.end method

.method private c(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    const-string v0, "translationX"

    goto :goto_0

    :cond_0
    const-string v0, "translationY"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/view/View;)F
    .locals 5

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->h(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, v0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->i(Landroid/view/View;)F

    move-result p1

    const/4 v2, 0x0

    mul-float v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    sub-float/2addr v3, p1

    goto :goto_0

    :cond_0
    mul-float v0, v0, v3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr v2, p1

    div-float/2addr v2, v1

    add-float/2addr v3, v2

    :cond_1
    :goto_0
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/E;->j:F

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private f(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    :goto_0
    return p1
.end method

.method private g(Landroid/view/MotionEvent;)F
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_0
    return p1
.end method

.method private h(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_0

    :goto_1
    return p1
.end method

.method private i(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_0
    return p1
.end method

.method private j(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    :goto_0
    return p1
.end method

.method private static k(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->l(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method private static l(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/E;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->n:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private r(Landroid/view/View;F)V
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private s(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    invoke-interface {v0, p1}, Lcom/ricktop/ClockSkinCoco/E$e;->f(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    invoke-interface {v0, p1}, Lcom/ricktop/ClockSkinCoco/E$e;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/ricktop/ClockSkinCoco/E;->c(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/ricktop/ClockSkinCoco/E$c;

    invoke-direct {v2, p0, p1, v0}, Lcom/ricktop/ClockSkinCoco/E$c;-><init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/ricktop/ClockSkinCoco/E$d;

    invoke-direct {v2, p0, p1, v0}, Lcom/ricktop/ClockSkinCoco/E$d;-><init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private t(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->e(Landroid/view/View;)F

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->e(Landroid/view/View;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/E;->k(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method d(Landroid/view/View;F)V
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    invoke-interface {v0, p1}, Lcom/ricktop/ClockSkinCoco/E$e;->f(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    invoke-interface {v1, p1}, Lcom/ricktop/ClockSkinCoco/E$e;->a(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    if-ltz v3, :cond_2

    cmpl-float v3, p2, v2

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->i(Landroid/view/View;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_2

    :cond_0
    cmpl-float v3, p2, v2

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->i(Landroid/view/View;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/E;->l:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->h(Landroid/view/View;)F

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->h(Landroid/view/View;)F

    move-result v3

    neg-float v3, v3

    :goto_1
    cmpl-float v2, p2, v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->i(Landroid/view/View;)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v2, p2

    float-to-int p2, v2

    const/16 v2, 0x190

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    const/16 p2, 0xc8

    :goto_2
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v0, v3}, Lcom/ricktop/ClockSkinCoco/E;->c(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/ricktop/ClockSkinCoco/E;->o:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/E$a;

    invoke-direct {p2, p0, p1, v0}, Lcom/ricktop/ClockSkinCoco/E$a;-><init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/ricktop/ClockSkinCoco/E$b;

    invoke-direct {p1, p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/E$b;-><init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method m(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/E;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->g(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/E;->h:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/E;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/ricktop/ClockSkinCoco/E$e;->c(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/E;->f:Z

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->g(Landroid/view/MotionEvent;)F

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->i(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/E;->h:F

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/E;->o()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/E;->f:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/E;->i:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/E;->o()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/E;->f:Z

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/E;->i:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    invoke-interface {v0, p1}, Lcom/ricktop/ClockSkinCoco/E$e;->e(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    invoke-interface {v1, v0}, Lcom/ricktop/ClockSkinCoco/E$e;->f(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/ricktop/ClockSkinCoco/E$e;->a(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/E;->b:Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->g(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/E;->h:F

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/E;->f:Z

    return p1
.end method

.method n(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/E;->i:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/E;->f:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->g(Landroid/view/MotionEvent;)F

    move-result p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->h:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/ricktop/ClockSkinCoco/E$e;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/E;->h(Landroid/view/View;)F

    move-result v0

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    neg-float p1, v2

    goto :goto_1

    :cond_3
    div-float/2addr p1, v0

    float-to-double v3, p1

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float v2, v2, p1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/ricktop/ClockSkinCoco/E;->r(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/E;->b:Z

    invoke-direct {p0, p1, v0}, Lcom/ricktop/ClockSkinCoco/E;->t(Landroid/view/View;Z)V

    goto/16 :goto_4

    :cond_5
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    const/high16 v0, 0x44fa0000    # 2000.0f

    iget v4, p0, Lcom/ricktop/ClockSkinCoco/E;->e:F

    mul-float v4, v4, v0

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/high16 p1, 0x42c80000    # 100.0f

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/E;->e:F

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->j(Landroid/view/VelocityTracker;)F

    move-result p1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/E;->m:Landroid/view/VelocityTracker;

    invoke-direct {p0, v4}, Lcom/ricktop/ClockSkinCoco/E;->f(Landroid/view/VelocityTracker;)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v5, v0

    if-lez v0, :cond_9

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    const/4 v0, 0x0

    cmpl-float v4, p1, v3

    if-lez v4, :cond_6

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, v0

    :goto_2
    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/E;->c:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/ricktop/ClockSkinCoco/E;->i(Landroid/view/View;)F

    move-result v5

    cmpl-float v3, v5, v3

    if-lez v3, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v0

    :goto_3
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/ricktop/ClockSkinCoco/E$e;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/ricktop/ClockSkinCoco/E;->d(Landroid/view/View;F)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/ricktop/ClockSkinCoco/E$e;->d(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->s(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->a:Lcom/ricktop/ClockSkinCoco/E$e;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/ricktop/ClockSkinCoco/E$e;->d(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E;->d:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/E;->s(Landroid/view/View;)V

    :cond_a
    :goto_4
    return v1

    :cond_b
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/E;->o()V

    const/4 p1, 0x0

    return p1
.end method

.method p(F)V
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/E;->e:F

    return-void
.end method

.method q(F)V
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/E;->k:F

    return-void
.end method
