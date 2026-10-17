.class public Landroid/support/wearable/view/drawer/PageIndicatorView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:Landroidx/viewpager/widget/a;

.field private p:I

.field private q:I

.field private r:I

.field private final s:Landroid/graphics/Paint;

.field private final t:Landroid/graphics/Paint;

.field private final u:Landroid/graphics/Paint;

.field private final v:Landroid/graphics/Paint;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, La/h;->m1:[I

    sget v1, La/g;->a:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, La/h;->z1:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    sget p2, La/h;->t1:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    sget p2, La/h;->u1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    sget p2, La/h;->n1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:I

    sget p2, La/h;->o1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:I

    sget p2, La/h;->q1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    sget p2, La/h;->r1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:I

    sget p2, La/h;->p1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    sget p2, La/h;->s1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    sget p2, La/h;->w1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    sget p2, La/h;->x1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    sget p2, La/h;->y1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    sget p2, La/h;->v1:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->v:Landroid/graphics/Paint;

    iput p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:I

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    iput-boolean p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    :cond_0
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->m()V

    return-void
.end method

.method static synthetic d(Landroid/support/wearable/view/drawer/PageIndicatorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    return p1
.end method

.method static synthetic e(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 0

    iget p0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:I

    return p0
.end method

.method static synthetic f(Landroid/support/wearable/view/drawer/PageIndicatorView;)I
    .locals 0

    iget p0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    return p0
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/wearable/view/drawer/PageIndicatorView$a;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/drawer/PageIndicatorView$a;-><init>(Landroid/support/wearable/view/drawer/PageIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private i(J)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private j(I)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private k(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 7

    add-float v3, p3, p4

    div-float/2addr p3, v3

    new-instance p4, Landroid/graphics/RadialGradient;

    const/4 v0, 0x0

    filled-new-array {p6, p6, v0}, [I

    move-result-object v4

    const/4 p6, 0x3

    new-array v5, p6, [F

    const/4 p6, 0x0

    aput p6, v5, v0

    const/4 p6, 0x1

    aput p3, v5, p6

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p6, 0x2

    aput p3, v5, p6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 14

    iget-object v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    iget v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:I

    iget v6, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/drawer/PageIndicatorView;->k(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    iget-object v8, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->v:Landroid/graphics/Paint;

    iget v10, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    iget v11, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    iget v12, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:I

    iget v13, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Landroid/support/wearable/view/drawer/PageIndicatorView;->k(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->g()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/drawer/PageIndicatorView;->i(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->r:I

    iget-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->w:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->i(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->j(I)V

    :cond_0
    return-void
.end method

.method public getDotColor()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:I

    return v0
.end method

.method public getDotColorSelected()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:I

    return v0
.end method

.method public getDotFadeInDuration()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->j:I

    return v0
.end method

.method public getDotFadeOutDelay()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    return v0
.end method

.method public getDotFadeOutDuration()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->i:I

    return v0
.end method

.method public getDotFadeWhenIdle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    return v0
.end method

.method public getDotRadius()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    return v0
.end method

.method public getDotRadiusSelected()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    return v0
.end method

.method public getDotShadowColor()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    return v0
.end method

.method public getDotShadowDx()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    return v0
.end method

.method public getDotShadowDy()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    return v0
.end method

.method public getDotShadowRadius()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    return v0
.end method

.method public getDotSpacing()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    int-to-float v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->q:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    add-float/2addr v1, v3

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    iget-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    iget-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    add-float/2addr v1, v3

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    iget v4, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    iget-object v5, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    iget-object v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->p:I

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    mul-int v0, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    add-float/2addr v1, v2

    iget v3, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    add-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v1, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDotColor(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDotColorSelected(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->f:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDotFadeOutDelay(I)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->h:I

    return-void
.end method

.method public setDotFadeWhenIdle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->g()V

    :cond_0
    return-void
.end method

.method public setDotRadius(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->c:F

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->m()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDotRadiusSelected(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->d:F

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->m()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDotShadowColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->n:I

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->m()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotShadowDx(F)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->k:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotShadowDy(F)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->l:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotShadowRadius(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->m:F

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->m()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDotSpacing(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->setPagerAdapter(Landroidx/viewpager/widget/a;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/drawer/PageIndicatorView;->j(I)V

    :cond_0
    return-void
.end method

.method public setPagerAdapter(Landroidx/viewpager/widget/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->o:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->l()V

    iget-boolean p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView;->g:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->h()V

    :cond_0
    return-void
.end method
