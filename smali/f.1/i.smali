.class public Lf/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lf/a;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Path;

.field private f:Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

.field private g:Z

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/Map;

.field private j:Landroid/util/SparseArray;

.field private k:Landroid/util/SparseArray;

.field private l:Landroid/support/wearable/complications/ComplicationData;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private final r:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lf/i;->b:Landroid/os/Handler;

    new-instance v0, Lf/a;

    invoke-direct {v0}, Lf/a;-><init>()V

    iput-object v0, p0, Lf/i;->c:Lf/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/i;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf/i;->e:Landroid/graphics/Path;

    new-instance v0, Lf/i$a;

    invoke-direct {v0, p0}, Lf/i$a;-><init>(Lf/i;)V

    iput-object v0, p0, Lf/i;->r:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p1, p0, Lf/i;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lf/i;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf/i;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lf/i;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lf/i;->j:Landroid/util/SparseArray;

    return-object p0
.end method

.method private e()Landroid/support/wearable/complications/rendering/ComplicationDrawable;
    .locals 3

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    iget-object v1, p0, Lf/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBorderColorActive(I)V

    iget-object v1, p0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, La/b;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBorderDashWidthActive(I)V

    iget-object v1, p0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, La/b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBorderDashGapActive(I)V

    return-object v0
.end method

.method private f(Landroid/support/wearable/watchface/decomposition/ComplicationComponent;Landroid/graphics/Canvas;Lf/a;)V
    .locals 3

    iget-object v0, p0, Lf/i;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    iget-wide v1, p0, Lf/i;->m:J

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setCurrentTimeMillis(J)V

    iget-boolean v1, p0, Lf/i;->n:Z

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setInAmbientMode(Z)V

    iget-boolean v1, p0, Lf/i;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBurnInProtection(Z)V

    iget-boolean v1, p0, Lf/i;->p:Z

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setLowBitAmbient(Z)V

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->h()Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lf/i;->d:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, v1}, Lf/a;->a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lf/i;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private g(Landroid/support/wearable/watchface/decomposition/ImageComponent;Landroid/graphics/Canvas;Lf/a;)V
    .locals 3

    iget-object v0, p0, Lf/i;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->k()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lf/i;->n:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->i()F

    move-result v1

    const v2, 0x48fd2000    # 518400.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->h()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lf/i;->d:Landroid/graphics/Rect;

    invoke-virtual {p3, v1, v2}, Lf/a;->a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lf/i;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->l()F

    move-result v1

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->i()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lf/i;->c(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->j()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lf/i;->d(FF)F

    move-result v1

    invoke-static {v0, v1}, Lf/d;->a(Landroid/graphics/drawable/RotateDrawable;F)V

    invoke-static {v0, v1}, Lf/e;->a(Landroid/graphics/drawable/RotateDrawable;F)V

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->m()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, v1}, Lf/a;->b(F)I

    move-result v1

    iget-object v2, p0, Lf/i;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lf/f;->a(Landroid/graphics/drawable/RotateDrawable;F)V

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->m()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1}, Lf/a;->c(F)I

    move-result p1

    iget-object p3, p0, Lf/i;->d:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-static {v0, p1}, Lf/g;->a(Landroid/graphics/drawable/RotateDrawable;F)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/RotateDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private h(Landroid/support/wearable/watchface/decomposition/NumberComponent;Landroid/graphics/Canvas;Lf/a;)V
    .locals 6

    iget-boolean v0, p0, Lf/i;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/NumberComponent;->m()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/i;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/NumberComponent;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/n;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v1, p0, Lf/i;->m:J

    invoke-virtual {p1, v1, v2}, Landroid/support/wearable/watchface/decomposition/NumberComponent;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/NumberComponent;->j()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/NumberComponent;->n()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0}, Lf/n;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Lf/n;->getIntrinsicHeight()I

    move-result v4

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, v5}, Lf/a;->b(F)I

    move-result v5

    mul-int v2, v2, v3

    add-int/2addr v5, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1}, Lf/a;->c(F)I

    move-result p1

    iget-object p3, p0, Lf/i;->d:Landroid/graphics/Rect;

    add-int v2, v5, v3

    add-int/2addr v4, p1

    invoke-virtual {p3, v5, p1, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    iget-object p3, p0, Lf/i;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v2, 0xa

    invoke-static {p3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result p3

    invoke-virtual {v0, p3}, Lf/n;->a(I)V

    invoke-virtual {v0, p2}, Lf/n;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lf/i;->d:Landroid/graphics/Rect;

    neg-int v2, v3

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private i()Landroid/support/wearable/complications/ComplicationData;
    .locals 3

    iget-object v0, p0, Lf/i;->l:Landroid/support/wearable/complications/ComplicationData;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/wearable/complications/ComplicationData$b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/wearable/complications/ComplicationData$b;-><init>(I)V

    iget-object v1, p0, Lf/i;->a:Landroid/content/Context;

    sget v2, La/c;->a:I

    invoke-static {v1, v2}, Lf/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/ComplicationData$b;->f(Landroid/graphics/drawable/Icon;)Landroid/support/wearable/complications/ComplicationData$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData$b;->c()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    iput-object v0, p0, Lf/i;->l:Landroid/support/wearable/complications/ComplicationData;

    :cond_0
    iget-object v0, p0, Lf/i;->l:Landroid/support/wearable/complications/ComplicationData;

    return-object v0
.end method

.method private j()J
    .locals 5

    iget-wide v0, p0, Lf/i;->m:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    iget-wide v3, p0, Lf/i;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private k()V
    .locals 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lf/i;->i:Ljava/util/Map;

    iget-object v0, p0, Lf/i;->f:Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    invoke-virtual {v0}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/watchface/decomposition/ImageComponent;

    invoke-virtual {v1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;->k()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lf/i;->a:Landroid/content/Context;

    new-instance v3, Lf/i$c;

    invoke-direct {v3, p0, v1}, Lf/i$c;-><init>(Lf/i;Landroid/graphics/drawable/Icon;)V

    iget-object v4, p0, Lf/i;->b:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lf/i;->j:Landroid/util/SparseArray;

    iget-object v0, p0, Lf/i;->f:Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    invoke-virtual {v0}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/watchface/decomposition/FontComponent;

    invoke-virtual {v1}, Landroid/support/wearable/watchface/decomposition/FontComponent;->i()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lf/i;->a:Landroid/content/Context;

    new-instance v4, Lf/i$d;

    invoke-direct {v4, p0, v1}, Lf/i$d;-><init>(Lf/i;Landroid/support/wearable/watchface/decomposition/FontComponent;)V

    iget-object v1, p0, Lf/i;->b:Landroid/os/Handler;

    invoke-static {v2, v3, v4, v1}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lf/i;->k:Landroid/util/SparseArray;

    iget-object v0, p0, Lf/i;->f:Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    invoke-virtual {v0}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    invoke-virtual {v1}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->i()Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    move-result-object v2

    iget-boolean v3, p0, Lf/i;->g:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lf/i;->e()Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    new-instance v3, Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    invoke-direct {v3}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>()V

    goto :goto_3

    :cond_4
    new-instance v3, Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    invoke-direct {v3, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    :cond_5
    :goto_3
    iget-object v2, p0, Lf/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setContext(Landroid/content/Context;)V

    iget-object v2, p0, Lf/i;->r:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setLowBitAmbient(Z)V

    invoke-virtual {v3, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBurnInProtection(Z)V

    iget-object v2, p0, Lf/i;->k:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->j()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v2, p0, Lf/i;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->j()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lf/i;->m(ILandroid/support/wearable/complications/ComplicationData;)V

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method c(FF)F
    .locals 7

    invoke-direct {p0}, Lf/i;->j()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    rem-long/2addr v0, v5

    long-to-float v0, v0

    mul-float p2, p2, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p1, p2

    return p1
.end method

.method d(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return p1

    :cond_0
    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lf/i;->f:Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lf/i;->q:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lf/i;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    iget-object v1, p0, Lf/i;->c:Lf/a;

    invoke-virtual {v1, v0}, Lf/a;->d(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lf/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;

    iget-boolean v2, p0, Lf/i;->n:Z

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$Component;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    iget-boolean v2, p0, Lf/i;->n:Z

    if-nez v2, :cond_4

    invoke-interface {v1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$Component;->e()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    instance-of v2, v1, Landroid/support/wearable/watchface/decomposition/ImageComponent;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/support/wearable/watchface/decomposition/ImageComponent;

    iget-object v2, p0, Lf/i;->c:Lf/a;

    invoke-direct {p0, v1, p1, v2}, Lf/i;->g(Landroid/support/wearable/watchface/decomposition/ImageComponent;Landroid/graphics/Canvas;Lf/a;)V

    goto :goto_0

    :cond_5
    instance-of v2, v1, Landroid/support/wearable/watchface/decomposition/NumberComponent;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/support/wearable/watchface/decomposition/NumberComponent;

    iget-object v2, p0, Lf/i;->c:Lf/a;

    invoke-direct {p0, v1, p1, v2}, Lf/i;->h(Landroid/support/wearable/watchface/decomposition/NumberComponent;Landroid/graphics/Canvas;Lf/a;)V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lf/i;->g:Z

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    iget-object v2, p0, Lf/i;->c:Lf/a;

    invoke-direct {p0, v1, p1, v2}, Lf/i;->f(Landroid/support/wearable/watchface/decomposition/ComplicationComponent;Landroid/graphics/Canvas;Lf/a;)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lf/i;->g:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lf/i;->a:Landroid/content/Context;

    sget v1, La/a;->i:I

    invoke-static {v0, v1}, Lf/c;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lf/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;

    instance-of v2, v1, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    if-eqz v2, :cond_8

    check-cast v1, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    iget-object v2, p0, Lf/i;->c:Lf/a;

    invoke-direct {p0, v1, p1, v2}, Lf/i;->f(Landroid/support/wearable/watchface/decomposition/ComplicationComponent;Landroid/graphics/Canvas;Lf/a;)V

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lf/i;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lf/i;->q:Z

    return-void
.end method

.method public m(ILandroid/support/wearable/complications/ComplicationData;)V
    .locals 1

    iget-object v0, p0, Lf/i;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lf/i;->g:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lf/i;->i()Landroid/support/wearable/complications/ComplicationData;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBorderStyleActive(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setBorderStyleActive(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setComplicationData(Landroid/support/wearable/complications/ComplicationData;)V

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public n(J)V
    .locals 0

    iput-wide p1, p0, Lf/i;->m:J

    return-void
.end method

.method public o(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;Z)V
    .locals 1

    iput-object p1, p0, Lf/i;->f:Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;

    iput-boolean p2, p0, Lf/i;->g:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lf/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lf/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lf/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lf/i;->h:Ljava/util/ArrayList;

    new-instance p2, Lf/i$b;

    invoke-direct {p2, p0}, Lf/i$b;-><init>(Lf/i;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lf/i;->k()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lf/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lf/i;->e:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-static/range {v1 .. v6}, Lf/b;->a(Landroid/graphics/Path;FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
