.class Lw/j;
.super Lw/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lw/p;-><init>(Lv/e;)V

    iget-object v0, p1, Lv/e;->e:Lw/l;

    invoke-virtual {v0}, Lw/l;->f()V

    iget-object v0, p1, Lv/e;->f:Lw/n;

    invoke-virtual {v0}, Lw/n;->f()V

    check-cast p1, Lv/g;

    invoke-virtual {p1}, Lv/g;->a1()I

    move-result p1

    iput p1, p0, Lw/p;->f:I

    return-void
.end method

.method private q(Lw/f;)V
    .locals 1

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lw/d;)V
    .locals 1

    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-boolean v0, p1, Lw/f;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lw/f;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    iget-object v0, p0, Lw/p;->b:Lv/e;

    check-cast v0, Lv/g;

    iget p1, p1, Lw/f;->g:I

    int-to-float p1, p1

    invoke-virtual {v0}, Lv/g;->d1()F

    move-result v0

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0, p1}, Lw/f;->d(I)V

    return-void
.end method

.method d()V
    .locals 5

    iget-object v0, p0, Lw/p;->b:Lv/e;

    check-cast v0, Lv/g;

    invoke-virtual {v0}, Lv/g;->b1()I

    move-result v1

    invoke-virtual {v0}, Lv/g;->c1()I

    move-result v2

    invoke-virtual {v0}, Lv/g;->d1()F

    invoke-virtual {v0}, Lv/g;->a1()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->U:Lv/e;

    iget-object v2, v2, Lv/e;->e:Lw/l;

    iget-object v2, v2, Lw/p;->h:Lw/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->U:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v2, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput v1, v0, Lw/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->U:Lv/e;

    iget-object v1, v1, Lv/e;->e:Lw/l;

    iget-object v1, v1, Lw/p;->i:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->U:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->h:Lw/f;

    neg-int v1, v2

    iput v1, v0, Lw/f;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput-boolean v4, v0, Lw/f;->b:Z

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->U:Lv/e;

    iget-object v1, v1, Lv/e;->e:Lw/l;

    iget-object v1, v1, Lw/p;->i:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->U:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    invoke-direct {p0, v0}, Lw/j;->q(Lw/f;)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-direct {p0, v0}, Lw/j;->q(Lw/f;)V

    goto/16 :goto_2

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->U:Lv/e;

    iget-object v2, v2, Lv/e;->f:Lw/n;

    iget-object v2, v2, Lw/p;->h:Lw/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->U:Lv/e;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v2, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput v1, v0, Lw/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v2, v3, :cond_4

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->U:Lv/e;

    iget-object v1, v1, Lv/e;->f:Lw/n;

    iget-object v1, v1, Lw/p;->i:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->U:Lv/e;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->h:Lw/f;

    neg-int v1, v2

    iput v1, v0, Lw/f;->f:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput-boolean v4, v0, Lw/f;->b:Z

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->U:Lv/e;

    iget-object v1, v1, Lv/e;->f:Lw/n;

    iget-object v1, v1, Lw/p;->i:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->U:Lv/e;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    invoke-direct {p0, v0}, Lw/j;->q(Lw/f;)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    invoke-direct {p0, v0}, Lw/j;->q(Lw/f;)V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lw/p;->b:Lv/e;

    check-cast v0, Lv/g;

    invoke-virtual {v0}, Lv/g;->a1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->g:I

    invoke-virtual {v0, v1}, Lv/e;->U0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->g:I

    invoke-virtual {v0, v1}, Lv/e;->V0(I)V

    :goto_0
    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0}, Lw/f;->c()V

    return-void
.end method

.method m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
