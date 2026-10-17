.class Landroid/support/wearable/view/t;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final f:Landroid/util/Property;

.field private static final g:Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/animation/ObjectAnimator;

.field private d:F

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/wearable/view/t$a;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "level"

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/t$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/wearable/view/t;->f:Landroid/util/Property;

    sget-object v0, Landroid/support/wearable/view/s;->a:Landroid/support/wearable/view/s;

    sput-object v0, Landroid/support/wearable/view/t;->g:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/t;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/t;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/support/wearable/view/t;->f:Landroid/util/Property;

    const/4 v2, 0x0

    const/16 v3, 0x2710

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/t;->c:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static a(FFF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/t;->e:I

    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/t;->d:F

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/t;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/t;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Landroid/support/wearable/view/t;->a:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/support/wearable/view/t;->a:Landroid/graphics/RectF;

    iget v2, v0, Landroid/support/wearable/view/t;->d:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Landroid/support/wearable/view/t;->b:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/wearable/view/t;->d:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Landroid/support/wearable/view/t;->b:Landroid/graphics/Paint;

    iget v2, v0, Landroid/support/wearable/view/t;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    div-int/lit16 v2, v1, 0x7d0

    mul-int/lit16 v2, v2, 0x7d0

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/high16 v6, 0x42580000    # 54.0f

    mul-float v6, v6, v2

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x43990000    # 306.0f

    if-eqz v5, :cond_1

    sget-object v10, Landroid/support/wearable/view/t;->g:Landroid/animation/TimeInterpolator;

    invoke-static {v7, v4, v2}, Landroid/support/wearable/view/t;->a(FFF)F

    move-result v2

    invoke-interface {v10, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    :goto_1
    mul-float v2, v2, v9

    goto :goto_2

    :cond_1
    sget-object v10, Landroid/support/wearable/view/t;->g:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v8, v2}, Landroid/support/wearable/view/t;->a(FFF)F

    move-result v2

    invoke-interface {v10, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v8, v2

    goto :goto_1

    :goto_2
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    int-to-float v1, v1

    const v2, 0x38d1b717    # 1.0E-4f

    mul-float v1, v1, v2

    mul-float v1, v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    iget-object v2, v0, Landroid/support/wearable/view/t;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Landroid/support/wearable/view/t;->a:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v11, v0, Landroid/support/wearable/view/t;->a:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    const/4 v12, 0x0

    goto :goto_3

    :cond_2
    sub-float v7, v9, v13

    move v12, v7

    :goto_3
    const/4 v14, 0x0

    iget-object v15, v0, Landroid/support/wearable/view/t;->b:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/t;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
