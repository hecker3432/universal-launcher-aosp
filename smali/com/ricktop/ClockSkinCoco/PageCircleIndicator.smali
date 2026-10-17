.class public Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$b;
    }
.end annotation


# instance fields
.field private b:Landroid/animation/Animator;

.field private c:Landroid/animation/Animator;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->i:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->k:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->h:I

    const v0, 0x7f020001

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->e:I

    const v1, 0x7f08011e

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g:I

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->j:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->f:I

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private d(ILandroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->k:I

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->h:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->i:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->k:I

    const/high16 v1, 0x40a00000    # 5.0f

    if-gez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g(F)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->k:I

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->h:I

    if-gez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g(F)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->h:I

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->i:I

    if-gez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g(F)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->i:I

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d:I

    if-nez v0, :cond_3

    const v0, 0x7f020001

    :cond_3
    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c:Landroid/animation/Animator;

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->e:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$b;-><init>(Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    :goto_0
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g:I

    if-nez p1, :cond_5

    const p1, 0x7f08011e

    :cond_5
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g:I

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->j:I

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->j:I

    return-void
.end method

.method private f(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->d()I

    move-result p1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c:Landroid/animation/Animator;

    invoke-direct {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d(ILandroid/animation/Animator;)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->j:I

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    invoke-direct {p0, v1, v2}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d(ILandroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/ricktop/ClockSkinCoco/MainActivity$i;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->k:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->h:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->i:I

    const v1, 0x7f020001

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->e:I

    const/4 p2, 0x5

    const v0, 0x7f08011e

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->j:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private i(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->e(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->l:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->l:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->d()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->f:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->f:I

    :cond_2
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->l:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->f:I

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->f(Landroidx/viewpager/widget/ViewPager;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->l:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->f:I

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->c(I)V

    return-void
.end method
