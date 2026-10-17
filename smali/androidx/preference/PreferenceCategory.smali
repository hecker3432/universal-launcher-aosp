.class public Landroidx/preference/PreferenceCategory;
.super Landroidx/preference/PreferenceGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, LQ/f;->f:I

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, LA/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P(Landroidx/preference/h;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->P(Landroidx/preference/h;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$C;->b:Landroid/view/View;

    invoke-static {p1, v2}, LQ/c;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, LQ/f;->b:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/h;->N(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    move-result-object v1

    sget v2, LQ/g;->a:I

    invoke-static {v1, v2}, Lz/b;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-eq v2, v1, :cond_3

    return-void

    :cond_3
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public U(LJ/z;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->U(LJ/z;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, LJ/z;->n()LJ/z$c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, LJ/z$c;->c()I

    move-result v1

    invoke-virtual {v0}, LJ/z$c;->d()I

    move-result v2

    invoke-virtual {v0}, LJ/z$c;->a()I

    move-result v3

    invoke-virtual {v0}, LJ/z$c;->b()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0}, LJ/z$c;->e()Z

    move-result v6

    invoke-static/range {v1 .. v6}, LJ/z$c;->f(IIIIZZ)LJ/z$c;

    move-result-object v0

    invoke-virtual {p1, v0}, LJ/z;->M(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public x0()Z
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->F()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
