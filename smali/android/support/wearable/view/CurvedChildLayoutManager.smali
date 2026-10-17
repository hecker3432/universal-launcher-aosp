.class public Landroid/support/wearable/view/CurvedChildLayoutManager;
.super Landroid/support/wearable/view/WearableRecyclerView$ChildLayoutManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final I:Landroid/graphics/Path;

.field private final J:Landroid/graphics/PathMeasure;

.field private K:I

.field private L:I

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private final Q:[F

.field private final R:[F

.field private final S:[F

.field private T:Landroid/support/wearable/view/WearableRecyclerView;

.field private U:Z

.field private V:I

.field private W:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableRecyclerView$ChildLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->R:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->S:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->J:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/wearable/view/r;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->U:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, La/b;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->L:I

    return-void
.end method

.method private Q2(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->K:I

    if-eq v3, v2, :cond_0

    iput v2, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->K:I

    int-to-float v3, v2

    const v4, -0x42bb645a    # -0.048f

    mul-float v4, v4, v3

    iput v4, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->N:F

    const v4, 0x3f8624dd    # 1.048f

    mul-float v4, v4, v3

    iput v4, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->O:F

    const v4, 0x4126aaab

    iput v4, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->P:F

    iget-object v4, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    int-to-float v5, v1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v6, v6, v5

    iget v7, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->N:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    const v6, 0x3eae147b    # 0.34f

    mul-float v12, v5, v6

    const v6, 0x3d99999a    # 0.075f

    mul-float v6, v6, v3

    invoke-virtual {v4, v12, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v13, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    const v4, 0x3e6147ae    # 0.22f

    mul-float v10, v5, v4

    const v4, 0x3e2e147b    # 0.17f

    mul-float v15, v3, v4

    const v4, 0x3e051eb8    # 0.13f

    mul-float v8, v5, v4

    const v4, 0x3ea3d70a    # 0.32f

    mul-float v17, v3, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move v14, v10

    move/from16 v16, v8

    move/from16 v18, v8

    move/from16 v19, v2

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v7, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    const v2, 0x3f2e147b    # 0.68f

    mul-float v9, v3, v2

    const v2, 0x3f547ae1    # 0.83f

    mul-float v11, v3, v2

    const v2, 0x3f6ccccd    # 0.925f

    mul-float v13, v3, v2

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->O:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->J:Landroid/graphics/PathMeasure;

    iget-object v2, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->I:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v1, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->J:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iput v1, v0, Landroid/support/wearable/view/CurvedChildLayoutManager;->M:F

    :cond_0
    return-void
.end method


# virtual methods
.method public N2(Landroid/view/View;Landroid/support/wearable/view/WearableRecyclerView;)V
    .locals 8

    iget-object v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->T:Landroid/support/wearable/view/WearableRecyclerView;

    if-eq v0, p2, :cond_0

    iput-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->T:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->V:I

    iget-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->T:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->W:I

    :cond_0
    iget-boolean p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->U:Z

    if-eqz p2, :cond_5

    iget p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->V:I

    iget v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->W:I

    invoke-direct {p0, p2, v0}, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q2(II)V

    iget-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->S:[F

    iget v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->L:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v3, 0x1

    aput v0, p2, v3

    iget-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->S:[F

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/CurvedChildLayoutManager;->P2(Landroid/view/View;[F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    neg-float p2, p2

    div-float/2addr p2, v2

    iget v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->W:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v0, v4

    sub-float v2, v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->S:[F

    aget v5, v5, v3

    add-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v4

    div-float/2addr v5, v2

    iget-object v2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->J:Landroid/graphics/PathMeasure;

    iget v6, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->M:F

    mul-float v5, v5, v6

    iget-object v6, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    iget-object v7, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->R:[F

    invoke-virtual {v2, v5, v6, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aget v2, v2, v3

    iget v5, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->N:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aget v2, v2, v3

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aget v2, v2, v3

    iget v6, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->O:F

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aget v2, v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aput v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->P:F

    mul-float v0, v0, v2

    aput v0, p2, v1

    :cond_4
    iget-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aget p2, p2, v1

    iget-object v0, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->S:[F

    aget v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object p2, p0, Landroid/support/wearable/view/CurvedChildLayoutManager;->Q:[F

    aget p2, p2, v3

    sub-float/2addr p2, v4

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    return-void
.end method

.method public P2(Landroid/view/View;[F)V
    .locals 0

    return-void
.end method
