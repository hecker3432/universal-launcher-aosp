.class public Lw/n;
.super Lw/p;
.source "SourceFile"


# instance fields
.field public k:Lw/f;

.field l:Lw/g;


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 2

    invoke-direct {p0, p1}, Lw/p;-><init>(Lv/e;)V

    new-instance p1, Lw/f;

    invoke-direct {p1, p0}, Lw/f;-><init>(Lw/p;)V

    iput-object p1, p0, Lw/n;->k:Lw/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lw/n;->l:Lw/g;

    iget-object v0, p0, Lw/p;->h:Lw/f;

    sget-object v1, Lw/f$a;->f:Lw/f$a;

    iput-object v1, v0, Lw/f;->e:Lw/f$a;

    iget-object v0, p0, Lw/p;->i:Lw/f;

    sget-object v1, Lw/f$a;->g:Lw/f$a;

    iput-object v1, v0, Lw/f;->e:Lw/f$a;

    sget-object v0, Lw/f$a;->h:Lw/f$a;

    iput-object v0, p1, Lw/f;->e:Lw/f$a;

    const/4 p1, 0x1

    iput p1, p0, Lw/p;->f:I

    return-void
.end method


# virtual methods
.method public a(Lw/d;)V
    .locals 6

    sget-object v0, Lw/n$a;->a:[I

    iget-object v1, p0, Lw/p;->j:Lw/p$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v1, v0, Lv/e;->J:Lv/d;

    iget-object v0, v0, Lv/e;->L:Lv/d;

    invoke-virtual {p0, p1, v1, v0, v3}, Lw/p;->n(Lw/d;Lv/d;Lv/d;I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lw/p;->o(Lw/d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lw/p;->p(Lw/d;)V

    :goto_0
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean v0, p1, Lw/f;->c:Z

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lw/p;->d:Lv/e$b;

    sget-object v0, Lv/e$b;->c:Lv/e$b;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lw/p;->b:Lv/e;

    iget v0, p1, Lv/e;->r:I

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p1, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lv/e;->u()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lw/p;->b:Lv/e;

    iget-object v0, p1, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget v0, v0, Lw/f;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lv/e;->t()F

    move-result p1

    :goto_1
    div-float/2addr v0, p1

    :goto_2
    add-float/2addr v0, v4

    float-to-int p1, v0

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lw/p;->b:Lv/e;

    iget-object v0, p1, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget v0, v0, Lw/f;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lv/e;->t()F

    move-result p1

    mul-float v0, v0, p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lw/p;->b:Lv/e;

    iget-object v0, p1, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget v0, v0, Lw/f;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lv/e;->t()F

    move-result p1

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0, p1}, Lw/g;->d(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lv/e;->I()Lv/e;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p1, Lv/e;->f:Lw/n;

    iget-object p1, p1, Lw/p;->e:Lw/g;

    iget-boolean v0, p1, Lw/f;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget v0, v0, Lv/e;->y:F

    iget p1, p1, Lw/f;->g:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p1, v4

    float-to-int p1, p1

    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0, p1}, Lw/g;->d(I)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-boolean v0, p1, Lw/f;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-boolean v1, v0, Lw/f;->c:Z

    if-nez v1, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-boolean p1, p1, Lw/f;->j:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, Lw/f;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lw/p;->d:Lv/e$b;

    sget-object v0, Lv/e$b;->c:Lv/e$b;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lw/p;->b:Lv/e;

    iget v0, p1, Lv/e;->q:I

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lv/e;->b0()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/f;

    iget p1, p1, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v2, v1, Lw/f;->f:I

    add-int/2addr p1, v2

    iget v0, v0, Lw/f;->g:I

    iget-object v2, p0, Lw/p;->i:Lw/f;

    iget v2, v2, Lw/f;->f:I

    add-int/2addr v0, v2

    sub-int v2, v0, p1

    invoke-virtual {v1, p1}, Lw/f;->d(I)V

    iget-object p1, p0, Lw/p;->i:Lw/f;

    invoke-virtual {p1, v0}, Lw/f;->d(I)V

    iget-object p1, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p1, v2}, Lw/g;->d(I)V

    return-void

    :cond_b
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lw/p;->d:Lv/e$b;

    sget-object v0, Lv/e$b;->c:Lv/e$b;

    if-ne p1, v0, :cond_d

    iget p1, p0, Lw/p;->a:I

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/f;

    iget p1, p1, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget v1, v1, Lw/f;->f:I

    add-int/2addr p1, v1

    iget v0, v0, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget v1, v1, Lw/f;->f:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget v1, p1, Lw/g;->m:I

    if-ge v0, v1, :cond_c

    invoke-virtual {p1, v0}, Lw/g;->d(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v1}, Lw/g;->d(I)V

    :cond_d
    :goto_5
    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget-boolean p1, p1, Lw/f;->j:Z

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Lw/p;->h:Lw/f;

    iget-object p1, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/f;

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/f;

    iget v1, p1, Lw/f;->g:I

    iget-object v2, p0, Lw/p;->h:Lw/f;

    iget v2, v2, Lw/f;->f:I

    add-int/2addr v1, v2

    iget v2, v0, Lw/f;->g:I

    iget-object v3, p0, Lw/p;->i:Lw/f;

    iget v3, v3, Lw/f;->f:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v3}, Lv/e;->M()F

    move-result v3

    if-ne p1, v0, :cond_f

    iget v1, p1, Lw/f;->g:I

    iget v2, v0, Lw/f;->g:I

    const/high16 v3, 0x3f000000    # 0.5f

    :cond_f
    sub-int/2addr v2, v1

    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget p1, p1, Lw/f;->g:I

    sub-int/2addr v2, p1

    iget-object p1, p0, Lw/p;->h:Lw/f;

    int-to-float v0, v1

    add-float/2addr v0, v4

    int-to-float v1, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lw/f;->d(I)V

    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget v0, v0, Lw/f;->g:I

    iget-object v1, p0, Lw/p;->e:Lw/g;

    iget v1, v1, Lw/f;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lw/f;->d(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method d()V
    .locals 10

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-boolean v1, v0, Lv/e;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0}, Lv/e;->v()I

    move-result v0

    invoke-virtual {v1, v0}, Lw/g;->d(I)V

    :cond_0
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->O()Lv/e$b;

    move-result-object v0

    iput-object v0, p0, Lw/p;->d:Lv/e$b;

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lw/a;

    invoke-direct {v0, p0}, Lw/a;-><init>(Lw/p;)V

    iput-object v0, p0, Lw/n;->l:Lw/g;

    :cond_1
    iget-object v0, p0, Lw/p;->d:Lv/e$b;

    sget-object v1, Lv/e$b;->c:Lv/e$b;

    if-eq v0, v1, :cond_4

    sget-object v1, Lv/e$b;->d:Lv/e$b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->I()Lv/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    sget-object v2, Lv/e$b;->a:Lv/e$b;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lv/e;->v()I

    move-result v1

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->J:Lv/d;

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->L:Lv/d;

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lw/p;->h:Lw/f;

    iget-object v3, v0, Lv/e;->f:Lw/n;

    iget-object v3, v3, Lw/p;->h:Lw/f;

    iget-object v4, p0, Lw/p;->b:Lv/e;

    iget-object v4, v4, Lv/e;->J:Lv/d;

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v2, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/e;

    iget-object v3, v3, Lv/e;->L:Lv/d;

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lw/p;->d:Lv/e$b;

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v1}, Lv/e;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Lw/g;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lw/p;->d:Lv/e$b;

    sget-object v1, Lv/e$b;->d:Lv/e$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->I()Lv/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    sget-object v2, Lv/e$b;->a:Lv/e$b;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, v0, Lv/e;->f:Lw/n;

    iget-object v2, v2, Lw/p;->h:Lw/f;

    iget-object v3, p0, Lw/p;->b:Lv/e;

    iget-object v3, v3, Lv/e;->J:Lv/d;

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->L:Lv/d;

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-boolean v1, v0, Lw/f;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v1, :cond_d

    iget-object v7, p0, Lw/p;->b:Lv/e;

    iget-boolean v8, v7, Lv/e;->a:Z

    if-eqz v8, :cond_d

    iget-object v0, v7, Lv/e;->Q:[Lv/d;

    aget-object v1, v0, v4

    iget-object v8, v1, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_8

    aget-object v9, v0, v6

    iget-object v9, v9, Lv/d;->f:Lv/d;

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lv/e;->b0()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->Q:[Lv/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    iput v1, v0, Lw/f;->f:I

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->Q:[Lv/d;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lw/f;->f:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->Q:[Lv/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->Q:[Lv/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    :cond_6
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->Q:[Lv/d;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->Q:[Lv/d;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    :cond_7
    iget-object v0, p0, Lw/p;->h:Lw/f;

    iput-boolean v5, v0, Lw/f;->b:Z

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iput-boolean v5, v0, Lw/f;->b:Z

    :goto_1
    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {p0, v1}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->Q:[Lv/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    :cond_9
    aget-object v1, v0, v6

    iget-object v4, v1, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_b

    invoke-virtual {p0, v1}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->Q:[Lv/d;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    :cond_a
    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    :cond_b
    aget-object v0, v0, v3

    iget-object v1, v0, Lv/d;->f:Lv/d;

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lw/n;->k:Lw/f;

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->n()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    :cond_c
    instance-of v0, v7, Lv/h;

    if-nez v0, :cond_1c

    invoke-virtual {v7}, Lv/e;->I()Lv/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lw/p;->b:Lv/e;

    sget-object v1, Lv/d$b;->g:Lv/d$b;

    invoke-virtual {v0, v1}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v0

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->I()Lv/e;

    move-result-object v0

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->T()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget v2, v2, Lw/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->n()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    goto/16 :goto_5

    :cond_d
    if-nez v1, :cond_12

    iget-object v1, p0, Lw/p;->d:Lv/e$b;

    sget-object v7, Lv/e$b;->c:Lv/e$b;

    if-ne v1, v7, :cond_12

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget v1, v0, Lv/e;->r:I

    if-eq v1, v4, :cond_10

    if-eq v1, v6, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Lv/e;->b0()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget v1, v0, Lv/e;->q:I

    if-ne v1, v6, :cond_f

    goto :goto_2

    :cond_f
    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-boolean v5, v0, Lw/f;->b:Z

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->i:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, Lv/e;->I()Lv/e;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    iget-object v1, v1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-boolean v5, v0, Lw/f;->b:Z

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->i:Lw/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v0, p0}, Lw/f;->b(Lw/d;)V

    :cond_13
    :goto_2
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v1, v0, Lv/e;->Q:[Lv/d;

    aget-object v7, v1, v4

    iget-object v8, v7, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_15

    aget-object v9, v1, v6

    iget-object v9, v9, Lv/d;->f:Lv/d;

    if-eqz v9, :cond_15

    invoke-virtual {v0}, Lv/e;->b0()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->Q:[Lv/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    iput v1, v0, Lw/f;->f:I

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->Q:[Lv/d;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lw/f;->f:I

    goto :goto_3

    :cond_14
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->Q:[Lv/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->Q:[Lv/d;

    aget-object v1, v1, v6

    invoke-virtual {p0, v1}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v1

    invoke-virtual {v0, p0}, Lw/f;->b(Lw/d;)V

    invoke-virtual {v1, p0}, Lw/f;->b(Lw/d;)V

    sget-object v0, Lw/p$b;->d:Lw/p$b;

    iput-object v0, p0, Lw/p;->j:Lw/p$b;

    :goto_3
    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    goto/16 :goto_4

    :cond_15
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    invoke-virtual {p0, v7}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->Q:[Lv/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    :cond_16
    iget-object v0, p0, Lw/p;->d:Lv/e$b;

    sget-object v1, Lv/e$b;->c:Lv/e$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->t()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v2, v0, Lw/p;->d:Lv/e$b;

    if-ne v2, v1, :cond_1b

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->e:Lw/l;

    iget-object v1, v1, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-object p0, v0, Lw/f;->a:Lw/d;

    goto/16 :goto_4

    :cond_17
    aget-object v4, v1, v6

    iget-object v7, v4, Lv/d;->f:Lv/d;

    const/4 v8, -0x1

    if-eqz v7, :cond_18

    invoke-virtual {p0, v4}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    iget-object v2, v2, Lv/e;->Q:[Lv/d;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v1, v8, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    goto/16 :goto_4

    :cond_18
    aget-object v1, v1, v3

    iget-object v3, v1, Lv/d;->f:Lv/d;

    if-eqz v3, :cond_19

    invoke-virtual {p0, v1}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lw/n;->k:Lw/f;

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/n;->k:Lw/f;

    iget-object v2, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v8, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    goto :goto_4

    :cond_19
    instance-of v1, v0, Lv/h;

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lv/e;->I()Lv/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->I()Lv/e;

    move-result-object v0

    iget-object v0, v0, Lv/e;->f:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v2}, Lv/e;->T()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lw/p;->b(Lw/f;Lw/f;I)V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lw/n;->k:Lw/f;

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iget-object v2, p0, Lw/n;->l:Lw/g;

    invoke-virtual {p0, v0, v1, v5, v2}, Lw/p;->c(Lw/f;Lw/f;ILw/g;)V

    :cond_1a
    iget-object v0, p0, Lw/p;->d:Lv/e$b;

    sget-object v1, Lv/e$b;->c:Lv/e$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->t()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v0, v0, Lv/e;->e:Lw/l;

    iget-object v2, v0, Lw/p;->d:Lv/e$b;

    if-ne v2, v1, :cond_1b

    iget-object v0, v0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->k:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget-object v1, v1, Lv/e;->e:Lw/l;

    iget-object v1, v1, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-object p0, v0, Lw/f;->a:Lw/d;

    :cond_1b
    :goto_4
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-object v0, v0, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iput-boolean v5, v0, Lw/f;->c:Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lw/p;->h:Lw/f;

    iget-boolean v1, v0, Lw/f;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw/p;->b:Lv/e;

    iget v0, v0, Lw/f;->g:I

    invoke-virtual {v1, v0}, Lv/e;->V0(I)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lw/p;->c:Lw/m;

    iget-object v0, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v0}, Lw/f;->c()V

    iget-object v0, p0, Lw/p;->i:Lw/f;

    invoke-virtual {v0}, Lw/f;->c()V

    iget-object v0, p0, Lw/n;->k:Lw/f;

    invoke-virtual {v0}, Lw/f;->c()V

    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {v0}, Lw/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw/p;->g:Z

    return-void
.end method

.method m()Z
    .locals 3

    iget-object v0, p0, Lw/p;->d:Lv/e$b;

    sget-object v1, Lv/e$b;->c:Lv/e$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget v0, v0, Lv/e;->r:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw/p;->g:Z

    iget-object v1, p0, Lw/p;->h:Lw/f;

    invoke-virtual {v1}, Lw/f;->c()V

    iget-object v1, p0, Lw/p;->h:Lw/f;

    iput-boolean v0, v1, Lw/f;->j:Z

    iget-object v1, p0, Lw/p;->i:Lw/f;

    invoke-virtual {v1}, Lw/f;->c()V

    iget-object v1, p0, Lw/p;->i:Lw/f;

    iput-boolean v0, v1, Lw/f;->j:Z

    iget-object v1, p0, Lw/n;->k:Lw/f;

    invoke-virtual {v1}, Lw/f;->c()V

    iget-object v1, p0, Lw/n;->k:Lw/f;

    iput-boolean v0, v1, Lw/f;->j:Z

    iget-object v1, p0, Lw/p;->e:Lw/g;

    iput-boolean v0, v1, Lw/f;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/p;->b:Lv/e;

    invoke-virtual {v1}, Lv/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
