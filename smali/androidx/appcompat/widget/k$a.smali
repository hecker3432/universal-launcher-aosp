.class Landroidx/appcompat/widget/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/z0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/k;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[I

.field private final f:[I


# direct methods
.method constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lh/e;->S:I

    sget v1, Lh/e;->Q:I

    sget v2, Lh/e;->a:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k$a;->a:[I

    sget v1, Lh/e;->o:I

    sget v2, Lh/e;->B:I

    sget v3, Lh/e;->t:I

    sget v4, Lh/e;->p:I

    sget v5, Lh/e;->q:I

    sget v6, Lh/e;->s:I

    sget v7, Lh/e;->r:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k$a;->b:[I

    sget v1, Lh/e;->P:I

    sget v2, Lh/e;->R:I

    sget v3, Lh/e;->k:I

    sget v4, Lh/e;->I:I

    sget v5, Lh/e;->J:I

    sget v6, Lh/e;->L:I

    sget v7, Lh/e;->N:I

    sget v8, Lh/e;->K:I

    sget v9, Lh/e;->M:I

    sget v10, Lh/e;->O:I

    filled-new-array/range {v1 .. v10}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k$a;->c:[I

    sget v0, Lh/e;->w:I

    sget v1, Lh/e;->i:I

    sget v2, Lh/e;->v:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k$a;->d:[I

    sget v0, Lh/e;->H:I

    sget v1, Lh/e;->T:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k$a;->e:[I

    sget v0, Lh/e;->c:I

    sget v1, Lh/e;->g:I

    sget v2, Lh/e;->d:I

    sget v3, Lh/e;->h:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/k$a;->f:[I

    return-void
.end method

.method private f([II)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/k$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lh/a;->s:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lh/a;->q:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/H0;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Landroidx/appcompat/widget/H0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, Landroidx/appcompat/widget/H0;->e:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, LB/a;->b(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroidx/appcompat/widget/H0;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, LB/a;->b(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroidx/appcompat/widget/H0;->i:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Lh/a;->p:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/k$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private j(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Lh/a;->q:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/k$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private k(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lh/a;->u:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/H0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v2, Landroidx/appcompat/widget/H0;->b:[I

    aput-object v2, v1, v6

    invoke-virtual {v3, v2, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v0, v6

    sget-object v2, Landroidx/appcompat/widget/H0;->f:[I

    aput-object v2, v1, v5

    sget v2, Lh/a;->r:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v5

    sget-object p1, Landroidx/appcompat/widget/H0;->i:[I

    aput-object p1, v1, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v4

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/appcompat/widget/H0;->b:[I

    aput-object v3, v1, v6

    invoke-static {p1, v2}, Landroidx/appcompat/widget/H0;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v6

    sget-object v3, Landroidx/appcompat/widget/H0;->f:[I

    aput-object v3, v1, v5

    sget v3, Lh/a;->r:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v5

    sget-object v3, Landroidx/appcompat/widget/H0;->i:[I

    aput-object v3, v1, v4

    invoke-static {p1, v2}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/widget/j0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_1
    invoke-static {p2, p3}, Landroidx/appcompat/widget/k;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/z0;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lh/e;->j:I

    if-ne p3, v0, :cond_0

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lh/e;->i:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/z0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lh/e;->k:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/z0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/k$a;->a:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/k$a;->f([II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    sget p2, Lh/a;->t:I

    :goto_0
    move-object v1, v0

    :goto_1
    const/4 v0, -0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/k$a;->c:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/k$a;->f([II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p2, Lh/a;->r:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/k$a;->d:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/k$a;->f([II)Z

    move-result v1

    const v5, 0x1010031

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    move-object v1, v0

    const p2, 0x1010031

    goto :goto_1

    :cond_2
    sget v1, Lh/e;->u:I

    if-ne p2, v1, :cond_3

    const p2, 0x42233333    # 40.8f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v1, 0x1010030

    move-object v1, v0

    const/4 v5, 0x1

    move v0, p2

    const p2, 0x1010030

    goto :goto_3

    :cond_3
    sget v1, Lh/e;->l:I

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    const/4 p2, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    invoke-static {p3}, Landroidx/appcompat/widget/j0;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_5
    invoke-static {p1, p2}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/k;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v4, :cond_6

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v2

    :cond_7
    return v3
.end method

.method public c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Lh/e;->m:I

    if-ne p2, v0, :cond_0

    sget p2, Lh/c;->e:I

    invoke-static {p1, p2}, Lj/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, Lh/e;->G:I

    if-ne p2, v0, :cond_1

    sget p2, Lh/c;->h:I

    invoke-static {p1, p2}, Lj/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    sget v0, Lh/e;->F:I

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/k$a;->k(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_2
    sget v0, Lh/e;->f:I

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/k$a;->j(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_3
    sget v0, Lh/e;->b:I

    if-ne p2, v0, :cond_4

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/k$a;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    sget v0, Lh/e;->e:I

    if-ne p2, v0, :cond_5

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/k$a;->i(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    sget v0, Lh/e;->D:I

    if-eq p2, v0, :cond_b

    sget v0, Lh/e;->E:I

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/k$a;->b:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/k$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p2, Lh/a;->t:I

    invoke-static {p1, p2}, Landroidx/appcompat/widget/H0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/k$a;->e:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/k$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p2, Lh/c;->d:I

    invoke-static {p1, p2}, Lj/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/k$a;->f:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/k$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p2, Lh/c;->c:I

    invoke-static {p1, p2}, Lj/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9
    sget v0, Lh/e;->A:I

    if-ne p2, v0, :cond_a

    sget p2, Lh/c;->f:I

    invoke-static {p1, p2}, Lj/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_0
    sget p2, Lh/c;->g:I

    invoke-static {p1, p2}, Lj/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    sget v0, Lh/e;->C:I

    const/4 v1, 0x1

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_0

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->t:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    invoke-direct {p0, p2, v4, v5}, Landroidx/appcompat/widget/k$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Landroidx/appcompat/widget/k$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lh/a;->r:I

    invoke-static {p1, p3}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/k$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1

    :cond_0
    sget v0, Lh/e;->y:I

    if-eq p2, v0, :cond_2

    sget v0, Lh/e;->x:I

    if-eq p2, v0, :cond_2

    sget v0, Lh/e;->z:I

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->t:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-direct {p0, p2, v0, v4}, Landroidx/appcompat/widget/k$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->r:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Landroidx/appcompat/widget/k$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v0}, Landroidx/appcompat/widget/H0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {}, Landroidx/appcompat/widget/k;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/k$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1
.end method

.method public e(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget v0, Lh/e;->F:I

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
