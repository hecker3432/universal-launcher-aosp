.class public abstract Landroidx/preference/d;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/g$c;
.implements Landroidx/preference/g$a;
.implements Landroidx/preference/g$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/d$c;
    }
.end annotation


# instance fields
.field private final Y:Landroidx/preference/d$c;

.field private Z:Landroidx/preference/g;

.field a0:Landroidx/recyclerview/widget/RecyclerView;

.field private b0:Z

.field private c0:Z

.field private d0:I

.field private e0:Ljava/lang/Runnable;

.field private f0:Landroid/os/Handler;

.field private final g0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/preference/d$c;

    invoke-direct {v0, p0}, Landroidx/preference/d$c;-><init>(Landroidx/preference/d;)V

    iput-object v0, p0, Landroidx/preference/d;->Y:Landroidx/preference/d$c;

    sget v0, LQ/j;->c:I

    iput v0, p0, Landroidx/preference/d;->d0:I

    new-instance v0, Landroidx/preference/d$a;

    invoke-direct {v0, p0}, Landroidx/preference/d$a;-><init>(Landroidx/preference/d;)V

    iput-object v0, p0, Landroidx/preference/d;->f0:Landroid/os/Handler;

    new-instance v0, Landroidx/preference/d$b;

    invoke-direct {v0, p0}, Landroidx/preference/d$b;-><init>(Landroidx/preference/d;)V

    iput-object v0, p0, Landroidx/preference/d;->g0:Ljava/lang/Runnable;

    return-void
.end method

.method private N1()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/d;->f0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/preference/d;->f0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private O1()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private S1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/d;->F1()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {p0}, Landroidx/preference/d;->G1()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->S()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/d;->M1()V

    return-void
.end method


# virtual methods
.method public C1(I)V
    .locals 3

    invoke-direct {p0}, Landroidx/preference/d;->O1()V

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/d;->G1()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/g;->m(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/d;->R1(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method D1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/d;->G1()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/d;->F1()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/d;->I1(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->M()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/d;->H1()V

    return-void
.end method

.method public E0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/d;->G1()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->j0(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public E1()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->F0()V

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {v0, p0}, Landroidx/preference/g;->q(Landroidx/preference/g$c;)V

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {v0, p0}, Landroidx/preference/g;->o(Landroidx/preference/g$a;)V

    return-void
.end method

.method public final F1()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroidx/preference/d;->a0:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public G0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->G0()V

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/g;->q(Landroidx/preference/g$c;)V

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {v0, v1}, Landroidx/preference/g;->o(Landroidx/preference/g$a;)V

    return-void
.end method

.method public G1()Landroidx/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {v0}, Landroidx/preference/g;->k()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public H0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->H0(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/d;->G1()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->i0(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Landroidx/preference/d;->b0:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/d;->D1()V

    iget-object p1, p0, Landroidx/preference/d;->e0:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/d;->e0:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/d;->c0:Z

    return-void
.end method

.method protected H1()V
    .locals 0

    return-void
.end method

.method protected I1(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 1

    new-instance v0, Landroidx/preference/e;

    invoke-direct {v0, p1}, Landroidx/preference/e;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public J1()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract K1(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public L1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, LQ/i;->b:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    sget p3, LQ/j;->d:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/preference/d;->J1()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance p2, LQ/e;

    invoke-direct {p2, p1}, LQ/e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/l;)V

    return-object p1
.end method

.method protected M1()V
    .locals 0

    return-void
.end method

.method public P1(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/d;->Y:Landroidx/preference/d$c;

    invoke-virtual {v0, p1}, Landroidx/preference/d$c;->j(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Q1(I)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/d;->Y:Landroidx/preference/d$c;

    invoke-virtual {v0, p1}, Landroidx/preference/d$c;->k(I)V

    return-void
.end method

.method public R1(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {v0, p1}, Landroidx/preference/g;->r(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/d;->M1()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/d;->b0:Z

    iget-boolean p1, p0, Landroidx/preference/d;->c0:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/preference/d;->N1()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/d;->E1()Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/m;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->X(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/a;->T1(Ljava/lang/String;)Landroidx/preference/a;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ/a;->T1(Ljava/lang/String;)LQ/a;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ/b;->T1(Ljava/lang/String;)LQ/b;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->v1(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->F()Landroidx/fragment/app/m;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/c;->K1(Landroidx/fragment/app/m;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/d;->E1()Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    return-void
.end method

.method public e(Landroidx/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/d;->E1()Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    const-string v0, "PreferenceFragment"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->p()Landroidx/fragment/app/m;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/fragment/app/m;->f0()Landroidx/fragment/app/i;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/i;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->n1(Landroid/os/Bundle;)V

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->v1(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/v;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/v;->p(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/v;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/v;->g(Ljava/lang/String;)Landroidx/fragment/app/v;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/v;->i()I

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public g(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, LQ/f;->j:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    sget v0, LQ/l;->a:I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroidx/preference/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/d;->Z:Landroidx/preference/g;

    invoke-virtual {v0, p0}, Landroidx/preference/g;->p(Landroidx/preference/g$b;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/preference/d;->K1(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LQ/m;->c1:[I

    sget v2, LQ/f;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, LQ/m;->d1:I

    iget v2, p0, Landroidx/preference/d;->d0:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/d;->d0:I

    sget v1, LQ/m;->e1:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, LQ/m;->f1:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v5, LQ/m;->g1:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Landroidx/preference/d;->d0:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, p3}, Landroidx/preference/d;->L1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/preference/d;->a0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Landroidx/preference/d;->Y:Landroidx/preference/d$c;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p0, v1}, Landroidx/preference/d;->P1(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/preference/d;->Q1(I)V

    :cond_0
    iget-object p1, p0, Landroidx/preference/d;->Y:Landroidx/preference/d$c;

    invoke-virtual {p1, v5}, Landroidx/preference/d$c;->i(Z)V

    iget-object p1, p0, Landroidx/preference/d;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/preference/d;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Landroidx/preference/d;->f0:Landroid/os/Handler;

    iget-object p3, p0, Landroidx/preference/d;->g0:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p0()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/d;->f0:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/d;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/preference/d;->f0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroidx/preference/d;->b0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/preference/d;->S1()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/d;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->p0()V

    return-void
.end method
