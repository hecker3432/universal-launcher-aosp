.class public Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# instance fields
.field private k0:I

.field private l0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->l0:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    # Block keyboard navigation when paging is disabled (l0 field is false)
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->l0:Z

    if-nez v0, :continue_key_horizontal

    const/4 v0, 0x0

    return v0

    :continue_key_horizontal
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    # Block encoder wheel/rotary input when paging is disabled (l0 field is false)
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->l0:Z

    if-nez v0, :continue_generic_horizontal

    const/4 v0, 0x0

    return v0

    :continue_generic_horizontal
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->l0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->k0:I

    if-ge v2, v0, :cond_1

    return v1

    :cond_1
    iput v0, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->k0:I

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->l0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;->l0:Z

    return-void
.end method
