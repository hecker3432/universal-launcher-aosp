.class public abstract Lw/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;
    .locals 6

    if-nez p1, :cond_0

    iget v0, p0, Lv/e;->B0:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lv/e;->C0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Lw/o;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw/o;

    invoke-virtual {v4}, Lw/o;->c()I

    move-result v5

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, v4}, Lw/o;->g(ILw/o;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    if-nez p3, :cond_9

    instance-of v0, p0, Lv/i;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lv/i;

    invoke-virtual {v0, p1}, Lv/i;->a1(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/o;

    invoke-virtual {v3}, Lw/o;->c()I

    move-result v4

    if-ne v4, v0, :cond_6

    move-object p3, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez p3, :cond_8

    new-instance p3, Lw/o;

    invoke-direct {p3, p1}, Lw/o;-><init>(I)V

    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {p3, p0}, Lw/o;->a(Lv/e;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p0, Lv/g;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Lv/g;

    invoke-virtual {v0}, Lv/g;->Z0()Lv/d;

    move-result-object v2

    invoke-virtual {v0}, Lv/g;->a1()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {v2, v1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    :cond_b
    if-nez p1, :cond_c

    invoke-virtual {p3}, Lw/o;->c()I

    move-result v0

    iput v0, p0, Lv/e;->B0:I

    iget-object v0, p0, Lv/e;->I:Lv/d;

    invoke-virtual {v0, p1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    iget-object v0, p0, Lv/e;->K:Lv/d;

    invoke-virtual {v0, p1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p3}, Lw/o;->c()I

    move-result v0

    iput v0, p0, Lv/e;->C0:I

    iget-object v0, p0, Lv/e;->J:Lv/d;

    invoke-virtual {v0, p1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    iget-object v0, p0, Lv/e;->M:Lv/d;

    invoke-virtual {v0, p1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    iget-object v0, p0, Lv/e;->L:Lv/d;

    invoke-virtual {v0, p1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    :goto_5
    iget-object p0, p0, Lv/e;->P:Lv/d;

    invoke-virtual {p0, p1, p2, p3}, Lv/d;->b(ILjava/util/ArrayList;Lw/o;)V

    :cond_d
    return-object p3
.end method

.method private static b(Ljava/util/ArrayList;I)Lw/o;
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/o;

    iget v3, v2, Lw/o;->b:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lv/f;Lw/b$b;)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lv/k;->Z0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    invoke-virtual/range {p0 .. p0}, Lv/e;->y()Lv/e$b;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lv/e;->O()Lv/e$b;

    move-result-object v7

    invoke-virtual {v5}, Lv/e;->y()Lv/e$b;

    move-result-object v8

    invoke-virtual {v5}, Lv/e;->O()Lv/e$b;

    move-result-object v5

    invoke-static {v6, v7, v8, v5}, Lw/i;->d(Lv/e$b;Lv/e$b;Lv/e$b;Lv/e$b;)Z

    move-result v5

    if-nez v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v2, :cond_12

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv/e;

    invoke-virtual/range {p0 .. p0}, Lv/e;->y()Lv/e$b;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lv/e;->O()Lv/e$b;

    move-result-object v15

    invoke-virtual {v13}, Lv/e;->y()Lv/e$b;

    move-result-object v4

    invoke-virtual {v13}, Lv/e;->O()Lv/e$b;

    move-result-object v12

    invoke-static {v14, v15, v4, v12}, Lw/i;->d(Lv/e$b;Lv/e$b;Lv/e$b;Lv/e$b;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lv/f;->g1:Lw/b$a;

    move-object/from16 v12, p1

    invoke-static {v13, v12, v4, v3}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    goto :goto_2

    :cond_2
    move-object/from16 v12, p1

    :goto_2
    instance-of v4, v13, Lv/g;

    if-eqz v4, :cond_6

    move-object v14, v13

    check-cast v14, Lv/g;

    invoke-virtual {v14}, Lv/g;->a1()I

    move-result v15

    if-nez v15, :cond_4

    if-nez v8, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v14}, Lv/g;->a1()I

    move-result v15

    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    instance-of v3, v13, Lv/i;

    if-eqz v3, :cond_d

    instance-of v3, v13, Lv/a;

    if-eqz v3, :cond_a

    move-object v3, v13

    check-cast v3, Lv/a;

    invoke-virtual {v3}, Lv/a;->f1()I

    move-result v14

    if-nez v14, :cond_8

    if-nez v7, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v3}, Lv/a;->f1()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    if-nez v9, :cond_9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object v3, v13

    check-cast v3, Lv/i;

    if-nez v7, :cond_b

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    iget-object v3, v13, Lv/e;->I:Lv/d;

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-nez v3, :cond_f

    iget-object v3, v13, Lv/e;->K:Lv/d;

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    instance-of v3, v13, Lv/a;

    if-nez v3, :cond_f

    if-nez v10, :cond_e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v3, v13, Lv/e;->J:Lv/d;

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-nez v3, :cond_11

    iget-object v3, v13, Lv/e;->L:Lv/d;

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-nez v3, :cond_11

    iget-object v3, v13, Lv/e;->M:Lv/d;

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-nez v3, :cond_11

    if-nez v4, :cond_11

    instance-of v3, v13, Lv/a;

    if-nez v3, :cond_11

    if-nez v11, :cond_10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_10
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/g;

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v6, v3, v12}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_4

    :cond_13
    const/4 v6, 0x0

    const/4 v12, 0x0

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/i;

    invoke-static {v5, v6, v3, v12}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Lv/i;->Z0(Ljava/util/ArrayList;ILw/o;)V

    invoke-virtual {v7, v3}, Lw/o;->b(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_14
    sget-object v4, Lv/d$b;->b:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_6

    :cond_15
    sget-object v4, Lv/d$b;->d:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_7

    :cond_16
    sget-object v4, Lv/d$b;->g:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_8

    :cond_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    invoke-static {v5, v6, v3, v7}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_9

    :cond_18
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/g;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3, v7}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_a

    :cond_19
    const/4 v6, 0x1

    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/i;

    invoke-static {v5, v6, v3, v7}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    move-result-object v8

    invoke-virtual {v5, v3, v6, v8}, Lv/i;->Z0(Ljava/util/ArrayList;ILw/o;)V

    invoke-virtual {v8, v3}, Lw/o;->b(Ljava/util/ArrayList;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_b

    :cond_1a
    sget-object v4, Lv/d$b;->c:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7, v3, v6}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_c

    :cond_1b
    sget-object v4, Lv/d$b;->f:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7, v3, v6}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_d

    :cond_1c
    sget-object v4, Lv/d$b;->e:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7, v3, v6}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_e

    :cond_1d
    sget-object v4, Lv/d$b;->g:Lv/d$b;

    invoke-virtual {v0, v4}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v4

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4}, Lv/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/e;

    const/4 v6, 0x1

    const/4 v12, 0x0

    invoke-static {v5, v6, v3, v12}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_f

    :cond_1e
    const/4 v6, 0x1

    const/4 v12, 0x0

    if-eqz v11, :cond_1f

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    invoke-static {v5, v6, v3, v12}, Lw/i;->a(Lv/e;ILjava/util/ArrayList;Lw/o;)Lw/o;

    goto :goto_10

    :cond_1f
    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_21

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/e;

    invoke-virtual {v5}, Lv/e;->g0()Z

    move-result v6

    if-eqz v6, :cond_20

    iget v6, v5, Lv/e;->B0:I

    invoke-static {v3, v6}, Lw/i;->b(Ljava/util/ArrayList;I)Lw/o;

    move-result-object v6

    iget v5, v5, Lv/e;->C0:I

    invoke-static {v3, v5}, Lw/i;->b(Ljava/util/ArrayList;I)Lw/o;

    move-result-object v5

    if-eqz v6, :cond_20

    if-eqz v5, :cond_20

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Lw/o;->g(ILw/o;)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lw/o;->i(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_22

    const/4 v1, 0x0

    return v1

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lv/e;->y()Lv/e$b;

    move-result-object v1

    sget-object v2, Lv/e$b;->b:Lv/e$b;

    if-ne v1, v2, :cond_26

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v12

    const/4 v6, 0x0

    :cond_23
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw/o;

    invoke-virtual {v4}, Lw/o;->d()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_24

    goto :goto_12

    :cond_24
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lw/o;->h(Z)V

    invoke-virtual/range {p0 .. p0}, Lv/f;->s1()Lu/d;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lw/o;->f(Lu/d;I)I

    move-result v7

    if-le v7, v6, :cond_23

    move-object v2, v4

    move v6, v7

    goto :goto_12

    :cond_25
    if-eqz v2, :cond_26

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    invoke-virtual {v0, v1}, Lv/e;->z0(Lv/e$b;)V

    invoke-virtual {v0, v6}, Lv/e;->T0(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lw/o;->h(Z)V

    goto :goto_13

    :cond_26
    move-object v2, v12

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    sget-object v4, Lv/e$b;->b:Lv/e$b;

    if-ne v1, v4, :cond_2a

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v12

    const/4 v6, 0x0

    :cond_27
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw/o;

    invoke-virtual {v4}, Lw/o;->d()I

    move-result v5

    if-nez v5, :cond_28

    goto :goto_14

    :cond_28
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lw/o;->h(Z)V

    invoke-virtual/range {p0 .. p0}, Lv/f;->s1()Lu/d;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lw/o;->f(Lu/d;I)I

    move-result v7

    if-le v7, v6, :cond_27

    move-object v3, v4

    move v6, v7

    goto :goto_14

    :cond_29
    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_2b

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    invoke-virtual {v0, v1}, Lv/e;->P0(Lv/e$b;)V

    invoke-virtual {v0, v6}, Lv/e;->v0(I)V

    invoke-virtual {v3, v8}, Lw/o;->h(Z)V

    move-object v4, v3

    goto :goto_15

    :cond_2a
    const/4 v5, 0x0

    const/4 v8, 0x1

    :cond_2b
    move-object v4, v12

    :goto_15
    if-nez v2, :cond_2d

    if-eqz v4, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v3, 0x0

    goto :goto_17

    :cond_2d
    :goto_16
    const/4 v3, 0x1

    :goto_17
    return v3
.end method

.method public static d(Lv/e$b;Lv/e$b;Lv/e$b;Lv/e$b;)Z
    .locals 5

    sget-object v0, Lv/e$b;->a:Lv/e$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    sget-object v3, Lv/e$b;->b:Lv/e$b;

    if-eq p2, v3, :cond_1

    sget-object v4, Lv/e$b;->d:Lv/e$b;

    if-ne p2, v4, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eq p3, v0, :cond_3

    sget-object p2, Lv/e$b;->b:Lv/e$b;

    if-eq p3, p2, :cond_3

    sget-object v0, Lv/e$b;->d:Lv/e$b;

    if-ne p3, v0, :cond_2

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v1
.end method
