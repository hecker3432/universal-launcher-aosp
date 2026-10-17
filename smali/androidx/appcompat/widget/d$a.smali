.class Landroidx/appcompat/widget/d$a;
.super Landroidx/appcompat/view/menu/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic m:Landroidx/appcompat/widget/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/d;Landroid/content/Context;Landroidx/appcompat/view/menu/m;Landroid/view/View;)V
    .locals 6

    iput-object p1, p0, Landroidx/appcompat/widget/d$a;->m:Landroidx/appcompat/widget/d;

    const/4 v4, 0x0

    sget v5, Lh/a;->i:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;ZI)V

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/m;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->l()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/appcompat/widget/d;->l:Landroidx/appcompat/widget/d$d;

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/d;->t(Landroidx/appcompat/widget/d;)Landroidx/appcompat/view/menu/k;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/i;->f(Landroid/view/View;)V

    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/d;->D:Landroidx/appcompat/widget/d$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->j(Landroidx/appcompat/view/menu/j$a;)V

    return-void
.end method


# virtual methods
.method protected e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d$a;->m:Landroidx/appcompat/widget/d;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/d;->A:Landroidx/appcompat/widget/d$a;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/d;->E:I

    invoke-super {p0}, Landroidx/appcompat/view/menu/i;->e()V

    return-void
.end method
