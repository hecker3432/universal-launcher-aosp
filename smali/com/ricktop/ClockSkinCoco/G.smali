.class public Lcom/ricktop/ClockSkinCoco/G;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/G$a;
    }
.end annotation


# static fields
.field private static f:F

.field private static g:F


# instance fields
.field private a:I

.field private final b:Lcom/ricktop/ClockSkinCoco/G$a;

.field private final c:Lcom/ricktop/ClockSkinCoco/G$a;

.field private final d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ricktop/ClockSkinCoco/G;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/G;->d:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/G;->e:Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-direct {p2, p1}, Lcom/ricktop/ClockSkinCoco/G$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-direct {p2, p1}, Lcom/ricktop/ClockSkinCoco/G$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    return-void
.end method

.method static synthetic b(F)F
    .locals 0

    sput p0, Lcom/ricktop/ClockSkinCoco/G;->f:F

    return p0
.end method

.method static synthetic c(F)F
    .locals 0

    sput p0, Lcom/ricktop/ClockSkinCoco/G;->g:F

    return p0
.end method

.method static synthetic d(F)F
    .locals 0

    invoke-static {p0}, Lcom/ricktop/ClockSkinCoco/G;->q(F)F

    move-result p0

    return p0
.end method

.method private g(IIIIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-boolean v1, v0, Lcom/ricktop/ClockSkinCoco/G;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/G;->l()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/G$a;->c(Lcom/ricktop/ClockSkinCoco/G$a;)F

    move-result v1

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/G$a;->c(Lcom/ricktop/ClockSkinCoco/G$a;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    move/from16 v5, p4

    int-to-float v6, v5

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_2

    :cond_0
    :goto_0
    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move v3, p3

    goto :goto_0

    :cond_2
    :goto_1
    move v2, v5

    move v5, v3

    :goto_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/ricktop/ClockSkinCoco/G;->a:I

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Lcom/ricktop/ClockSkinCoco/G$a;->k(IIIII)V

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Lcom/ricktop/ClockSkinCoco/G$a;->k(IIIII)V

    return-void
.end method

.method private static q(F)F
    .locals 3

    sget v0, Lcom/ricktop/ClockSkinCoco/G;->f:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float v0, v0, p0

    const p0, 0x3ebc5ab2

    add-float/2addr p0, v0

    :goto_0
    sget v0, Lcom/ricktop/ClockSkinCoco/G;->g:F

    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->i()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->i()V

    return-void
.end method

.method e()Z
    .locals 7

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/G;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/G;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->a(Lcom/ricktop/ClockSkinCoco/G$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->w()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->i()V

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->a(Lcom/ricktop/ClockSkinCoco/G$a;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->w()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->h()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->i()V

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->f(Lcom/ricktop/ClockSkinCoco/G$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->e(Lcom/ricktop/ClockSkinCoco/G$a;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/G;->q(F)F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-interface {v0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v2, v0}, Lcom/ricktop/ClockSkinCoco/G$a;->x(F)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v2, v0}, Lcom/ricktop/ClockSkinCoco/G$a;->x(F)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/G;->a()V

    :cond_6
    :goto_1
    return v1
.end method

.method f(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/ricktop/ClockSkinCoco/G;->g(IIIIIIIIII)V

    return-void
.end method

.method h()F
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->c(Lcom/ricktop/ClockSkinCoco/G$a;)F

    move-result v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/G$a;->c(Lcom/ricktop/ClockSkinCoco/G$a;)F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/G$a;->c(Lcom/ricktop/ClockSkinCoco/G$a;)F

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/G$a;->c(Lcom/ricktop/ClockSkinCoco/G$a;)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method final i()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->b(Lcom/ricktop/ClockSkinCoco/G$a;)I

    move-result v0

    return v0
.end method

.method final j()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->b(Lcom/ricktop/ClockSkinCoco/G$a;)I

    move-result v0

    return v0
.end method

.method final k()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->d(Lcom/ricktop/ClockSkinCoco/G$a;)I

    move-result v0

    return v0
.end method

.method final l()Z
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->a(Lcom/ricktop/ClockSkinCoco/G$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/G$a;->a(Lcom/ricktop/ClockSkinCoco/G$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m(I)V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/G$a;->q(I)V

    return-void
.end method

.method n(III)V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ricktop/ClockSkinCoco/G$a;->p(III)V

    return-void
.end method

.method o(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ricktop/ClockSkinCoco/G;->p(IIIII)V

    return-void
.end method

.method p(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/G;->a:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/G;->b:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {v0, p1, p3, p5}, Lcom/ricktop/ClockSkinCoco/G$a;->u(III)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/G;->c:Lcom/ricktop/ClockSkinCoco/G$a;

    invoke-virtual {p1, p2, p4, p5}, Lcom/ricktop/ClockSkinCoco/G$a;->u(III)V

    return-void
.end method
