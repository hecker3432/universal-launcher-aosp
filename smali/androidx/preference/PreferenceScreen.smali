.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source "SourceFile"


# instance fields
.field private X:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, LQ/f;->h:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, LA/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->X:Z

    return-void
.end method


# virtual methods
.method protected J0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/PreferenceScreen;->X:Z

    return v0
.end method

.method protected Q()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->I0()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->x()Landroidx/preference/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/g;->g()Landroidx/preference/g$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/g$b;->d(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void
.end method
