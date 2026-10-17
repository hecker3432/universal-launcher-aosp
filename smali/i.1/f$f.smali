.class Li/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/f;->G0(Ln/b$a;)Ln/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/f;


# direct methods
.method constructor <init>(Li/f;)V
    .locals 0

    iput-object p1, p0, Li/f$f;->a:Li/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Li/f$f;->a:Li/f;

    iget-object v1, v0, Li/f;->r:Landroid/widget/PopupWindow;

    iget-object v0, v0, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Li/f$f;->a:Li/f;

    invoke-virtual {v0}, Li/f;->V()V

    iget-object v0, p0, Li/f$f;->a:Li/f;

    invoke-virtual {v0}, Li/f;->D0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/f$f;->a:Li/f;

    iget-object v0, v0, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Li/f$f;->a:Li/f;

    iget-object v2, v0, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, LI/P;->b(Landroid/view/View;)LI/j0;

    move-result-object v2

    invoke-virtual {v2, v1}, LI/j0;->a(F)LI/j0;

    move-result-object v1

    iput-object v1, v0, Li/f;->t:LI/j0;

    iget-object v0, p0, Li/f$f;->a:Li/f;

    iget-object v0, v0, Li/f;->t:LI/j0;

    new-instance v1, Li/f$f$a;

    invoke-direct {v1, p0}, Li/f$f$a;-><init>(Li/f$f;)V

    invoke-virtual {v0, v1}, LI/j0;->f(LI/k0;)LI/j0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/f$f;->a:Li/f;

    iget-object v0, v0, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Li/f$f;->a:Li/f;

    iget-object v0, v0, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
