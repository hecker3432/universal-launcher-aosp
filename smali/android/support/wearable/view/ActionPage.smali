.class public Landroid/support/wearable/view/ActionPage;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Landroid/support/wearable/view/a;

.field private c:Landroid/support/wearable/view/p;

.field private d:I

.field private e:F

.field private final f:Landroid/graphics/Point;

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, La/g;->b:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ActionPage;->f:Landroid/graphics/Point;

    new-instance v0, Landroid/support/wearable/view/p;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    new-instance v0, Landroid/support/wearable/view/a;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/a;->setGravity(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/wearable/view/a;->setMaxLines(I)V

    sget-object v0, La/h;->t:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    if-ge v5, v8, :cond_11

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    sget v9, La/h;->B:I

    if-ne v8, v9, :cond_0

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/p;->setColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_0
    sget v9, La/h;->y:I

    if-ne v8, v9, :cond_1

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/p;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_1
    sget v9, La/h;->H:I

    if-ne v8, v9, :cond_2

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p2, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/p;->setImageScaleMode(I)V

    goto/16 :goto_1

    :cond_2
    sget v9, La/h;->G:I

    if-ne v8, v9, :cond_3

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    const/4 v10, -0x1

    invoke-virtual {p2, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/p;->setRippleColor(I)V

    goto/16 :goto_1

    :cond_3
    sget v9, La/h;->K:I

    if-ne v8, v9, :cond_4

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p2, v8, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/p;->setPressedTranslationZ(F)V

    goto/16 :goto_1

    :cond_4
    sget v9, La/h;->z:I

    if-ne v8, v9, :cond_5

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/a;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    sget v9, La/h;->J:I

    if-ne v8, v9, :cond_6

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {p2, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    invoke-virtual {v9, v4, v8}, Landroid/support/wearable/view/a;->d(IF)V

    goto/16 :goto_1

    :cond_6
    sget v9, La/h;->I:I

    if-ne v8, v9, :cond_7

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    const/high16 v10, 0x42700000    # 60.0f

    invoke-virtual {p2, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    invoke-virtual {v9, v4, v8}, Landroid/support/wearable/view/a;->c(IF)V

    goto/16 :goto_1

    :cond_7
    sget v9, La/h;->w:I

    if-ne v8, v9, :cond_8

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_8
    sget v9, La/h;->A:I

    if-ne v8, v9, :cond_9

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p2, v8, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/a;->setMaxLines(I)V

    goto :goto_1

    :cond_9
    sget v9, La/h;->E:I

    if-ne v8, v9, :cond_a

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    sget v9, La/h;->u:I

    if-ne v8, v9, :cond_b

    invoke-virtual {p2, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_1

    :cond_b
    sget v9, La/h;->v:I

    if-ne v8, v9, :cond_c

    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    goto :goto_1

    :cond_c
    sget v9, La/h;->x:I

    if-ne v8, v9, :cond_d

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/support/wearable/view/a;->setGravity(I)V

    goto :goto_1

    :cond_d
    sget v9, La/h;->C:I

    if-ne v8, v9, :cond_e

    invoke-virtual {p2, v8, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_1

    :cond_e
    sget v9, La/h;->D:I

    if-ne v8, v9, :cond_f

    invoke-virtual {p2, v8, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    goto :goto_1

    :cond_f
    sget v9, La/h;->F:I

    if-ne v8, v9, :cond_10

    iget-object v9, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p2, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-static {p1, v8}, Landroid/support/wearable/view/d;->a(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/support/wearable/view/b;->a(Landroid/support/wearable/view/p;Landroid/animation/StateListAnimator;)V

    :cond_10
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p1, v6, p3}, Landroid/support/wearable/view/a;->b(FF)V

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p1, v0, v3, v7}, Landroid/support/wearable/view/a;->f(Ljava/lang/String;II)V

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getButton()Landroid/support/wearable/view/p;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    return-object v0
.end method

.method public getLabel()Landroid/support/wearable/view/a;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->k:Z

    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->i:Z

    invoke-static {p1}, Landroid/support/wearable/view/e;->a(Landroid/view/WindowInsets;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/support/wearable/view/e;->a(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->i:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-static {p1}, Landroid/support/wearable/view/f;->a(Landroid/view/WindowInsets;)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/ActionPage;->j:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->j:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->j:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3dc00000    # 0.09375f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->j:I

    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->k:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/support/wearable/view/c;->a(Landroid/support/wearable/view/ActionPage;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    iget-object p2, p0, Landroid/support/wearable/view/ActionPage;->f:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p5, p3

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->e:F

    sub-float/2addr p5, v0

    float-to-int p5, p5

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, p2

    sub-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float p3, p3

    add-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p2, p2

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p5, v1, p3, p2}, Landroid/view/View;->layout(IIII)V

    iget p1, p0, Landroid/support/wearable/view/ActionPage;->g:I

    sub-int/2addr p4, p1

    int-to-float p1, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    iget-object p3, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    iget p4, p0, Landroid/support/wearable/view/ActionPage;->g:I

    add-int/2addr p4, p1

    iget-object p5, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->h:I

    add-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0}, Landroid/support/wearable/view/p;->getImageScaleMode()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0}, Landroid/support/wearable/view/p;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->d:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->e:F

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->d:I

    int-to-float v1, v0

    div-float/2addr v1, v2

    iput v1, p0, Landroid/support/wearable/view/ActionPage;->e:F

    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/ActionPage;->d:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->f:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    int-to-float p2, p2

    const/high16 v0, 0x3f200000    # 0.625f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/wearable/view/ActionPage;->g:I

    int-to-float p2, p1

    const/high16 v0, 0x3dc00000    # 0.09375f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/wearable/view/ActionPage;->j:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->f:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    int-to-float v2, p1

    const v4, 0x3edc28f6    # 0.43f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    int-to-float p2, p2

    const v0, 0x3f645a1d    # 0.892f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroid/support/wearable/view/ActionPage;->g:I

    :goto_1
    int-to-float p1, p1

    iget-object p2, p0, Landroid/support/wearable/view/ActionPage;->f:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->e:F

    add-float/2addr p2, v0

    sub-float/2addr p1, p2

    iget p2, p0, Landroid/support/wearable/view/ActionPage;->j:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/wearable/view/ActionPage;->h:I

    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    iget p2, p0, Landroid/support/wearable/view/ActionPage;->g:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v0, p0, Landroid/support/wearable/view/ActionPage;->h:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/p;->setColor(I)V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/p;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/p;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/p;->setImageResource(I)V

    return-void
.end method

.method public setImageScaleMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/p;->setImageScaleMode(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->c:Landroid/support/wearable/view/p;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/support/wearable/view/b;->a(Landroid/support/wearable/view/p;Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->b:Landroid/support/wearable/view/a;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/a;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
