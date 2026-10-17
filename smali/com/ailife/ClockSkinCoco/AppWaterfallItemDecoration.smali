.class public Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "AppWaterfallItemDecoration.java"


# instance fields
.field private final halfIconWidthPx:I

.field private final itemSpacingPx:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 11
    iput p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;->halfIconWidthPx:I

    .line 12
    iput p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;->itemSpacingPx:I

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .registers 10

    .line 16
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->c0(Landroid/view/View;)I

    move-result p2

    .line 18
    const/4 p3, 0x4

    .line 19
    # row = position / 4
    div-int v0, p2, p3

    # column = position % 4
    rem-int v3, p2, p3

    .line 20
    # Calculate exact spacing: 3% on each side for 6% gaps
    iget v4, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;->itemSpacingPx:I

    # All items get spacing
    iput v4, p1, Landroid/graphics/Rect;->left:I
    iput v4, p1, Landroid/graphics/Rect;->right:I

    # Additionally, even rows get waterfall offset
    rem-int/lit8 v1, v0, 0x2
    const/4 v2, 0x0
    if-ne v1, v2, :cond_1e

    # Even row: add waterfall offset to ALL items
    iget v1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;->halfIconWidthPx:I
    iget v2, p1, Landroid/graphics/Rect;->left:I
    add-int/2addr v2, v1
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 25
    :cond_1e
    return-void
.end method

.method public h(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method
