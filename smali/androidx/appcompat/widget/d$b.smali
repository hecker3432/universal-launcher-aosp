.class Landroidx/appcompat/widget/d$b;
.super Landroidx/appcompat/view/menu/ActionMenuItemView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/d$b;->a:Landroidx/appcompat/widget/d;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo/e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/d$b;->a:Landroidx/appcompat/widget/d;

    iget-object v0, v0, Landroidx/appcompat/widget/d;->A:Landroidx/appcompat/widget/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->c()Landroidx/appcompat/view/menu/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
