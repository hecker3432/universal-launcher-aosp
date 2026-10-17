.class public LQ/a;
.super Landroidx/preference/c;
.source "SourceFile"


# instance fields
.field u0:I

.field private v0:[Ljava/lang/CharSequence;

.field private w0:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/c;-><init>()V

    return-void
.end method

.method private S1()Landroidx/preference/ListPreference;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/c;->L1()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    return-object v0
.end method

.method public static T1(Ljava/lang/String;)LQ/a;
    .locals 3

    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->n1(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public E0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/c;->E0(Landroid/os/Bundle;)V

    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, LQ/a;->u0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, LQ/a;->v0:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, LQ/a;->w0:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public P1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget p1, p0, LQ/a;->u0:I

    if-ltz p1, :cond_0

    iget-object v0, p0, LQ/a;->w0:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, LQ/a;->S1()Landroidx/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->Q0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected Q1(Landroidx/appcompat/app/a$a;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/c;->Q1(Landroidx/appcompat/app/a$a;)V

    iget-object v0, p0, LQ/a;->v0:[Ljava/lang/CharSequence;

    iget v1, p0, LQ/a;->u0:I

    new-instance v2, LQ/a$a;

    invoke-direct {v2, p0}, LQ/a$a;-><init>(LQ/a;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/a$a;->l([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/c;->i0(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, LQ/a;->S1()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->J0()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->L0()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->M0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->I0(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LQ/a;->u0:I

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->J0()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, LQ/a;->v0:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->L0()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LQ/a;->w0:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LQ/a;->u0:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, LQ/a;->v0:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LQ/a;->w0:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method
