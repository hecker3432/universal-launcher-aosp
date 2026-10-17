.class public final LG0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/g;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final a:Ljava/util/List;

.field protected final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG0/b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG0/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(La0/s;LG0/e;)V
    .locals 2

    iget-object v0, p0, LG0/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/u;

    invoke-interface {v1, p1, p2}, La0/u;->a(La0/s;LG0/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(La0/q;LG0/e;)V
    .locals 2

    iget-object v0, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/r;

    invoke-interface {v1, p1, p2}, La0/r;->b(La0/q;LG0/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(La0/r;)V
    .locals 0

    invoke-virtual {p0, p1}, LG0/b;->f(La0/r;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG0/b;

    invoke-virtual {p0, v0}, LG0/b;->i(LG0/b;)V

    return-object v0
.end method

.method public final d(La0/r;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LG0/b;->g(La0/r;I)V

    return-void
.end method

.method public final e(La0/u;)V
    .locals 0

    invoke-virtual {p0, p1}, LG0/b;->h(La0/u;)V

    return-void
.end method

.method public f(La0/r;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(La0/r;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public h(La0/u;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LG0/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected i(LG0/b;)V
    .locals 2

    iget-object v0, p1, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, LG0/b;->a:Ljava/util/List;

    iget-object v1, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, LG0/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, LG0/b;->b:Ljava/util/List;

    iget-object v0, p0, LG0/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public j(I)La0/r;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/r;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, LG0/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l(I)La0/u;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, LG0/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG0/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/u;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, LG0/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
