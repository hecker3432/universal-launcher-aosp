.class public abstract Landroid/support/wearable/view/WearableRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/WearableRecyclerView$c;,
        Landroid/support/wearable/view/WearableRecyclerView$b;,
        Landroid/support/wearable/view/WearableRecyclerView$ChildLayoutManager;
    }
.end annotation


# static fields
.field private static final N0:Ljava/lang/String; = "WearableRecyclerView"


# instance fields
.field private final G0:Landroid/support/wearable/view/u;

.field private H0:Z

.field private I0:Z

.field private J0:Z

.field private K0:I

.field private L0:I

.field private final M0:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/wearable/view/u;

    invoke-direct {v0}, Landroid/support/wearable/view/u;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/wearable/view/WearableRecyclerView;->K0:I

    iput v1, p0, Landroid/support/wearable/view/WearableRecyclerView;->L0:I

    new-instance v1, Landroid/support/wearable/view/WearableRecyclerView$a;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/WearableRecyclerView$a;-><init>(Landroid/support/wearable/view/WearableRecyclerView;)V

    iput-object v1, p0, Landroid/support/wearable/view/WearableRecyclerView;->M0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    if-eqz p2, :cond_0

    sget-object v2, La/h;->L1:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, La/h;->h2:I

    iget-boolean p3, p0, Landroid/support/wearable/view/WearableRecyclerView;->H0:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/wearable/view/WearableRecyclerView;->setCircularScrollingGestureEnabled(Z)V

    sget p2, La/h;->g2:I

    invoke-virtual {v0}, Landroid/support/wearable/view/u;->b()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/wearable/view/WearableRecyclerView;->setBezelWidth(F)V

    sget p2, La/h;->i2:I

    invoke-virtual {v0}, Landroid/support/wearable/view/u;->c()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/wearable/view/WearableRecyclerView;->setScrollDegreesPerScreen(F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance p1, Landroid/support/wearable/view/WearableRecyclerView$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/support/wearable/view/WearableRecyclerView$c;-><init>(Landroid/support/wearable/view/WearableRecyclerView;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method

.method static synthetic A1(Landroid/support/wearable/view/WearableRecyclerView;)Landroid/support/wearable/view/WearableRecyclerView$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private B1()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->I0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    int-to-float v1, v1

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableRecyclerView;->K0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableRecyclerView;->L0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->h0(Landroid/view/View;)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->x1(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object v0, Landroid/support/wearable/view/WearableRecyclerView;->N0:Ljava/lang/String;

    const-string v1, "No children available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private C1()V
    .locals 4

    iget v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->K0:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableRecyclerView;->K0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/WearableRecyclerView;->L0:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static synthetic x1(Landroid/support/wearable/view/WearableRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/wearable/view/WearableRecyclerView;->J0:Z

    return p0
.end method

.method static synthetic y1(Landroid/support/wearable/view/WearableRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/view/WearableRecyclerView;->J0:Z

    return p1
.end method

.method static synthetic z1(Landroid/support/wearable/view/WearableRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableRecyclerView;->B1()V

    return-void
.end method


# virtual methods
.method public getBezelWidth()F
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0}, Landroid/support/wearable/view/u;->b()F

    move-result v0

    return v0
.end method

.method public getCenterEdgeItems()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->I0:Z

    return v0
.end method

.method public getOffsettingHelper()Landroid/support/wearable/view/WearableRecyclerView$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollDegreesPerScreen()F
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0}, Landroid/support/wearable/view/u;->c()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/u;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableRecyclerView;->M0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0}, Landroid/support/wearable/view/u;->a()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableRecyclerView;->M0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->v0()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-static {p1}, Ld/a;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Ld/a;->a(Landroid/view/MotionEvent;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ld/a;->b(Landroid/content/Context;)F

    move-result v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->l()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v4

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v4

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->H0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/u;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBezelWidth(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/u;->f(F)V

    return-void
.end method

.method public setCenterEdgeItems(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/view/WearableRecyclerView;->I0:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableRecyclerView;->B1()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/view/WearableRecyclerView;->J0:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/WearableRecyclerView;->C1()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/view/WearableRecyclerView;->J0:Z

    :goto_0
    return-void
.end method

.method public setCircularScrollingGestureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/view/WearableRecyclerView;->H0:Z

    return-void
.end method

.method public setOffsettingHelper(Landroid/support/wearable/view/WearableRecyclerView$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setScrollDegreesPerScreen(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView;->G0:Landroid/support/wearable/view/u;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/u;->h(F)V

    return-void
.end method
