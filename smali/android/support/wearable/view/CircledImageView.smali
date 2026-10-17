.class public Landroid/support/wearable/view/CircledImageView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/CircledImageView$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final G:Landroid/animation/ArgbEvaluator;


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:Ljava/lang/Integer;

.field private final C:Landroid/graphics/drawable/Drawable$Callback;

.field private D:I

.field private final E:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private F:Landroid/animation/ValueAnimator;

.field final b:Landroid/graphics/RectF;

.field final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/support/wearable/view/CircledImageView$c;

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:Landroid/graphics/Paint$Cap;

.field private o:F

.field private p:Z

.field private final q:F

.field private r:F

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private final w:Landroid/support/wearable/view/t;

.field private x:J

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/CircledImageView;->G:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Rect;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    iput-boolean p3, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/support/wearable/view/CircledImageView;->x:J

    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->y:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->z:F

    new-instance v1, Landroid/support/wearable/view/CircledImageView$a;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/CircledImageView$a;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->C:Landroid/graphics/drawable/Drawable$Callback;

    new-instance v2, Landroid/support/wearable/view/CircledImageView$b;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/CircledImageView$b;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->E:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, La/h;->Z:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v2, La/h;->a0:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v2, v3, p1}, Landroid/support/wearable/view/g;->a(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget p1, La/h;->e0:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    const/high16 p1, 0x1060000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    :cond_2
    sget p1, La/h;->g0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->h:F

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->q:F

    sget v2, La/h;->i0:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->j:F

    sget p1, La/h;->c0:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->m:I

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object p1

    sget v2, La/h;->b0:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object p1, p1, v2

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->n:Landroid/graphics/Paint$Cap;

    sget p1, La/h;->d0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->l:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    add-float/2addr v2, p1

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->l:F

    :cond_3
    sget p1, La/h;->f0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_4

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->l:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->l:F

    :cond_4
    sget p1, La/h;->k0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->y:F

    sget p1, La/h;->l0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->z:F

    sget p1, La/h;->m0:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->A:Ljava/lang/Integer;

    :cond_5
    sget p1, La/h;->o0:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->B:Ljava/lang/Integer;

    :cond_6
    sget p1, La/h;->h0:I

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v2, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    sget v3, La/h;->j0:I

    invoke-virtual {p2, v3, v2, v2, p1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    sget p1, La/h;->n0:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/support/wearable/view/CircledImageView$c;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    invoke-direct {p2, p1, v0, v2, v3}, Landroid/support/wearable/view/CircledImageView$c;-><init>(FFFF)V

    iput-object p2, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    new-instance p1, Landroid/support/wearable/view/t;

    invoke-direct {p1}, Landroid/support/wearable/view/t;-><init>()V

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->w:Landroid/support/wearable/view/t;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->c()V

    return-void
.end method

.method static synthetic a(Landroid/support/wearable/view/CircledImageView;)I
    .locals 0

    iget p0, p0, Landroid/support/wearable/view/CircledImageView;->D:I

    return p0
.end method

.method static synthetic b(Landroid/support/wearable/view/CircledImageView;I)I
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->D:I

    return p1
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-wide v1, p0, Landroid/support/wearable/view/CircledImageView;->x:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->D:I

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/wearable/view/CircledImageView;->G:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/support/wearable/view/CircledImageView;->x:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->E:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->D:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->D:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->t:Z

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->w:Landroid/support/wearable/view/t;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->u:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->v:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/support/wearable/view/t;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/wearable/view/t;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->c()V

    return-void
.end method

.method public getCircleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCircleRadius()F
    .locals 3

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->h:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    mul-float v0, v0, v1

    :cond_0
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->l:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCircleRadiusPercent()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    return v0
.end method

.method public getCircleRadiusPressed()F
    .locals 3

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->j:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    mul-float v0, v0, v1

    :cond_0
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->l:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCircleRadiusPressedPercent()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    return v0
.end method

.method public getColorChangeAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/view/CircledImageView;->x:J

    return-wide v0
.end method

.method public getDefaultCircleColor()I
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInitialCircleRadius()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->q:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v2

    :goto_0
    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/support/wearable/view/CircledImageView$c;->c(Landroid/graphics/Canvas;F)V

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v2

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v4, v2

    iget-object v5, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->n:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    neg-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->w:Landroid/support/wearable/view/t;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->w:Landroid/support/wearable/view/t;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->m:I

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/t;->b(I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->w:Landroid/support/wearable/view/t;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/t;->c(F)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->w:Landroid/support/wearable/view/t;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/t;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    mul-float v6, v1, v0

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/wearable/view/h;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->y:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v5

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v0, v0

    cmpl-float v7, v0, v5

    if-eqz v7, :cond_1

    int-to-float v7, v2

    mul-float v7, v7, v4

    div-float/2addr v7, v0

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    int-to-float v1, v1

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    int-to-float v5, v3

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->z:F

    int-to-float v5, v0

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-static {v1}, Landroid/support/wearable/view/CircledImageView$c;->a(Landroid/support/wearable/view/CircledImageView$c;)F

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-static {v2}, Landroid/support/wearable/view/CircledImageView$c;->b(Landroid/support/wearable/view/CircledImageView$c;)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    float-to-int p1, v0

    :goto_0
    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    int-to-float p2, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    goto :goto_1

    :cond_3
    float-to-int p2, v0

    :goto_1
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move p2, p1

    goto :goto_2

    :cond_5
    move p1, p2

    :cond_6
    :goto_2
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    iget-object p3, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/support/wearable/view/CircledImageView$c;->d(IIII)V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->u:Z

    iget-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->t:Z

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/CircledImageView;->d(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->v:Z

    iget-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->t:Z

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/CircledImageView;->d(Z)V

    return-void
.end method

.method public setCircleBorderCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->n:Landroid/graphics/Paint$Cap;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->n:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircleBorderColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->m:I

    return-void
.end method

.method public setCircleBorderWidth(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->o:F

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircledImageView$c;->e(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/CircledImageView;->setCircleColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCircleColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->f:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircleHidden(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->p:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->h:F

    iget-object p1, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/wearable/view/CircledImageView$c;->f(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCircleRadiusPercent(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->i:F

    iget-object p1, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/wearable/view/CircledImageView$c;->f(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCircleRadiusPressed(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->j:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircleRadiusPressedPercent(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->k:F

    iget-object p1, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/wearable/view/CircledImageView$c;->f(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setColorChangeAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Landroid/support/wearable/view/CircledImageView;->x:J

    return-void
.end method

.method public setImageCirclePercentage(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->y:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->y:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/wearable/view/g;->a(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Landroid/support/wearable/view/CircledImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setImageHorizontalOffcenterPercentage(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->z:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->z:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/wearable/view/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageTint(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->A:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq p4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/wearable/view/CircledImageView$c;->d(IIII)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->s:Z

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircledImageView$c;->f(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->r:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShadowVisibility(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView$c;->b(Landroid/support/wearable/view/CircledImageView$c;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->e:Landroid/support/wearable/view/CircledImageView$c;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircledImageView$c;->g(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
