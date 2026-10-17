.class public Landroidx/percentlayout/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/percentlayout/widget/a$b;,
        Landroidx/percentlayout/widget/a$a;,
        Landroidx/percentlayout/widget/a$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "host must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/percentlayout/widget/a$a;
    .locals 4

    sget-object v0, LP/a;->f:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, LP/a;->p:I

    const/4 v0, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    iput p1, v2, Landroidx/percentlayout/widget/a$a;->a:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget p1, LP/a;->h:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_1
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->b:F

    :cond_2
    sget p1, LP/a;->l:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_2
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->c:F

    iput p1, v2, Landroidx/percentlayout/widget/a$a;->d:F

    iput p1, v2, Landroidx/percentlayout/widget/a$a;->e:F

    iput p1, v2, Landroidx/percentlayout/widget/a$a;->f:F

    :cond_4
    sget p1, LP/a;->k:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_3
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->c:F

    :cond_6
    sget p1, LP/a;->o:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_4
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->d:F

    :cond_8
    sget p1, LP/a;->m:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_a

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_5
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->e:F

    :cond_a
    sget p1, LP/a;->i:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_6
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->f:F

    :cond_c
    sget p1, LP/a;->n:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_e

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_7
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->g:F

    :cond_e
    sget p1, LP/a;->j:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_8
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->h:F

    :cond_10
    sget p1, LP/a;->g:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_12

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    new-instance v2, Landroidx/percentlayout/widget/a$a;

    invoke-direct {v2}, Landroidx/percentlayout/widget/a$a;-><init>()V

    :goto_9
    iput p1, v2, Landroidx/percentlayout/widget/a$a;->i:F

    :cond_12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method

.method private static f(Landroid/view/View;Landroidx/percentlayout/widget/a$a;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroidx/percentlayout/widget/a$a;->b:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    iget-object p0, p1, Landroidx/percentlayout/widget/a$a;->j:Landroidx/percentlayout/widget/a$c;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(Landroid/view/View;Landroidx/percentlayout/widget/a$a;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroidx/percentlayout/widget/a$a;->a:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    iget-object p0, p1, Landroidx/percentlayout/widget/a$a;->j:Landroidx/percentlayout/widget/a$c;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroidx/percentlayout/widget/a$b;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroidx/percentlayout/widget/a$b;

    invoke-interface {v4}, Landroidx/percentlayout/widget/a$b;->a()Landroidx/percentlayout/widget/a$a;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v2, v3, p1, p2}, Landroidx/percentlayout/widget/a$a;->b(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;II)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3, p1, p2}, Landroidx/percentlayout/widget/a$a;->a(Landroid/view/ViewGroup$LayoutParams;II)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 9

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroidx/percentlayout/widget/a$b;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroidx/percentlayout/widget/a$b;

    invoke-interface {v5}, Landroidx/percentlayout/widget/a$b;->a()Landroidx/percentlayout/widget/a$a;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v3, v5}, Landroidx/percentlayout/widget/a;->g(Landroid/view/View;Landroidx/percentlayout/widget/a$a;)Z

    move-result v6

    const/4 v7, -0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    :cond_0
    invoke-static {v3, v5}, Landroidx/percentlayout/widget/a;->f(Landroid/view/View;Landroidx/percentlayout/widget/a$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/percentlayout/widget/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroidx/percentlayout/widget/a$b;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroidx/percentlayout/widget/a$b;

    invoke-interface {v3}, Landroidx/percentlayout/widget/a$b;->a()Landroidx/percentlayout/widget/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v2}, Landroidx/percentlayout/widget/a$a;->d(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Landroidx/percentlayout/widget/a$a;->c(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
