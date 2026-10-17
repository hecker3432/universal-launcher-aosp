.class public Landroid/support/wearable/view/a;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final b:Landroid/text/TextPaint;

.field private c:F

.field private d:F

.field private e:Landroid/text/Layout;

.field private f:I

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:Ljava/lang/CharSequence;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x800033

    iput v0, p0, Landroid/support/wearable/view/a;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/wearable/view/a;->j:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/a;->k:F

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/wearable/view/a;->o:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v1, v1, v0

    iput v1, p0, Landroid/support/wearable/view/a;->l:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float v0, v0, v1

    iput v0, p0, Landroid/support/wearable/view/a;->m:F

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, La/h;->e:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, La/h;->j:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    sget p2, La/h;->p:I

    iget p3, p0, Landroid/support/wearable/view/a;->l:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/a;->l:F

    sget p2, La/h;->o:I

    iget p3, p0, Landroid/support/wearable/view/a;->m:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/a;->m:F

    sget p2, La/h;->h:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    sget p2, La/h;->k:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/a;->o:I

    iget-object p2, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/support/wearable/view/a;->g()V

    :cond_0
    iget p2, p0, Landroid/support/wearable/view/a;->m:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget p2, La/h;->n:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, La/h;->f:I

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget v0, La/h;->g:I

    invoke-virtual {p1, v0, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p2, p3, p4}, Landroid/support/wearable/view/a;->f(Ljava/lang/String;II)V

    sget p2, La/h;->i:I

    iget p3, p0, Landroid/support/wearable/view/a;->f:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/a;->f:I

    sget p2, La/h;->l:I

    iget p3, p0, Landroid/support/wearable/view/a;->d:F

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/wearable/view/a;->d:F

    sget p2, La/h;->m:I

    iget p3, p0, Landroid/support/wearable/view/a;->c:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/a;->c:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method private a(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;
    .locals 11

    if-lez p2, :cond_a

    if-gtz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/wearable/view/a;->m:F

    iput v0, p0, Landroid/support/wearable/view/a;->n:F

    iget-object v1, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    iget v6, p0, Landroid/support/wearable/view/a;->j:F

    iget v7, p0, Landroid/support/wearable/view/a;->k:F

    const/4 v8, 0x1

    move-object v1, v0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/a;->o:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-le v2, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/a;->l:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_9

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_9

    :cond_5
    if-eqz v3, :cond_9

    iget v0, p0, Landroid/support/wearable/view/a;->n:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/wearable/view/a;->n:F

    iget-object v1, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    iget v6, p0, Landroid/support/wearable/view/a;->j:F

    iget v7, p0, Landroid/support/wearable/view/a;->k:F

    const/4 v8, 0x1

    move-object v1, v0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-le v1, p2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v3, p0, Landroid/support/wearable/view/a;->o:I

    if-le v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/a;->l:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    iget p1, p0, Landroid/support/wearable/view/a;->o:I

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/a;->p:I

    return-object v0

    :cond_a
    :goto_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/a;->h:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroid/support/wearable/view/a;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private getAvailableHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/wearable/view/a;->f:I

    const v3, 0x800007

    and-int/2addr v0, v3

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const v1, 0x800003

    if-eq v0, v1, :cond_5

    const v1, 0x800005

    if-eq v0, v1, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_7
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_8
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(FF)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->k:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/a;->j:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/support/wearable/view/a;->k:F

    iput p2, p0, Landroid/support/wearable/view/a;->j:F

    iget-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public c(IF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget p2, p0, Landroid/support/wearable/view/a;->m:F

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    iput p1, p0, Landroid/support/wearable/view/a;->m:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public d(IF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget p2, p0, Landroid/support/wearable/view/a;->l:F

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    iput p1, p0, Landroid/support/wearable/view/a;->l:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/wearable/view/a;->g()V

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/a;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iget-object p2, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p2, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p2, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/a;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method f(Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/a;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, p1, p3}, Landroid/support/wearable/view/a;->e(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public final getCurrentTextColor()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->h:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->f:I

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->k:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->j:F

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->o:I

    return v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method getVerticalOffset()I
    .locals 5

    invoke-direct {p0}, Landroid/support/wearable/view/a;->getAvailableHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    iget v2, p0, Landroid/support/wearable/view/a;->p:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/a;->f:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sub-int v4, v0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    :cond_2
    :goto_0
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/wearable/view/a;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/a;->getVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    iget v2, p0, Landroid/support/wearable/view/a;->p:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-ne v1, v3, :cond_1

    move v5, p2

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    if-ne v4, v2, :cond_2

    iget-object v4, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    iget v6, p0, Landroid/support/wearable/view/a;->m:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-static {v4, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    iget-object v6, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    iget v7, p0, Landroid/support/wearable/view/a;->n:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_3
    invoke-direct {p0}, Landroid/support/wearable/view/a;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object p1

    if-ne v5, v2, :cond_5

    if-ne v1, v6, :cond_4

    move v5, p2

    goto :goto_2

    :cond_4
    const v0, 0x7fffffff

    const v5, 0x7fffffff

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-direct {p0, v4, v5, p1}, Landroid/support/wearable/view/a;->a(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    const/4 v7, 0x1

    if-eq v0, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    iget-object v8, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    if-eq v8, v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    if-nez v0, :cond_9

    if-eqz v7, :cond_a

    :cond_9
    invoke-direct {p0, v4, v5, p1}, Landroid/support/wearable/view/a;->a(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    :cond_a
    :goto_5
    iget-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    if-nez p1, :cond_b

    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_b
    if-eq v1, v3, :cond_c

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    :cond_c
    if-ne v1, v6, :cond_d

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_d
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/wearable/view/a;->f:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/a;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/wearable/view/a;->o:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/a;->c(IF)V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/a;->d(IF)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    iput-object p1, p0, Landroid/support/wearable/view/a;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can not set ActionLabel text to null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/wearable/view/a;->g()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/support/wearable/view/a;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/wearable/view/a;->g()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/a;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroid/support/wearable/view/a;->e:Landroid/text/Layout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
