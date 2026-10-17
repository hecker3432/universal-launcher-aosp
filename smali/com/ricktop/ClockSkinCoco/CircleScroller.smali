.class public Lcom/ricktop/ClockSkinCoco/CircleScroller;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:Landroid/graphics/RectF;

.field private g:I

.field private h:I

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->context:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->g:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->h:I

    const/high16 p1, 0x43a00000    # 320.0f

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->e:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c:F

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x43a00000    # 320.0f

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->e:F

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c:F

    return-void
.end method


# virtual methods
.method public b(III)V
    .locals 2

    if-le p3, p2, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x42a00000    # 80.0f

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c:F

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43a00000    # 320.0f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->e:F

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 4

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->g:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->h:I

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->g:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x6

    add-int/lit8 v2, p2, -0x1

    int-to-float p2, p2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->h:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x6

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    invoke-direct {p1, v2, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->f:Landroid/graphics/RectF;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    const/16 v6, 0x46

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->f:Landroid/graphics/RectF;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b:Landroid/graphics/Paint;

    const/high16 v9, 0x43a00000    # 320.0f

    const/high16 v10, 0x42a00000    # 80.0f

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->f:Landroid/graphics/RectF;

    iget v8, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->e:F

    iget v9, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c:F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/ricktop/ClockSkinCoco/CircleScroller;->d:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
