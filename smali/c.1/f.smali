.class public Lc/f;
.super Lc/c;
.source "SourceFile"


# static fields
.field private static final f:F


# instance fields
.field private final c:Lc/g;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lc/f;->f:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c;-><init>()V

    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    iput-object v0, p0, Lc/f;->c:Lc/g;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/f;->e:Landroid/graphics/Rect;

    return-void
.end method

.method private w()V
    .locals 4

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc/f;->k(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    const v1, 0x3f333333    # 0.7f

    sget v2, Lc/f;->f:F

    mul-float v2, v2, v1

    invoke-static {v0, v0, v2}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lc/f;->c:Lc/g;

    iget-object v1, p0, Lc/f;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lc/f;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc/c;->v(IILandroid/support/wearable/complications/ComplicationData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/f;->c:Lc/g;

    invoke-virtual {v0, p1}, Lc/g;->c(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    const v1, 0x3f333333    # 0.7f

    invoke-static {p1, v0, v1}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :goto_1
    return-void
.end method

.method public k(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p1}, Lc/d;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1, v1}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, p1}, Lc/d;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1, v1}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :goto_1
    return-void
.end method

.method public l()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Lc/f;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc/c;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/f;->e:Landroid/graphics/Rect;

    invoke-static {v0}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/f;->c:Lc/g;

    invoke-virtual {v0}, Lc/g;->l()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p1}, Lc/d;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->g(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1, p1}, Lc/d;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/f;->c:Lc/g;

    invoke-virtual {v0, p1}, Lc/g;->m(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    return-void
.end method

.method public n()I
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    iget-object v1, p0, Lc/f;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lc/c;->a(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/f;->e:Landroid/graphics/Rect;

    invoke-static {v1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    return v0

    :cond_0
    const/16 v0, 0x10

    return v0

    :cond_1
    iget-object v0, p0, Lc/f;->c:Lc/g;

    invoke-virtual {v0}, Lc/g;->n()I

    move-result v0

    return v0
.end method

.method public o()Landroid/text/Layout$Alignment;
    .locals 1

    invoke-virtual {p0}, Lc/f;->l()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p1}, Lc/d;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/f;->c:Lc/g;

    invoke-virtual {v0, p1}, Lc/g;->p(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/f;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1
    return-void
.end method

.method public q()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public s(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 0

    invoke-super {p0, p1}, Lc/c;->s(Landroid/support/wearable/complications/ComplicationData;)V

    invoke-direct {p0}, Lc/f;->w()V

    return-void
.end method

.method public t(I)V
    .locals 0

    invoke-super {p0, p1}, Lc/c;->t(I)V

    invoke-direct {p0}, Lc/f;->w()V

    return-void
.end method

.method public u(I)V
    .locals 0

    invoke-super {p0, p1}, Lc/c;->u(I)V

    invoke-direct {p0}, Lc/f;->w()V

    return-void
.end method
