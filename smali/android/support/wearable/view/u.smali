.class Landroid/support/wearable/view/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:F

.field private k:Landroidx/recyclerview/widget/RecyclerView;

.field l:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/u;->a:F

    mul-float v0, v0, v0

    iput v0, p0, Landroid/support/wearable/view/u;->b:F

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Landroid/support/wearable/view/u;->c:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroid/support/wearable/view/u;->d:F

    return-void
.end method

.method private static d(F)F
    .locals 7

    float-to-double v0, p0

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v6, v0, v2

    if-gez v6, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    double-to-float p0, v0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v4

    double-to-float p0, v0

    :cond_1
    return p0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public b()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/wearable/view/u;->a:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/u;->c:F

    return v0
.end method

.method e(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/u;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/u;->e:F

    sub-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/view/u;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_5

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 p1, 0x3

    if-eq v3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Landroid/support/wearable/view/u;->h:Z

    if-eqz p1, :cond_8

    iput-boolean v4, p0, Landroid/support/wearable/view/u;->h:Z

    iput-boolean v4, p0, Landroid/support/wearable/view/u;->i:Z

    iget-object p1, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v5

    :cond_1
    iget-boolean v3, p0, Landroid/support/wearable/view/u;->i:Z

    if-eqz v3, :cond_3

    float-to-double v1, v1

    float-to-double v6, v0

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Landroid/support/wearable/view/u;->j:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Landroid/support/wearable/view/u;->d(F)F

    move-result p1

    iget v0, p0, Landroid/support/wearable/view/u;->g:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    int-to-float p1, p1

    iget v0, p0, Landroid/support/wearable/view/u;->g:F

    div-float/2addr p1, v0

    iget v0, p0, Landroid/support/wearable/view/u;->j:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/wearable/view/u;->j:F

    invoke-static {v0}, Landroid/support/wearable/view/u;->d(F)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/u;->j:F

    :cond_2
    return v5

    :cond_3
    iget-boolean v0, p0, Landroid/support/wearable/view/u;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/u;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Landroid/support/wearable/view/u;->e:F

    sub-float/2addr p1, v1

    float-to-double v1, v0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p1, v1

    iput-boolean v5, p0, Landroid/support/wearable/view/u;->i:Z

    iget-object v1, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    float-to-double v1, p1

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Landroid/support/wearable/view/u;->j:F

    return v5

    :cond_4
    iget p1, p0, Landroid/support/wearable/view/u;->f:F

    div-float/2addr v2, p1

    iget p1, p0, Landroid/support/wearable/view/u;->b:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_8

    iput-boolean v5, p0, Landroid/support/wearable/view/u;->h:Z

    return v5

    :cond_5
    iput-boolean v4, p0, Landroid/support/wearable/view/u;->h:Z

    iput-boolean v4, p0, Landroid/support/wearable/view/u;->i:Z

    iget-object v0, p0, Landroid/support/wearable/view/u;->l:Landroid/view/VelocityTracker;

    iget-object v1, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/wearable/view/u;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Landroid/support/wearable/view/u;->e:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    neg-int v0, v0

    :cond_6
    iget-object p1, p0, Landroid/support/wearable/view/u;->l:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v1, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v1

    if-le p1, v1, :cond_8

    iget-object p1, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->Z(II)Z

    move-result p1

    return p1

    :cond_7
    iget p1, p0, Landroid/support/wearable/view/u;->f:F

    div-float/2addr v2, p1

    iget p1, p0, Landroid/support/wearable/view/u;->b:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_8

    iput-boolean v5, p0, Landroid/support/wearable/view/u;->h:Z

    return v5

    :cond_8
    :goto_0
    return v4
.end method

.method public f(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/support/wearable/view/u;->a:F

    mul-float v0, v0, v0

    iput v0, p0, Landroid/support/wearable/view/u;->b:F

    return-void
.end method

.method g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Landroid/support/wearable/view/u;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/wearable/view/u;->e:F

    mul-float v0, v0, v0

    iput v0, p0, Landroid/support/wearable/view/u;->f:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v0, p0, Landroid/support/wearable/view/u;->d:F

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/wearable/view/u;->g:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/u;->l:Landroid/view/VelocityTracker;

    return-void
.end method

.method public h(F)V
    .locals 2

    iput p1, p0, Landroid/support/wearable/view/u;->c:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Landroid/support/wearable/view/u;->d:F

    return-void
.end method
