.class public Landroid/support/wearable/view/p;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/p$b;
    }
.end annotation


# static fields
.field private static final j:D


# instance fields
.field private b:I

.field private final c:Landroid/graphics/drawable/ShapeDrawable;

.field private d:Landroid/graphics/drawable/RippleDrawable;

.field private final e:Landroid/view/animation/Interpolator;

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/wearable/view/p;->j:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/p;->b:I

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-super {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/support/wearable/view/p$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/wearable/view/p$b;-><init>(Landroid/support/wearable/view/p;Landroid/support/wearable/view/p$a;)V

    invoke-static {p0, v1}, Landroid/support/wearable/view/o;->a(Landroid/support/wearable/view/p;Landroid/view/ViewOutlineProvider;)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/wearable/view/p;->e:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/wearable/view/p;->i:I

    sget-object v2, La/h;->p0:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    if-ge v1, p3, :cond_6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    sget p4, La/h;->s0:I

    if-ne p3, p4, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object p4, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    sget p4, La/h;->r0:I

    if-ne p3, p4, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    sget p4, La/h;->t0:I

    if-ne p3, p4, :cond_2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/support/wearable/view/p;->setRippleColor(I)V

    goto :goto_1

    :cond_2
    sget p4, La/h;->v0:I

    if-ne p3, p4, :cond_3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Landroid/support/wearable/view/p;->setPressedTranslationZ(F)V

    goto :goto_1

    :cond_3
    sget p4, La/h;->u0:I

    if-ne p3, p4, :cond_4

    iget p4, p0, Landroid/support/wearable/view/p;->i:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/support/wearable/view/p;->i:I

    goto :goto_1

    :cond_4
    sget p4, La/h;->q0:I

    if-ne p3, p4, :cond_5

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/wearable/view/p;)I
    .locals 0

    iget p0, p0, Landroid/support/wearable/view/p;->h:I

    return p0
.end method

.method private b(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private static c(I)I
    .locals 4

    int-to-double v0, p0

    sget-wide v2, Landroid/support/wearable/view/p;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private static d(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(I)I
    .locals 4

    int-to-double v0, p0

    sget-wide v2, Landroid/support/wearable/view/p;->j:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private f(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/p;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageScaleMode()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/p;->i:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iget p3, p0, Landroid/support/wearable/view/p;->i:I

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/wearable/view/p;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p1

    int-to-float p3, p4

    div-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr p5, p2

    int-to-float p4, p5

    div-float/2addr p4, v0

    float-to-int p4, p4

    iget-object p5, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p5, p3, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_1
    :goto_0
    iget p3, p0, Landroid/support/wearable/view/p;->h:I

    div-int/lit8 p3, p3, 0x2

    invoke-static {p3}, Landroid/support/wearable/view/p;->e(I)I

    move-result p3

    iget p4, p0, Landroid/support/wearable/view/p;->h:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    iget-object p5, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {p5}, Landroid/support/wearable/view/p;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p5

    if-nez p5, :cond_2

    iget-object p1, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    add-int/2addr p3, p4

    invoke-virtual {p1, p4, p4, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_2
    if-ne p1, p2, :cond_3

    move p1, p3

    move p2, p4

    goto :goto_1

    :cond_3
    int-to-float p5, p1

    int-to-float v1, p2

    div-float/2addr p5, v1

    if-le p1, p2, :cond_4

    int-to-float p1, p3

    div-float/2addr p1, p5

    float-to-int p1, p1

    sub-int p2, p3, p1

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_1

    :cond_4
    int-to-float p1, p3

    mul-float p1, p1, p5

    float-to-int p1, p1

    sub-int p2, p3, p1

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    move v2, p3

    move p3, p1

    move p1, v2

    move v3, p4

    move p4, p2

    move p2, v3

    :goto_1
    iget-object p5, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    add-int/2addr p3, p4

    add-int/2addr p1, p2

    invoke-virtual {p5, p4, p2, p3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/p;->h:I

    goto :goto_3

    :cond_0
    if-ne v0, v2, :cond_1

    iput p1, p0, Landroid/support/wearable/view/p;->h:I

    goto :goto_3

    :cond_1
    if-ne v1, v2, :cond_2

    iput p2, p0, Landroid/support/wearable/view/p;->h:I

    goto :goto_3

    :cond_2
    iget-object v2, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/support/wearable/view/p;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_3
    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {p0, v2}, Landroid/support/wearable/view/p;->b(F)I

    move-result v2

    :goto_0
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    iput v2, p0, Landroid/support/wearable/view/p;->h:I

    goto :goto_3

    :cond_5
    :goto_1
    if-eq v0, v3, :cond_6

    move p1, p2

    goto :goto_2

    :cond_6
    if-eq v1, v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    invoke-static {v2}, Landroid/support/wearable/view/p;->c(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/p;->h:I

    :goto_3
    iget p1, p0, Landroid/support/wearable/view/p;->h:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v1, v2, p1}, Landroid/support/wearable/view/n;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Landroid/support/wearable/view/p;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object p1, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/wearable/view/l;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/p;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageScaleMode(I)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/p;->i:I

    iget-object p1, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setPressedTranslationZ(F)V
    .locals 6

    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v1, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string v5, "translationZ"

    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/wearable/view/p;->f(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/support/wearable/view/j;->a(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    sget-object v1, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    new-array v3, v2, [F

    aput p1, v3, v4

    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/wearable/view/p;->f(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/support/wearable/view/j;->a(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    sget-object p1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-static {p0}, Landroid/support/wearable/view/k;->a(Landroid/support/wearable/view/p;)F

    move-result v1

    new-array v2, v2, [F

    aput v1, v2, v4

    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/wearable/view/p;->f(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/wearable/view/j;->a(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    invoke-static {p0, v0}, Landroid/support/wearable/view/b;->a(Landroid/support/wearable/view/p;Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 2

    iput p1, p0, Landroid/support/wearable/view/p;->b:I

    iget-object v0, p0, Landroid/support/wearable/view/p;->d:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/wearable/view/m;->a(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v1, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/wearable/view/p;->d:Landroid/graphics/drawable/RippleDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/wearable/view/p;->d:Landroid/graphics/drawable/RippleDrawable;

    iget-object p1, p0, Landroid/support/wearable/view/p;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/p;->g:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
