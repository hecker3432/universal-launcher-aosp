.class Li/s$a;
.super LI/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/s;


# direct methods
.method constructor <init>(Li/s;)V
    .locals 0

    iput-object p1, p0, Li/s$a;->a:Li/s;

    invoke-direct {p0}, LI/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/s$a;->a:Li/s;

    iget-boolean v0, p1, Li/s;->s:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Li/s;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Li/s$a;->a:Li/s;

    iget-object p1, p1, Li/s;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Li/s$a;->a:Li/s;

    iget-object p1, p1, Li/s;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Li/s$a;->a:Li/s;

    iget-object p1, p1, Li/s;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Li/s$a;->a:Li/s;

    const/4 v0, 0x0

    iput-object v0, p1, Li/s;->x:Ln/h;

    invoke-virtual {p1}, Li/s;->x()V

    iget-object p1, p0, Li/s$a;->a:Li/s;

    iget-object p1, p1, Li/s;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, LI/P;->K(Landroid/view/View;)V

    :cond_1
    return-void
.end method
