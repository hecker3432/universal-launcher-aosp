.class public Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/b$a;,
        Lw/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Lw/b$a;

.field private c:Lv/f;


# direct methods
.method public constructor <init>(Lv/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    iput-object v0, p0, Lw/b;->b:Lw/b$a;

    iput-object p1, p0, Lw/b;->c:Lv/f;

    return-void
.end method

.method private a(Lw/b$b;Lv/e;Z)Z
    .locals 5

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    invoke-virtual {p2}, Lv/e;->y()Lv/e$b;

    move-result-object v1

    iput-object v1, v0, Lw/b$a;->a:Lv/e$b;

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    invoke-virtual {p2}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    iput-object v1, v0, Lw/b$a;->b:Lv/e$b;

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    invoke-virtual {p2}, Lv/e;->R()I

    move-result v1

    iput v1, v0, Lw/b$a;->c:I

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    invoke-virtual {p2}, Lv/e;->v()I

    move-result v1

    iput v1, v0, Lw/b$a;->d:I

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lw/b$a;->i:Z

    iput-boolean p3, v0, Lw/b$a;->j:Z

    iget-object p3, v0, Lw/b$a;->a:Lv/e$b;

    sget-object v2, Lv/e$b;->c:Lv/e$b;

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v4, v0, Lw/b$a;->b:Lv/e$b;

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Lv/e;->X:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v2, :cond_3

    iget v2, p2, Lv/e;->X:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, Lv/e;->s:[I

    aget p3, p3, v1

    if-ne p3, v4, :cond_4

    sget-object p3, Lv/e$b;->a:Lv/e$b;

    iput-object p3, v0, Lw/b$a;->a:Lv/e$b;

    :cond_4
    if-eqz v2, :cond_5

    iget-object p3, p2, Lv/e;->s:[I

    aget p3, p3, v3

    if-ne p3, v4, :cond_5

    sget-object p3, Lv/e$b;->a:Lv/e$b;

    iput-object p3, v0, Lw/b$a;->b:Lv/e$b;

    :cond_5
    invoke-interface {p1, p2, v0}, Lw/b$b;->b(Lv/e;Lw/b$a;)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget p1, p1, Lw/b$a;->e:I

    invoke-virtual {p2, p1}, Lv/e;->T0(I)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget p1, p1, Lw/b$a;->f:I

    invoke-virtual {p2, p1}, Lv/e;->v0(I)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget-boolean p1, p1, Lw/b$a;->h:Z

    invoke-virtual {p2, p1}, Lv/e;->u0(Z)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget p1, p1, Lw/b$a;->g:I

    invoke-virtual {p2, p1}, Lv/e;->k0(I)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iput-boolean v1, p1, Lw/b$a;->j:Z

    iget-boolean p1, p1, Lw/b$a;->i:Z

    return p1
.end method

.method private b(Lv/f;)V
    .locals 12

    iget-object v0, p1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lv/f;->A1(I)Z

    move-result v1

    invoke-virtual {p1}, Lv/f;->q1()Lw/b$b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_9

    iget-object v5, p1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    instance-of v6, v5, Lv/g;

    if-eqz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v6, v5, Lv/a;

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5}, Lv/e;->c0()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, v5, Lv/e;->e:Lw/l;

    if-eqz v6, :cond_3

    iget-object v7, v5, Lv/e;->f:Lw/n;

    if-eqz v7, :cond_3

    iget-object v6, v6, Lw/p;->e:Lw/g;

    iget-boolean v6, v6, Lw/f;->j:Z

    if-eqz v6, :cond_3

    iget-object v6, v7, Lw/p;->e:Lw/g;

    iget-boolean v6, v6, Lw/f;->j:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v3}, Lv/e;->s(I)Lv/e$b;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lv/e;->s(I)Lv/e$b;

    move-result-object v8

    sget-object v9, Lv/e$b;->c:Lv/e$b;

    if-ne v6, v9, :cond_4

    iget v10, v5, Lv/e;->q:I

    if-eq v10, v7, :cond_4

    if-ne v8, v9, :cond_4

    iget v10, v5, Lv/e;->r:I

    if-eq v10, v7, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_7

    invoke-virtual {p1, v7}, Lv/f;->A1(I)Z

    move-result v11

    if-eqz v11, :cond_7

    if-ne v6, v9, :cond_5

    iget v11, v5, Lv/e;->q:I

    if-nez v11, :cond_5

    if-eq v8, v9, :cond_5

    invoke-virtual {v5}, Lv/e;->Z()Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    move v7, v10

    :goto_2
    if-ne v8, v9, :cond_6

    iget v8, v5, Lv/e;->r:I

    if-nez v8, :cond_6

    if-eq v6, v9, :cond_6

    invoke-virtual {v5}, Lv/e;->Z()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    move v10, v7

    :cond_7
    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-direct {p0, v2, v5, v3}, Lw/b;->a(Lw/b$b;Lv/e;Z)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    invoke-interface {v2}, Lw/b$b;->a()V

    return-void
.end method

.method private c(Lv/f;Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p1}, Lv/e;->G()I

    move-result p2

    invoke-virtual {p1}, Lv/e;->F()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lv/e;->J0(I)V

    invoke-virtual {p1, v1}, Lv/e;->I0(I)V

    invoke-virtual {p1, p3}, Lv/e;->T0(I)V

    invoke-virtual {p1, p4}, Lv/e;->v0(I)V

    invoke-virtual {p1, p2}, Lv/e;->J0(I)V

    invoke-virtual {p1, v0}, Lv/e;->I0(I)V

    iget-object p1, p0, Lw/b;->c:Lv/f;

    invoke-virtual {p1}, Lv/f;->a1()V

    return-void
.end method


# virtual methods
.method public d(Lv/f;IIIIIIIII)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Lv/f;->q1()Lw/b$b;

    move-result-object v5

    iget-object v6, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v8

    const/16 v9, 0x80

    invoke-static {v2, v9}, Lv/j;->b(II)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_1

    const/16 v12, 0x40

    invoke-static {v2, v12}, Lv/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_9

    iget-object v13, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv/e;

    invoke-virtual {v13}, Lv/e;->y()Lv/e$b;

    move-result-object v14

    sget-object v15, Lv/e$b;->c:Lv/e$b;

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v13}, Lv/e;->O()Lv/e$b;

    move-result-object v11

    if-ne v11, v15, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v13}, Lv/e;->t()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v13}, Lv/e;->Z()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    invoke-virtual {v13}, Lv/e;->b0()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v13}, Lv/e;->Z()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v13}, Lv/e;->b0()Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v12, v10

    goto :goto_2

    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    sget-boolean v11, Lu/d;->r:Z

    :cond_a
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_b

    if-eq v4, v11, :cond_c

    :cond_b
    if-eqz v9, :cond_d

    :cond_c
    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    and-int/2addr v2, v12

    const/4 v12, 0x2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Lv/e;->E()I

    move-result v13

    move/from16 v14, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lv/e;->D()I

    move-result v14

    move/from16 v15, p8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ne v3, v11, :cond_e

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v15

    if-eq v15, v13, :cond_e

    invoke-virtual {v1, v13}, Lv/e;->T0(I)V

    invoke-virtual/range {p1 .. p1}, Lv/f;->t1()V

    :cond_e
    if-ne v4, v11, :cond_f

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v13

    if-eq v13, v14, :cond_f

    invoke-virtual {v1, v14}, Lv/e;->v0(I)V

    invoke-virtual/range {p1 .. p1}, Lv/f;->t1()V

    :cond_f
    if-ne v3, v11, :cond_10

    if-ne v4, v11, :cond_10

    invoke-virtual {v1, v9}, Lv/f;->n1(Z)Z

    move-result v9

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto :goto_a

    :cond_10
    invoke-virtual {v1, v9}, Lv/f;->o1(Z)Z

    move-result v13

    const/4 v14, 0x0

    if-ne v3, v11, :cond_11

    invoke-virtual {v1, v9, v14}, Lv/f;->p1(ZI)Z

    move-result v15

    and-int/2addr v13, v15

    const/4 v15, 0x1

    goto :goto_9

    :cond_11
    const/4 v15, 0x0

    :goto_9
    if-ne v4, v11, :cond_12

    invoke-virtual {v1, v9, v10}, Lv/f;->p1(ZI)Z

    move-result v9

    and-int/2addr v9, v13

    add-int/2addr v15, v10

    goto :goto_a

    :cond_12
    move v9, v13

    :goto_a
    if-eqz v9, :cond_16

    if-ne v3, v11, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    if-ne v4, v11, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v1, v3, v4}, Lv/f;->X0(ZZ)V

    goto :goto_d

    :cond_15
    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    :cond_16
    :goto_d
    if-eqz v9, :cond_17

    if-eq v15, v12, :cond_2d

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lv/f;->r1()I

    move-result v3

    if-lez v6, :cond_18

    invoke-direct/range {p0 .. p1}, Lw/b;->b(Lv/f;)V

    :cond_18
    iget-object v4, v0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v6, :cond_19

    const-string v6, "First pass"

    invoke-direct {v0, v1, v6, v7, v8}, Lw/b;->c(Lv/f;Ljava/lang/String;II)V

    :cond_19
    if-lez v4, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lv/e;->y()Lv/e$b;

    move-result-object v6

    sget-object v9, Lv/e$b;->b:Lv/e$b;

    if-ne v6, v9, :cond_1a

    const/4 v6, 0x1

    goto :goto_e

    :cond_1a
    const/4 v6, 0x0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lv/e;->O()Lv/e$b;

    move-result-object v11

    if-ne v11, v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_f

    :cond_1b
    const/4 v9, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v11

    iget-object v13, v0, Lw/b;->c:Lv/f;

    invoke-virtual {v13}, Lv/e;->G()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v13

    iget-object v15, v0, Lw/b;->c:Lv/f;

    invoke-virtual {v15}, Lv/e;->F()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v4, :cond_1c

    iget-object v14, v0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/e;

    add-int/2addr v15, v10

    const/4 v14, 0x0

    goto :goto_10

    :cond_1c
    const/4 v14, 0x0

    :goto_11
    if-ge v14, v12, :cond_27

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_12
    if-ge v15, v4, :cond_26

    iget-object v12, v0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv/e;

    instance-of v10, v12, Lv/h;

    if-eqz v10, :cond_1d

    :goto_13
    move/from16 p5, v4

    goto :goto_14

    :cond_1d
    instance-of v10, v12, Lv/g;

    if-eqz v10, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-virtual {v12}, Lv/e;->Q()I

    move-result v10

    move/from16 p5, v4

    const/16 v4, 0x8

    if-ne v10, v4, :cond_1f

    goto :goto_14

    :cond_1f
    if-eqz v2, :cond_21

    iget-object v4, v12, Lv/e;->e:Lw/l;

    iget-object v4, v4, Lw/p;->e:Lw/g;

    iget-boolean v4, v4, Lw/f;->j:Z

    if-eqz v4, :cond_21

    iget-object v4, v12, Lv/e;->f:Lw/n;

    iget-object v4, v4, Lw/p;->e:Lw/g;

    iget-boolean v4, v4, Lw/f;->j:Z

    if-eqz v4, :cond_21

    :goto_14
    move/from16 p9, v2

    move/from16 p6, v3

    move-object/from16 p10, v5

    :cond_20
    const/4 v2, 0x1

    goto/16 :goto_17

    :cond_21
    invoke-virtual {v12}, Lv/e;->R()I

    move-result v4

    invoke-virtual {v12}, Lv/e;->v()I

    move-result v10

    move/from16 p9, v2

    invoke-virtual {v12}, Lv/e;->n()I

    move-result v2

    move/from16 p6, v3

    const/4 v3, 0x1

    invoke-direct {v0, v5, v12, v3}, Lw/b;->a(Lw/b$b;Lv/e;Z)Z

    move-result v17

    or-int v3, v16, v17

    move/from16 p7, v3

    invoke-virtual {v12}, Lv/e;->R()I

    move-result v3

    move-object/from16 p10, v5

    invoke-virtual {v12}, Lv/e;->v()I

    move-result v5

    if-eq v3, v4, :cond_23

    invoke-virtual {v12, v3}, Lv/e;->T0(I)V

    if-eqz v6, :cond_22

    invoke-virtual {v12}, Lv/e;->K()I

    move-result v3

    if-le v3, v11, :cond_22

    invoke-virtual {v12}, Lv/e;->K()I

    move-result v3

    sget-object v4, Lv/d$b;->d:Lv/d$b;

    invoke-virtual {v12, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_22
    const/4 v3, 0x1

    goto :goto_15

    :cond_23
    move/from16 v3, p7

    :goto_15
    if-eq v5, v10, :cond_25

    invoke-virtual {v12, v5}, Lv/e;->v0(I)V

    if-eqz v9, :cond_24

    invoke-virtual {v12}, Lv/e;->p()I

    move-result v3

    if-le v3, v13, :cond_24

    invoke-virtual {v12}, Lv/e;->p()I

    move-result v3

    sget-object v4, Lv/d$b;->e:Lv/d$b;

    invoke-virtual {v12, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_24
    const/16 v16, 0x1

    goto :goto_16

    :cond_25
    move/from16 v16, v3

    :goto_16
    invoke-virtual {v12}, Lv/e;->U()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v12}, Lv/e;->n()I

    move-result v3

    if-eq v2, v3, :cond_20

    const/4 v2, 0x1

    const/16 v16, 0x1

    :goto_17
    add-int/2addr v15, v2

    move/from16 v4, p5

    move/from16 v3, p6

    move/from16 v2, p9

    move-object/from16 v5, p10

    const/4 v10, 0x1

    const/4 v12, 0x2

    goto/16 :goto_12

    :cond_26
    move/from16 p9, v2

    move/from16 p6, v3

    move/from16 p5, v4

    move-object/from16 p10, v5

    const/4 v2, 0x1

    if-eqz v16, :cond_28

    const-string v3, "intermediate pass"

    invoke-direct {v0, v1, v3, v7, v8}, Lw/b;->c(Lv/f;Ljava/lang/String;II)V

    add-int/2addr v14, v2

    move/from16 v4, p5

    move/from16 v3, p6

    move/from16 v2, p9

    move-object/from16 v5, p10

    const/4 v10, 0x1

    const/4 v12, 0x2

    goto/16 :goto_11

    :cond_27
    move/from16 p6, v3

    const/4 v2, 0x1

    const/16 v16, 0x0

    :cond_28
    if-eqz v16, :cond_2b

    const-string v3, "2nd pass"

    invoke-direct {v0, v1, v3, v7, v8}, Lw/b;->c(Lv/f;Ljava/lang/String;II)V

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v3

    if-ge v3, v11, :cond_29

    invoke-virtual {v1, v11}, Lv/e;->T0(I)V

    const/4 v10, 0x1

    goto :goto_18

    :cond_29
    const/4 v10, 0x0

    :goto_18
    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v2

    if-ge v2, v13, :cond_2a

    invoke-virtual {v1, v13}, Lv/e;->v0(I)V

    goto :goto_19

    :cond_2a
    if-eqz v10, :cond_2b

    :goto_19
    const-string v2, "3rd pass"

    invoke-direct {v0, v1, v2, v7, v8}, Lw/b;->c(Lv/f;Ljava/lang/String;II)V

    :cond_2b
    move/from16 v2, p6

    goto :goto_1a

    :cond_2c
    move v2, v3

    :goto_1a
    invoke-virtual {v1, v2}, Lv/f;->D1(I)V

    :cond_2d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public e(Lv/f;)V
    .locals 5

    iget-object v0, p0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/e;

    invoke-virtual {v2}, Lv/e;->y()Lv/e$b;

    move-result-object v3

    sget-object v4, Lv/e$b;->c:Lv/e$b;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lv/e;->O()Lv/e$b;

    move-result-object v3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lv/f;->t1()V

    return-void
.end method
