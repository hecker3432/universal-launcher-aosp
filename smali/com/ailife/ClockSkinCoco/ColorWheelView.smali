.class public Lcom/ailife/ClockSkinCoco/ColorWheelView;
.super Landroid/view/View;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private brightnessGradientPaint:Landroid/graphics/Paint;

.field private centerX:F

.field private centerY:F

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private currentColor:I

.field private currentHSV:[F

.field private listener:Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;

.field private radius:F

.field private selectorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 p1, -0x1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentColor:I

    .line 25
    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    .line 34
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .registers 3

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->colorWheelPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->brightnessGradientPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->selectorPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->selectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->selectorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->selectorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentColor:I

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 47
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    iget v1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    iget v2, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 84
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->brightnessGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    iget v1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    iget v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->brightnessGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    aget v0, v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 89
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 90
    iget v2, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    iget v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    mul-float v3, v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 91
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    iget v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    mul-float v3, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    .line 92
    const/high16 v1, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 13

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 52
    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    .line 53
    int-to-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    .line 54
    iget p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    iget p2, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const p2, 0x3f666666    # 0.9f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    .line 57
    const/4 p1, 0x7

    new-array p1, p1, [I

    fill-array-data p1, :array_4c

    .line 61
    new-instance p2, Landroid/graphics/SweepGradient;

    iget p3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    iget p4, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    const/4 v0, 0x0

    invoke-direct {p2, p3, p4, p1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 64
    new-instance p1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    iget v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    iget v4, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 69
    new-instance p3, Landroid/graphics/ComposeShader;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p2, p1, p4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 72
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    return-void

    nop

    :array_4c
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    .line 100
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 102
    iget v2, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerX:F

    sub-float/2addr v0, v2

    .line 103
    iget v2, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->centerY:F

    sub-float/2addr v1, v2

    .line 104
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 106
    iget v3, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_69

    .line 108
    float-to-double v3, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 109
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3f

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    .line 110
    :cond_3f
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 113
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->radius:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 116
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentColor:I

    .line 117
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->invalidate()V

    .line 119
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->listener:Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;

    if-eqz p1, :cond_68

    .line 120
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->listener:Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;

    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentColor:I

    invoke-interface {p1, v0}, Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;->onColorChanged(I)V

    .line 122
    :cond_68
    return v1

    .line 125
    :cond_69
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setColor(I)V
    .registers 3

    .line 129
    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentColor:I

    .line 130
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->currentHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 131
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->invalidate()V

    .line 132
    return-void
.end method

.method public setOnColorChangedListener(Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorWheelView;->listener:Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;

    .line 140
    return-void
.end method
