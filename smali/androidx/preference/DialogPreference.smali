.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field private P:Ljava/lang/CharSequence;

.field private Q:Ljava/lang/CharSequence;

.field private R:Landroid/graphics/drawable/Drawable;

.field private S:Ljava/lang/CharSequence;

.field private T:Ljava/lang/CharSequence;

.field private U:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, LQ/f;->c:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, LA/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, LQ/m;->B:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, LQ/m;->L:I

    sget p3, LQ/m;->C:I

    invoke-static {p1, p2, p3}, LA/i;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->P:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->P:Ljava/lang/CharSequence;

    :cond_0
    sget p2, LQ/m;->K:I

    sget p3, LQ/m;->D:I

    invoke-static {p1, p2, p3}, LA/i;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->Q:Ljava/lang/CharSequence;

    sget p2, LQ/m;->I:I

    sget p3, LQ/m;->E:I

    invoke-static {p1, p2, p3}, LA/i;->c(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->R:Landroid/graphics/drawable/Drawable;

    sget p2, LQ/m;->N:I

    sget p3, LQ/m;->F:I

    invoke-static {p1, p2, p3}, LA/i;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->S:Ljava/lang/CharSequence;

    sget p2, LQ/m;->M:I

    sget p3, LQ/m;->G:I

    invoke-static {p1, p2, p3}, LA/i;->o(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->T:Ljava/lang/CharSequence;

    sget p2, LQ/m;->J:I

    sget p3, LQ/m;->H:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, LA/i;->n(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/DialogPreference;->U:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public C0()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/preference/DialogPreference;->R:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public D0()I
    .locals 1

    iget v0, p0, Landroidx/preference/DialogPreference;->U:I

    return v0
.end method

.method public E0()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/DialogPreference;->Q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public F0()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/DialogPreference;->P:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public G0()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/DialogPreference;->T:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public H0()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/DialogPreference;->S:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected Q()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->x()Landroidx/preference/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/g;->u(Landroidx/preference/Preference;)V

    return-void
.end method
