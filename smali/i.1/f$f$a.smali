.class Li/f$f$a;
.super LI/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/f$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/f$f;


# direct methods
.method constructor <init>(Li/f$f;)V
    .locals 0

    iput-object p1, p0, Li/f$f$a;->a:Li/f$f;

    invoke-direct {p0}, LI/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/f$f$a;->a:Li/f$f;

    iget-object p1, p1, Li/f$f;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Li/f$f$a;->a:Li/f$f;

    iget-object p1, p1, Li/f$f;->a:Li/f;

    iget-object p1, p1, Li/f;->t:LI/j0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LI/j0;->f(LI/k0;)LI/j0;

    iget-object p1, p0, Li/f$f$a;->a:Li/f$f;

    iget-object p1, p1, Li/f$f;->a:Li/f;

    iput-object v0, p1, Li/f;->t:LI/j0;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/f$f$a;->a:Li/f$f;

    iget-object p1, p1, Li/f$f;->a:Li/f;

    iget-object p1, p1, Li/f;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
