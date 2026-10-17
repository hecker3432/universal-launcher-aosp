.class public Ln/f;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ln/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Ln/f;->a:Landroid/content/Context;

    iput-object p2, p0, Ln/f;->b:Ln/b;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->c()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Lo/d;

    iget-object v1, p0, Ln/f;->a:Landroid/content/Context;

    iget-object v2, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v2}, Ln/b;->e()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, LD/a;

    invoke-direct {v0, v1, v2}, Lo/d;-><init>(Landroid/content/Context;LD/a;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->f()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->i()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->j()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->k()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0}, Ln/b;->l()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->m(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->n(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->q(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Ln/f;->b:Ln/b;

    invoke-virtual {v0, p1}, Ln/b;->s(Z)V

    return-void
.end method
