.class public Lcom/ricktop/ClockSkinCoco/NotificationScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/ricktop/ClockSkinCoco/E$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/NotificationScrollView$c;,
        Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;
    }
.end annotation


# instance fields
.field private b:Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;

.field private final c:Landroid/view/GestureDetector;

.field private d:I

.field private e:Landroid/widget/FrameLayout;

.field private final f:Lcom/ricktop/ClockSkinCoco/E;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/E;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p2, v0, p0, v1, v2}, Lcom/ricktop/ClockSkinCoco/E;-><init>(ILcom/ricktop/ClockSkinCoco/E$e;FF)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f:Lcom/ricktop/ClockSkinCoco/E;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$c;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$c;-><init>()V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->c:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/NotificationScrollView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->e:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/ricktop/ClockSkinCoco/NotificationScrollView;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->d:I

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->b:Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;->h(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public f(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0a0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f:Lcom/ricktop/ClockSkinCoco/E;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ricktop/ClockSkinCoco/E;->d(Landroid/view/View;F)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f:Lcom/ricktop/ClockSkinCoco/E;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/E;->p(F)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f:Lcom/ricktop/ClockSkinCoco/E;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/E;->q(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->e:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f:Lcom/ricktop/ClockSkinCoco/E;

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/E;->m(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->d:I

    new-instance p1, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$a;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$a;-><init>(Lcom/ricktop/ClockSkinCoco/NotificationScrollView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->f:Lcom/ricktop/ClockSkinCoco/E;

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/E;->n(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->i(Landroid/view/View;)V

    return-void
.end method

.method public setCallback(Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->b:Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method
