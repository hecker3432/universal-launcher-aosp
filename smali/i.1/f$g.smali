.class Li/f$g;
.super LI/l0;
.source "SourceFile"


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

    iput-object p1, p0, Li/f$g;->a:Li/f;

    invoke-direct {p0}, LI/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iget-object p1, p1, Li/f;->t:LI/j0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LI/j0;->f(LI/k0;)LI/j0;

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iput-object v0, p1, Li/f;->t:LI/j0;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Li/f$g;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LI/P;->K(Landroid/view/View;)V

    :cond_0
    return-void
.end method
