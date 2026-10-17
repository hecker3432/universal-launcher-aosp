.class Li/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/f;->Q()Landroid/view/ViewGroup;
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

    iput-object p1, p0, Li/f$c;->a:Li/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LI/o0;)LI/o0;
    .locals 4

    invoke-virtual {p2}, LI/o0;->g()I

    move-result v0

    iget-object v1, p0, Li/f$c;->a:Li/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Li/f;->L0(LI/o0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, LI/o0;->e()I

    move-result v0

    invoke-virtual {p2}, LI/o0;->f()I

    move-result v2

    invoke-virtual {p2}, LI/o0;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, LI/o0;->l(IIII)LI/o0;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, LI/P;->F(Landroid/view/View;LI/o0;)LI/o0;

    move-result-object p1

    return-object p1
.end method
