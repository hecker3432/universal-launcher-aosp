.class Landroidx/appcompat/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/appcompat/widget/k;

.field private c:I

.field private d:Landroidx/appcompat/widget/J0;

.field private e:Landroidx/appcompat/widget/J0;

.field private f:Landroidx/appcompat/widget/J0;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/f;->c:I

    iput-object p1, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-static {}, Landroidx/appcompat/widget/k;->b()Landroidx/appcompat/widget/k;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/k;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/f;->f:Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Landroidx/appcompat/widget/J0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/f;->f:Landroidx/appcompat/widget/J0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->f:Landroidx/appcompat/widget/J0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/J0;->a()V

    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-static {v1}, LI/P;->n(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Landroidx/appcompat/widget/J0;->d:Z

    iput-object v1, v0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-static {v1}, LI/P;->o(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Landroidx/appcompat/widget/J0;->c:Z

    iput-object v1, v0, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v1, v0, Landroidx/appcompat/widget/J0;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroidx/appcompat/widget/J0;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/k;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/J0;[I)V

    return v2
.end method

.method private k()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->d:Landroidx/appcompat/widget/J0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method b()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/appcompat/widget/f;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/k;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/J0;[I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/f;->d:Landroidx/appcompat/widget/J0;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/k;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/J0;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method e(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lh/j;->R3:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v3, p2, v1}, Landroidx/appcompat/widget/L0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/L0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/appcompat/widget/L0;->q()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, LI/P;->L(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Lh/j;->S3:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/L0;->r(I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/L0;->m(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/f;->c:I

    iget-object p1, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/k;

    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Landroidx/appcompat/widget/f;->c:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/k;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->h(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget p1, Lh/j;->T3:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/L0;->r(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/L0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, LI/P;->P(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p1, Lh/j;->U3:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/L0;->r(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/L0;->j(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/appcompat/widget/j0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p2, p1}, LI/P;->Q(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/L0;->v()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/L0;->v()V

    throw p1
.end method

.method f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/widget/f;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->b()V

    return-void
.end method

.method g(I)V
    .locals 2

    iput p1, p0, Landroidx/appcompat/widget/f;->c:I

    iget-object v0, p0, Landroidx/appcompat/widget/f;->b:Landroidx/appcompat/widget/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/k;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->b()V

    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->d:Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Landroidx/appcompat/widget/J0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/f;->d:Landroidx/appcompat/widget/J0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->d:Landroidx/appcompat/widget/J0;

    iput-object p1, v0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/J0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/f;->d:Landroidx/appcompat/widget/J0;

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->b()V

    return-void
.end method

.method i(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Landroidx/appcompat/widget/J0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    iput-object p1, v0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/J0;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->b()V

    return-void
.end method

.method j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Landroidx/appcompat/widget/J0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/f;->e:Landroidx/appcompat/widget/J0;

    iput-object p1, v0, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/J0;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->b()V

    return-void
.end method
