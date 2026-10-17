.class Landroidx/recyclerview/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/q$a;,
        Landroidx/recyclerview/widget/q$b;
    }
.end annotation


# instance fields
.field final a:Lr/g;

.field final b:Lr/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr/g;

    invoke-direct {v0}, Lr/g;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    new-instance v0, Lr/d;

    invoke-direct {v0}, Lr/d;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    return-void
.end method

.method private l(Landroidx/recyclerview/widget/RecyclerView$C;I)Landroidx/recyclerview/widget/RecyclerView$l$b;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->f(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v1, p1}, Lr/g;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/q$a;

    if-eqz v1, :cond_4

    iget v2, v1, Landroidx/recyclerview/widget/q$a;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Landroidx/recyclerview/widget/q$a;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$b;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->j(I)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/recyclerview/widget/q$a;->c(Landroidx/recyclerview/widget/q$a;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->b()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v1, p1, v0}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    iput-object p2, v0, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$C;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->b()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v1, p1, v0}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method c(JLandroidx/recyclerview/widget/RecyclerView$C;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    invoke-virtual {v0, p1, p2, p3}, Lr/d;->h(JLjava/lang/Object;)V

    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->b()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v1, p1, v0}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$b;

    iget p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->b()Landroidx/recyclerview/widget/q$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v1, p1, v0}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    iget p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0}, Lr/g;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    invoke-virtual {v0}, Lr/d;->b()V

    return-void
.end method

.method g(J)Landroidx/recyclerview/widget/RecyclerView$C;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    invoke-virtual {v0, p1, p2}, Lr/d;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$C;

    return-object p1
.end method

.method h(Landroidx/recyclerview/widget/RecyclerView$C;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/q$a;

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/recyclerview/widget/q$a;->a:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i(Landroidx/recyclerview/widget/RecyclerView$C;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/q$a;

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method j()V
    .locals 0

    invoke-static {}, Landroidx/recyclerview/widget/q$a;->a()V

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$C;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->p(Landroidx/recyclerview/widget/RecyclerView$C;)V

    return-void
.end method

.method m(Landroidx/recyclerview/widget/RecyclerView$C;)Landroidx/recyclerview/widget/RecyclerView$l$b;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/q;->l(Landroidx/recyclerview/widget/RecyclerView$C;I)Landroidx/recyclerview/widget/RecyclerView$l$b;

    move-result-object p1

    return-object p1
.end method

.method n(Landroidx/recyclerview/widget/RecyclerView$C;)Landroidx/recyclerview/widget/RecyclerView$l$b;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/q;->l(Landroidx/recyclerview/widget/RecyclerView$C;I)Landroidx/recyclerview/widget/RecyclerView$l$b;

    move-result-object p1

    return-object p1
.end method

.method o(Landroidx/recyclerview/widget/q$b;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0}, Lr/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v1, v0}, Lr/g;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$C;

    iget-object v2, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v2, v0}, Lr/g;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/q$a;

    iget v3, v2, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/q$b;->a(Landroidx/recyclerview/widget/RecyclerView$C;)V

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/q$b;->a(Landroidx/recyclerview/widget/RecyclerView$C;)V

    goto :goto_1

    :cond_1
    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$b;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->c(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$b;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->b(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    goto :goto_1

    :cond_3
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$b;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->d(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    goto :goto_1

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->c(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    goto :goto_1

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$b;

    iget-object v4, v2, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$b;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/q$b;->b(Landroidx/recyclerview/widget/RecyclerView$C;Landroidx/recyclerview/widget/RecyclerView$l$b;Landroidx/recyclerview/widget/RecyclerView$l$b;)V

    :cond_6
    :goto_1
    invoke-static {v2}, Landroidx/recyclerview/widget/q$a;->c(Landroidx/recyclerview/widget/q$a;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method p(Landroidx/recyclerview/widget/RecyclerView$C;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/q$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method

.method q(Landroidx/recyclerview/widget/RecyclerView$C;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    invoke-virtual {v0}, Lr/d;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    invoke-virtual {v1, v0}, Lr/d;->l(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/q;->b:Lr/d;

    invoke-virtual {v1, v0}, Lr/d;->j(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Lr/g;

    invoke-virtual {v0, p1}, Lr/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/q$a;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/recyclerview/widget/q$a;->c(Landroidx/recyclerview/widget/q$a;)V

    :cond_2
    return-void
.end method
