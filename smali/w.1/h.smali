.class public abstract Lw/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lw/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    sput-object v0, Lw/h;->a:Lw/b$a;

    return-void
.end method

.method private static a(Lv/e;)Z
    .locals 7

    invoke-virtual {p0}, Lv/e;->y()Lv/e$b;

    move-result-object v0

    invoke-virtual {p0}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object v2

    check-cast v2, Lv/f;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lv/e;->y()Lv/e$b;

    move-result-object v3

    sget-object v4, Lv/e$b;->a:Lv/e$b;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lv/e;->O()Lv/e$b;

    move-result-object v2

    sget-object v3, Lv/e$b;->a:Lv/e$b;

    :cond_2
    sget-object v2, Lv/e$b;->a:Lv/e$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_5

    sget-object v6, Lv/e$b;->b:Lv/e$b;

    if-eq v0, v6, :cond_5

    sget-object v6, Lv/e$b;->c:Lv/e$b;

    if-ne v0, v6, :cond_3

    iget v0, p0, Lv/e;->q:I

    if-nez v0, :cond_3

    iget v0, p0, Lv/e;->X:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lv/e;->V(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lv/e;->e0()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eq v1, v2, :cond_8

    sget-object v2, Lv/e$b;->b:Lv/e$b;

    if-eq v1, v2, :cond_8

    sget-object v2, Lv/e$b;->c:Lv/e$b;

    if-ne v1, v2, :cond_6

    iget v1, p0, Lv/e;->r:I

    if-nez v1, :cond_6

    iget v1, p0, Lv/e;->X:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    invoke-virtual {p0, v5}, Lv/e;->V(I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lv/e;->f0()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x1

    :goto_4
    iget p0, p0, Lv/e;->X:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_a

    if-nez v0, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    return v5

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    const/4 v4, 0x1

    :cond_b
    return v4
.end method

.method private static b(Lv/e;Lw/b$b;)V
    .locals 12

    instance-of v0, p0, Lv/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lw/h;->a(Lv/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_0
    sget-object v0, Lv/d$b;->b:Lv/d$b;

    invoke-virtual {p0, v0}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v0

    sget-object v2, Lv/d$b;->d:Lv/d$b;

    invoke-virtual {p0, v2}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v2

    invoke-virtual {v0}, Lv/d;->d()I

    move-result v3

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v4

    invoke-virtual {v0}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lv/d;->m()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v8, v5, Lv/d;->d:Lv/e;

    invoke-static {v8}, Lw/h;->a(Lv/e;)Z

    move-result v9

    invoke-virtual {v8}, Lv/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    new-instance v10, Lw/b$a;

    invoke-direct {v10}, Lw/b$a;-><init>()V

    invoke-static {v8, p1, v10, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_2
    invoke-virtual {v8}, Lv/e;->y()Lv/e$b;

    move-result-object v10

    sget-object v11, Lv/e$b;->c:Lv/e$b;

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lv/e;->y()Lv/e$b;

    move-result-object v9

    if-ne v9, v11, :cond_1

    invoke-virtual {v8}, Lv/e;->Q()I

    move-result v9

    if-eq v9, v7, :cond_4

    iget v9, v8, Lv/e;->q:I

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lv/e;->t()F

    move-result v9

    cmpl-float v9, v9, v6

    if-nez v9, :cond_1

    :cond_4
    invoke-virtual {v8}, Lv/e;->Z()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lv/e;->c0()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v8, Lv/e;->I:Lv/d;

    if-ne v5, v9, :cond_5

    iget-object v9, v8, Lv/e;->K:Lv/d;

    iget-object v9, v9, Lv/d;->f:Lv/d;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lv/d;->m()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    iget-object v9, v8, Lv/e;->K:Lv/d;

    if-ne v5, v9, :cond_1

    iget-object v5, v8, Lv/e;->I:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lv/d;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_6
    invoke-virtual {v8}, Lv/e;->Z()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0, p1, v8}, Lw/h;->e(Lv/e;Lw/b$b;Lv/e;)V

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {v8}, Lv/e;->d0()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v9, v8, Lv/e;->I:Lv/d;

    if-ne v5, v9, :cond_9

    iget-object v10, v8, Lv/e;->K:Lv/d;

    iget-object v10, v10, Lv/d;->f:Lv/d;

    if-nez v10, :cond_9

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v8}, Lv/e;->R()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v5, v9}, Lv/e;->p0(II)V

    invoke-static {v8, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    goto/16 :goto_0

    :cond_9
    iget-object v10, v8, Lv/e;->K:Lv/d;

    if-ne v5, v10, :cond_a

    iget-object v11, v9, Lv/d;->f:Lv/d;

    if-nez v11, :cond_a

    invoke-virtual {v10}, Lv/d;->e()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v8}, Lv/e;->R()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {v8, v9, v5}, Lv/e;->p0(II)V

    invoke-static {v8, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    goto/16 :goto_0

    :cond_a
    if-ne v5, v9, :cond_1

    iget-object v5, v10, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lv/d;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Lv/e;->Z()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1, v8}, Lw/h;->d(Lw/b$b;Lv/e;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p0, Lv/g;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v2}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v2}, Lv/d;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v2}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    iget-object v3, v2, Lv/d;->d:Lv/e;

    invoke-static {v3}, Lw/h;->a(Lv/e;)Z

    move-result v5

    invoke-virtual {v3}, Lv/e;->d0()Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v5, :cond_e

    new-instance v8, Lw/b$a;

    invoke-direct {v8}, Lw/b$a;-><init>()V

    invoke-static {v3, p1, v8, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_e
    iget-object v8, v3, Lv/e;->I:Lv/d;

    if-ne v2, v8, :cond_f

    iget-object v8, v3, Lv/e;->K:Lv/d;

    iget-object v8, v8, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lv/d;->m()Z

    move-result v8

    if-nez v8, :cond_10

    :cond_f
    iget-object v8, v3, Lv/e;->K:Lv/d;

    if-ne v2, v8, :cond_11

    iget-object v8, v3, Lv/e;->I:Lv/d;

    iget-object v8, v8, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lv/d;->m()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    const/4 v8, 0x1

    goto :goto_3

    :cond_11
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v3}, Lv/e;->y()Lv/e$b;

    move-result-object v9

    sget-object v10, Lv/e$b;->c:Lv/e$b;

    if-ne v9, v10, :cond_14

    if-eqz v5, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {v3}, Lv/e;->y()Lv/e$b;

    move-result-object v2

    if-ne v2, v10, :cond_d

    invoke-virtual {v3}, Lv/e;->Q()I

    move-result v2

    if-eq v2, v7, :cond_13

    iget v2, v3, Lv/e;->q:I

    if-nez v2, :cond_d

    invoke-virtual {v3}, Lv/e;->t()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_d

    :cond_13
    invoke-virtual {v3}, Lv/e;->Z()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v3}, Lv/e;->c0()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v3}, Lv/e;->Z()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p0, p1, v3}, Lw/h;->e(Lv/e;Lw/b$b;Lv/e;)V

    goto :goto_2

    :cond_14
    :goto_4
    invoke-virtual {v3}, Lv/e;->d0()Z

    move-result v5

    if-eqz v5, :cond_15

    goto/16 :goto_2

    :cond_15
    iget-object v5, v3, Lv/e;->I:Lv/d;

    if-ne v2, v5, :cond_16

    iget-object v9, v3, Lv/e;->K:Lv/d;

    iget-object v9, v9, Lv/d;->f:Lv/d;

    if-nez v9, :cond_16

    invoke-virtual {v5}, Lv/d;->e()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lv/e;->R()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v2, v5}, Lv/e;->p0(II)V

    invoke-static {v3, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    goto/16 :goto_2

    :cond_16
    iget-object v9, v3, Lv/e;->K:Lv/d;

    if-ne v2, v9, :cond_17

    iget-object v2, v5, Lv/d;->f:Lv/d;

    if-nez v2, :cond_17

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v3}, Lv/e;->R()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v3, v5, v2}, Lv/e;->p0(II)V

    invoke-static {v3, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v8, :cond_d

    invoke-virtual {v3}, Lv/e;->Z()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p1, v3}, Lw/h;->d(Lw/b$b;Lv/e;)V

    goto/16 :goto_2

    :cond_18
    return-void
.end method

.method private static c(Lv/a;Lw/b$b;I)V
    .locals 1

    invoke-virtual {p0}, Lv/a;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Lw/b$b;Lv/e;)V
    .locals 7

    invoke-virtual {p1}, Lv/e;->w()F

    move-result v0

    iget-object v1, p1, Lv/e;->I:Lv/d;

    iget-object v1, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    iget-object v2, p1, Lv/e;->K:Lv/d;

    iget-object v2, v2, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    iget-object v3, p1, Lv/e;->I:Lv/d;

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p1, Lv/e;->K:Lv/d;

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lv/e;->R()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    invoke-virtual {p1}, Lv/e;->I()Lv/e;

    move-result-object v6

    check-cast v6, Lv/f;

    invoke-virtual {v6}, Lv/f;->w1()Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v0, v6, v0

    :cond_2
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_3

    sub-int v4, v0, v3

    :cond_3
    invoke-virtual {p1, v0, v4}, Lv/e;->p0(II)V

    invoke-static {p1, p0}, Lw/h;->b(Lv/e;Lw/b$b;)V

    return-void
.end method

.method private static e(Lv/e;Lw/b$b;Lv/e;)V
    .locals 7

    invoke-virtual {p2}, Lv/e;->w()F

    move-result v0

    iget-object v1, p2, Lv/e;->I:Lv/d;

    iget-object v1, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    iget-object v2, p2, Lv/e;->I:Lv/d;

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p2, Lv/e;->K:Lv/d;

    iget-object v2, v2, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    iget-object v3, p2, Lv/e;->K:Lv/d;

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    invoke-virtual {p2}, Lv/e;->R()I

    move-result v3

    invoke-virtual {p2}, Lv/e;->Q()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, Lv/e;->q:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p0, Lv/f;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lv/e;->R()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object p0

    invoke-virtual {p0}, Lv/e;->R()I

    move-result p0

    :goto_0
    invoke-virtual {p2}, Lv/e;->w()F

    move-result v3

    mul-float v3, v3, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v2, v1

    :cond_2
    :goto_1
    iget p0, p2, Lv/e;->t:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p0, p2, Lv/e;->u:I

    if-lez p0, :cond_3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    invoke-virtual {p2, v1, v3}, Lv/e;->p0(II)V

    invoke-static {p2, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    :cond_4
    return-void
.end method

.method private static f(Lw/b$b;Lv/e;)V
    .locals 6

    invoke-virtual {p1}, Lv/e;->M()F

    move-result v0

    iget-object v1, p1, Lv/e;->J:Lv/d;

    iget-object v1, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    iget-object v2, p1, Lv/e;->L:Lv/d;

    iget-object v2, v2, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    iget-object v3, p1, Lv/e;->J:Lv/d;

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p1, Lv/e;->L:Lv/d;

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lv/e;->v()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_2

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    :cond_2
    invoke-virtual {p1, v4, v5}, Lv/e;->s0(II)V

    invoke-static {p1, p0}, Lw/h;->i(Lv/e;Lw/b$b;)V

    return-void
.end method

.method private static g(Lv/e;Lw/b$b;Lv/e;)V
    .locals 7

    invoke-virtual {p2}, Lv/e;->M()F

    move-result v0

    iget-object v1, p2, Lv/e;->J:Lv/d;

    iget-object v1, v1, Lv/d;->f:Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    iget-object v2, p2, Lv/e;->J:Lv/d;

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p2, Lv/e;->L:Lv/d;

    iget-object v2, v2, Lv/d;->f:Lv/d;

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    iget-object v3, p2, Lv/e;->L:Lv/d;

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    invoke-virtual {p2}, Lv/e;->v()I

    move-result v3

    invoke-virtual {p2}, Lv/e;->Q()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p2, Lv/e;->r:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p0, Lv/f;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lv/e;->v()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object p0

    invoke-virtual {p0}, Lv/e;->v()I

    move-result p0

    :goto_0
    mul-float v3, v0, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v2, v1

    :cond_2
    :goto_1
    iget p0, p2, Lv/e;->w:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p0, p2, Lv/e;->x:I

    if-lez p0, :cond_3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p0, v2

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v1, p0

    add-int/2addr v3, v1

    invoke-virtual {p2, v1, v3}, Lv/e;->s0(II)V

    invoke-static {p2, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    :cond_4
    return-void
.end method

.method public static h(Lv/f;Lw/b$b;)V
    .locals 12

    invoke-virtual {p0}, Lv/e;->y()Lv/e$b;

    move-result-object v0

    invoke-virtual {p0}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    invoke-virtual {p0}, Lv/e;->i0()V

    invoke-virtual {p0}, Lv/k;->Z0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/e;

    invoke-virtual {v6}, Lv/e;->i0()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lv/e$b;->a:Lv/e$b;

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lv/e;->R()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lv/e;->p0(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lv/e;->q0(I)V

    :goto_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ge v0, v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv/e;

    instance-of v11, v10, Lv/g;

    if-eqz v11, :cond_5

    check-cast v10, Lv/g;

    invoke-virtual {v10}, Lv/g;->a1()I

    move-result v11

    if-ne v11, v9, :cond_6

    invoke-virtual {v10}, Lv/g;->b1()I

    move-result v5

    if-eq v5, v8, :cond_2

    invoke-virtual {v10}, Lv/g;->b1()I

    move-result v5

    invoke-virtual {v10, v5}, Lv/g;->e1(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Lv/g;->c1()I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-virtual {p0}, Lv/e;->e0()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lv/e;->R()I

    move-result v5

    invoke-virtual {v10}, Lv/g;->c1()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v10, v5}, Lv/g;->e1(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lv/e;->e0()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v10}, Lv/g;->d1()F

    move-result v5

    invoke-virtual {p0}, Lv/e;->R()I

    move-result v8

    int-to-float v8, v8

    mul-float v5, v5, v8

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v10, v5}, Lv/g;->e1(I)V

    :cond_4
    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    instance-of v7, v10, Lv/a;

    if-eqz v7, :cond_6

    check-cast v10, Lv/a;

    invoke-virtual {v10}, Lv/a;->f1()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v6, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_9

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    instance-of v10, v5, Lv/g;

    if-eqz v10, :cond_8

    check-cast v5, Lv/g;

    invoke-virtual {v5}, Lv/g;->a1()I

    move-result v10

    if-ne v10, v9, :cond_8

    invoke-static {v5, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    invoke-static {p0, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    if-eqz v6, :cond_b

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    instance-of v6, v5, Lv/a;

    if-eqz v6, :cond_a

    check-cast v5, Lv/a;

    invoke-virtual {v5}, Lv/a;->f1()I

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v5, p1, v4}, Lw/h;->c(Lv/a;Lw/b$b;I)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    sget-object v0, Lv/e$b;->a:Lv/e$b;

    if-ne v1, v0, :cond_c

    invoke-virtual {p0}, Lv/e;->v()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lv/e;->s0(II)V

    goto :goto_7

    :cond_c
    invoke-virtual {p0, v4}, Lv/e;->r0(I)V

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v0, v3, :cond_12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/e;

    instance-of v10, v6, Lv/g;

    if-eqz v10, :cond_10

    check-cast v6, Lv/g;

    invoke-virtual {v6}, Lv/g;->a1()I

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v6}, Lv/g;->b1()I

    move-result v1

    if-eq v1, v8, :cond_d

    invoke-virtual {v6}, Lv/g;->b1()I

    move-result v1

    invoke-virtual {v6, v1}, Lv/g;->e1(I)V

    goto :goto_9

    :cond_d
    invoke-virtual {v6}, Lv/g;->c1()I

    move-result v1

    if-eq v1, v8, :cond_e

    invoke-virtual {p0}, Lv/e;->f0()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lv/e;->v()I

    move-result v1

    invoke-virtual {v6}, Lv/g;->c1()I

    move-result v10

    sub-int/2addr v1, v10

    invoke-virtual {v6, v1}, Lv/g;->e1(I)V

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lv/e;->f0()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v6}, Lv/g;->d1()F

    move-result v1

    invoke-virtual {p0}, Lv/e;->v()I

    move-result v10

    int-to-float v10, v10

    mul-float v1, v1, v10

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v6, v1}, Lv/g;->e1(I)V

    :cond_f
    :goto_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    instance-of v10, v6, Lv/a;

    if-eqz v10, :cond_11

    check-cast v6, Lv/a;

    invoke-virtual {v6}, Lv/a;->f1()I

    move-result v6

    if-ne v6, v9, :cond_11

    const/4 v5, 0x1

    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_14

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_14

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/e;

    instance-of v6, v1, Lv/g;

    if-eqz v6, :cond_13

    check-cast v1, Lv/g;

    invoke-virtual {v1}, Lv/g;->a1()I

    move-result v6

    if-nez v6, :cond_13

    invoke-static {v1, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    invoke-static {p0, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    if-eqz v5, :cond_16

    const/4 p0, 0x0

    :goto_c
    if-ge p0, v3, :cond_16

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/e;

    instance-of v1, v0, Lv/a;

    if-eqz v1, :cond_15

    check-cast v0, Lv/a;

    invoke-virtual {v0}, Lv/a;->f1()I

    move-result v1

    if-ne v1, v9, :cond_15

    invoke-static {v0, p1, v9}, Lw/h;->c(Lv/a;Lw/b$b;I)V

    :cond_15
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_16
    const/4 p0, 0x0

    :goto_d
    if-ge p0, v3, :cond_18

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/e;

    invoke-virtual {v0}, Lv/e;->d0()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v0}, Lw/h;->a(Lv/e;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lw/h;->a:Lw/b$a;

    invoke-static {v0, p1, v1, v4}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    invoke-static {v0, p1}, Lw/h;->b(Lv/e;Lw/b$b;)V

    invoke-static {v0, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    :cond_17
    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    :cond_18
    return-void
.end method

.method private static i(Lv/e;Lw/b$b;)V
    .locals 12

    instance-of v0, p0, Lv/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv/e;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lw/h;->a(Lv/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_0
    sget-object v0, Lv/d$b;->c:Lv/d$b;

    invoke-virtual {p0, v0}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v0

    sget-object v2, Lv/d$b;->e:Lv/d$b;

    invoke-virtual {p0, v2}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v2

    invoke-virtual {v0}, Lv/d;->d()I

    move-result v3

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v4

    invoke-virtual {v0}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lv/d;->m()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v8, v5, Lv/d;->d:Lv/e;

    invoke-static {v8}, Lw/h;->a(Lv/e;)Z

    move-result v9

    invoke-virtual {v8}, Lv/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    new-instance v10, Lw/b$a;

    invoke-direct {v10}, Lw/b$a;-><init>()V

    invoke-static {v8, p1, v10, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_2
    invoke-virtual {v8}, Lv/e;->O()Lv/e$b;

    move-result-object v10

    sget-object v11, Lv/e$b;->c:Lv/e$b;

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lv/e;->O()Lv/e$b;

    move-result-object v9

    if-ne v9, v11, :cond_1

    invoke-virtual {v8}, Lv/e;->Q()I

    move-result v9

    if-eq v9, v7, :cond_4

    iget v9, v8, Lv/e;->r:I

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lv/e;->t()F

    move-result v9

    cmpl-float v9, v9, v6

    if-nez v9, :cond_1

    :cond_4
    invoke-virtual {v8}, Lv/e;->b0()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lv/e;->c0()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v8, Lv/e;->J:Lv/d;

    if-ne v5, v9, :cond_5

    iget-object v9, v8, Lv/e;->L:Lv/d;

    iget-object v9, v9, Lv/d;->f:Lv/d;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lv/d;->m()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    iget-object v9, v8, Lv/e;->L:Lv/d;

    if-ne v5, v9, :cond_1

    iget-object v5, v8, Lv/e;->J:Lv/d;

    iget-object v5, v5, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lv/d;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_6
    invoke-virtual {v8}, Lv/e;->b0()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0, p1, v8}, Lw/h;->g(Lv/e;Lw/b$b;Lv/e;)V

    goto :goto_0

    :cond_7
    :goto_1
    invoke-virtual {v8}, Lv/e;->d0()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v9, v8, Lv/e;->J:Lv/d;

    if-ne v5, v9, :cond_9

    iget-object v10, v8, Lv/e;->L:Lv/d;

    iget-object v10, v10, Lv/d;->f:Lv/d;

    if-nez v10, :cond_9

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v8}, Lv/e;->v()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v5, v9}, Lv/e;->s0(II)V

    invoke-static {v8, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    goto/16 :goto_0

    :cond_9
    iget-object v10, v8, Lv/e;->L:Lv/d;

    if-ne v5, v10, :cond_a

    iget-object v11, v10, Lv/d;->f:Lv/d;

    if-nez v11, :cond_a

    invoke-virtual {v10}, Lv/d;->e()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v8}, Lv/e;->v()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {v8, v9, v5}, Lv/e;->s0(II)V

    invoke-static {v8, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    goto/16 :goto_0

    :cond_a
    if-ne v5, v9, :cond_1

    iget-object v5, v10, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lv/d;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1, v8}, Lw/h;->f(Lw/b$b;Lv/e;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p0, Lv/g;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v2}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v2}, Lv/d;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v2}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    iget-object v3, v2, Lv/d;->d:Lv/e;

    invoke-static {v3}, Lw/h;->a(Lv/e;)Z

    move-result v5

    invoke-virtual {v3}, Lv/e;->d0()Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v5, :cond_e

    new-instance v8, Lw/b$a;

    invoke-direct {v8}, Lw/b$a;-><init>()V

    invoke-static {v3, p1, v8, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_e
    iget-object v8, v3, Lv/e;->J:Lv/d;

    if-ne v2, v8, :cond_f

    iget-object v8, v3, Lv/e;->L:Lv/d;

    iget-object v8, v8, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lv/d;->m()Z

    move-result v8

    if-nez v8, :cond_10

    :cond_f
    iget-object v8, v3, Lv/e;->L:Lv/d;

    if-ne v2, v8, :cond_11

    iget-object v8, v3, Lv/e;->J:Lv/d;

    iget-object v8, v8, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lv/d;->m()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    const/4 v8, 0x1

    goto :goto_3

    :cond_11
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v3}, Lv/e;->O()Lv/e$b;

    move-result-object v9

    sget-object v10, Lv/e$b;->c:Lv/e$b;

    if-ne v9, v10, :cond_14

    if-eqz v5, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {v3}, Lv/e;->O()Lv/e$b;

    move-result-object v2

    if-ne v2, v10, :cond_d

    invoke-virtual {v3}, Lv/e;->Q()I

    move-result v2

    if-eq v2, v7, :cond_13

    iget v2, v3, Lv/e;->r:I

    if-nez v2, :cond_d

    invoke-virtual {v3}, Lv/e;->t()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_d

    :cond_13
    invoke-virtual {v3}, Lv/e;->b0()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v3}, Lv/e;->c0()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v3}, Lv/e;->b0()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p0, p1, v3}, Lw/h;->g(Lv/e;Lw/b$b;Lv/e;)V

    goto :goto_2

    :cond_14
    :goto_4
    invoke-virtual {v3}, Lv/e;->d0()Z

    move-result v5

    if-eqz v5, :cond_15

    goto/16 :goto_2

    :cond_15
    iget-object v5, v3, Lv/e;->J:Lv/d;

    if-ne v2, v5, :cond_16

    iget-object v9, v3, Lv/e;->L:Lv/d;

    iget-object v9, v9, Lv/d;->f:Lv/d;

    if-nez v9, :cond_16

    invoke-virtual {v5}, Lv/d;->e()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lv/e;->v()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v2, v5}, Lv/e;->s0(II)V

    invoke-static {v3, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    goto/16 :goto_2

    :cond_16
    iget-object v9, v3, Lv/e;->L:Lv/d;

    if-ne v2, v9, :cond_17

    iget-object v2, v5, Lv/d;->f:Lv/d;

    if-nez v2, :cond_17

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v3}, Lv/e;->v()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v3, v5, v2}, Lv/e;->s0(II)V

    invoke-static {v3, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V

    goto/16 :goto_2

    :cond_17
    if-eqz v8, :cond_d

    invoke-virtual {v3}, Lv/e;->b0()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p1, v3}, Lw/h;->f(Lw/b$b;Lv/e;)V

    goto/16 :goto_2

    :cond_18
    sget-object v0, Lv/d$b;->f:Lv/d$b;

    invoke-virtual {p0, v0}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object p0

    invoke-virtual {p0}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lv/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lv/d;->d()I

    move-result v0

    invoke-virtual {p0}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    iget-object v3, v2, Lv/d;->d:Lv/e;

    invoke-static {v3}, Lw/h;->a(Lv/e;)Z

    move-result v4

    invoke-virtual {v3}, Lv/e;->d0()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v4, :cond_1a

    new-instance v5, Lw/b$a;

    invoke-direct {v5}, Lw/b$a;-><init>()V

    invoke-static {v3, p1, v5, v1}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_1a
    invoke-virtual {v3}, Lv/e;->O()Lv/e$b;

    move-result-object v5

    sget-object v6, Lv/e$b;->c:Lv/e$b;

    if-ne v5, v6, :cond_1b

    if-eqz v4, :cond_19

    :cond_1b
    invoke-virtual {v3}, Lv/e;->d0()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_5

    :cond_1c
    iget-object v4, v3, Lv/e;->M:Lv/d;

    if-ne v2, v4, :cond_19

    invoke-virtual {v3, v0}, Lv/e;->o0(I)V

    :try_start_0
    invoke-static {v3, p1}, Lw/h;->i(Lv/e;Lw/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    :cond_1d
    return-void
.end method
