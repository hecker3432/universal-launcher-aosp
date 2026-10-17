.class Li/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field private a:Ln/b$a;

.field final synthetic b:Li/f;


# direct methods
.method public constructor <init>(Li/f;Ln/b$a;)V
    .locals 0

    iput-object p1, p0, Li/f$i;->b:Li/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/f$i;->a:Ln/b$a;

    return-void
.end method


# virtual methods
.method public a(Ln/b;)V
    .locals 2

    iget-object v0, p0, Li/f$i;->a:Ln/b$a;

    invoke-interface {v0, p1}, Ln/b$a;->a(Ln/b;)V

    iget-object p1, p0, Li/f$i;->b:Li/f;

    iget-object v0, p1, Li/f;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Li/f;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Li/f$i;->b:Li/f;

    iget-object v0, v0, Li/f;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Li/f$i;->b:Li/f;

    iget-object v0, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li/f;->V()V

    iget-object p1, p0, Li/f$i;->b:Li/f;

    iget-object v0, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, LI/P;->b(Landroid/view/View;)LI/j0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LI/j0;->a(F)LI/j0;

    move-result-object v0

    iput-object v0, p1, Li/f;->t:LI/j0;

    iget-object p1, p0, Li/f$i;->b:Li/f;

    iget-object p1, p1, Li/f;->t:LI/j0;

    new-instance v0, Li/f$i$a;

    invoke-direct {v0, p0}, Li/f$i$a;-><init>(Li/f$i;)V

    invoke-virtual {p1, v0}, LI/j0;->f(LI/k0;)LI/j0;

    :cond_1
    iget-object p1, p0, Li/f$i;->b:Li/f;

    iget-object v0, p1, Li/f;->i:Li/c;

    if-eqz v0, :cond_2

    iget-object p1, p1, Li/f;->p:Ln/b;

    invoke-interface {v0, p1}, Li/c;->g(Ln/b;)V

    :cond_2
    iget-object p1, p0, Li/f$i;->b:Li/f;

    const/4 v0, 0x0

    iput-object v0, p1, Li/f;->p:Ln/b;

    iget-object p1, p1, Li/f;->w:Landroid/view/ViewGroup;

    invoke-static {p1}, LI/P;->K(Landroid/view/View;)V

    return-void
.end method

.method public b(Ln/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Li/f$i;->a:Ln/b$a;

    invoke-interface {v0, p1, p2}, Ln/b$a;->b(Ln/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Ln/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Li/f$i;->a:Ln/b$a;

    invoke-interface {v0, p1, p2}, Ln/b$a;->c(Ln/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Ln/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Li/f$i;->b:Li/f;

    iget-object v0, v0, Li/f;->w:Landroid/view/ViewGroup;

    invoke-static {v0}, LI/P;->K(Landroid/view/View;)V

    iget-object v0, p0, Li/f$i;->a:Ln/b$a;

    invoke-interface {v0, p1, p2}, Ln/b$a;->d(Ln/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
