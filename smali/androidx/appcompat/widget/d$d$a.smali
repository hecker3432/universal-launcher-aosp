.class Landroidx/appcompat/widget/d$d$a;
.super Landroidx/appcompat/widget/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/d$d;-><init>(Landroidx/appcompat/widget/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Landroidx/appcompat/widget/d;

.field final synthetic l:Landroidx/appcompat/widget/d$d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/d$d;Landroid/view/View;Landroidx/appcompat/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/d$d$a;->l:Landroidx/appcompat/widget/d$d;

    iput-object p3, p0, Landroidx/appcompat/widget/d$d$a;->k:Landroidx/appcompat/widget/d;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/o0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lo/e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d$d$a;->l:Landroidx/appcompat/widget/d$d;

    iget-object v0, v0, Landroidx/appcompat/widget/d$d;->d:Landroidx/appcompat/widget/d;

    iget-object v0, v0, Landroidx/appcompat/widget/d;->z:Landroidx/appcompat/widget/d$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->c()Landroidx/appcompat/view/menu/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d$d$a;->l:Landroidx/appcompat/widget/d$d;

    iget-object v0, v0, Landroidx/appcompat/widget/d$d;->d:Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->K()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d$d$a;->l:Landroidx/appcompat/widget/d$d;

    iget-object v0, v0, Landroidx/appcompat/widget/d$d;->d:Landroidx/appcompat/widget/d;

    iget-object v1, v0, Landroidx/appcompat/widget/d;->B:Landroidx/appcompat/widget/d$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->B()Z

    const/4 v0, 0x1

    return v0
.end method
