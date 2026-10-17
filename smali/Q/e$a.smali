.class LQ/e$a;
.super LI/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:LQ/e;


# direct methods
.method constructor <init>(LQ/e;)V
    .locals 0

    iput-object p1, p0, LQ/e$a;->d:LQ/e;

    invoke-direct {p0}, LI/a;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;LJ/z;)V
    .locals 2

    iget-object v0, p0, LQ/e$a;->d:LQ/e;

    iget-object v0, v0, LQ/e;->g:LI/a;

    invoke-virtual {v0, p1, p2}, LI/a;->g(Landroid/view/View;LJ/z;)V

    iget-object v0, p0, LQ/e$a;->d:LQ/e;

    iget-object v0, v0, LQ/e;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c0(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, LQ/e$a;->d:LQ/e;

    iget-object v0, v0, LQ/e;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/e;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/preference/e;

    invoke-virtual {v0, p1}, Landroidx/preference/e;->A(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->U(LJ/z;)V

    return-void
.end method

.method public j(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, LQ/e$a;->d:LQ/e;

    iget-object v0, v0, LQ/e;->g:LI/a;

    invoke-virtual {v0, p1, p2, p3}, LI/a;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
