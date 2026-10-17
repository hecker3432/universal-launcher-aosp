.class Li/f$i$a;
.super LI/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/f$i;->a(Ln/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/f$i;


# direct methods
.method constructor <init>(Li/f$i;)V
    .locals 0

    iput-object p1, p0, Li/f$i$a;->a:Li/f$i;

    invoke-direct {p0}, LI/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/f$i$a;->a:Li/f$i;

    iget-object p1, p1, Li/f$i;->b:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Li/f$i$a;->a:Li/f$i;

    iget-object p1, p1, Li/f$i;->b:Li/f;

    iget-object v0, p1, Li/f;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Li/f$i$a;->a:Li/f$i;

    iget-object p1, p1, Li/f$i;->b:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LI/P;->K(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Li/f$i$a;->a:Li/f$i;

    iget-object p1, p1, Li/f$i;->b:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Li/f$i$a;->a:Li/f$i;

    iget-object p1, p1, Li/f$i;->b:Li/f;

    iget-object p1, p1, Li/f;->t:LI/j0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LI/j0;->f(LI/k0;)LI/j0;

    iget-object p1, p0, Li/f$i$a;->a:Li/f$i;

    iget-object p1, p1, Li/f$i;->b:Li/f;

    iput-object v0, p1, Li/f;->t:LI/j0;

    iget-object p1, p1, Li/f;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, LI/P;->K(Landroid/view/View;)V

    return-void
.end method
