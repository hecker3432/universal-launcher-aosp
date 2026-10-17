.class Landroidx/appcompat/widget/d$e;
.super Landroidx/appcompat/view/menu/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic m:Landroidx/appcompat/widget/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/d;Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;Z)V
    .locals 6

    iput-object p1, p0, Landroidx/appcompat/widget/d$e;->m:Landroidx/appcompat/widget/d;

    sget v5, Lh/a;->i:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;ZI)V

    const p2, 0x800005

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/i;->h(I)V

    iget-object p1, p1, Landroidx/appcompat/widget/d;->D:Landroidx/appcompat/widget/d$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->j(Landroidx/appcompat/view/menu/j$a;)V

    return-void
.end method


# virtual methods
.method protected e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d$e;->m:Landroidx/appcompat/widget/d;

    invoke-static {v0}, Landroidx/appcompat/widget/d;->r(Landroidx/appcompat/widget/d;)Landroidx/appcompat/view/menu/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d$e;->m:Landroidx/appcompat/widget/d;

    invoke-static {v0}, Landroidx/appcompat/widget/d;->s(Landroidx/appcompat/widget/d;)Landroidx/appcompat/view/menu/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->close()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/d$e;->m:Landroidx/appcompat/widget/d;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/d;->z:Landroidx/appcompat/widget/d$e;

    invoke-super {p0}, Landroidx/appcompat/view/menu/i;->e()V

    return-void
.end method
