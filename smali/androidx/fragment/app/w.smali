.class abstract Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/w$h;,
        Landroidx/fragment/app/w$g;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/fragment/app/D;

.field private static final c:Landroidx/fragment/app/D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/w;->a:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/C;

    invoke-direct {v0}, Landroidx/fragment/app/C;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/D;

    invoke-static {}, Landroidx/fragment/app/w;->w()Landroidx/fragment/app/D;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/D;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method static A(Ljava/util/ArrayList;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static B(Landroidx/fragment/app/m;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/w$g;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    iget v0, v6, Landroidx/fragment/app/m;->n:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move/from16 v0, p3

    :goto_0
    if-ge v0, v9, :cond_2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v11, v10}, Landroidx/fragment/app/w;->e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_1
    invoke-static {v1, v11, v10}, Landroidx/fragment/app/w;->c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v12, Landroid/view/View;

    iget-object v0, v6, Landroidx/fragment/app/m;->o:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_4

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v15, p3

    invoke-static {v1, v7, v8, v15, v9}, Landroidx/fragment/app/w;->d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lr/a;

    move-result-object v4

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/w$h;

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    move-object v3, v12

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/w;->o(Landroidx/fragment/app/m;ILandroidx/fragment/app/w$h;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$g;)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    move-object v3, v12

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/w;->n(Landroidx/fragment/app/m;ILandroidx/fragment/app/w$h;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$g;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lr/a;Ljava/util/Collection;)V
    .locals 3

    invoke-virtual {p1}, Lr/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lr/g;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, LI/P;->w(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroidx/fragment/app/a;Landroidx/fragment/app/v$a;Landroid/util/SparseArray;ZZ)V
    .locals 8

    iget-object v0, p1, Landroidx/fragment/app/v$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->x:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    sget-object v2, Landroidx/fragment/app/w;->a:[I

    iget p1, p1, Landroidx/fragment/app/v$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/v$a;->a:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_b

    const/4 v4, 0x3

    if-eq p1, v4, :cond_9

    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_9

    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/4 p1, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_5

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_4

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    :goto_3
    move v2, p1

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz p1, :cond_7

    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_7

    goto :goto_4

    :goto_5
    move v5, p1

    const/4 p1, 0x0

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    if-eqz p4, :cond_a

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez p1, :cond_7

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget p1, v0, Landroidx/fragment/app/Fragment;->O:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_7

    :goto_6
    goto :goto_4

    :cond_a
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_7

    goto :goto_6

    :cond_b
    if-eqz p4, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_3

    :cond_c
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_4

    goto :goto_2

    :goto_7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/w$h;

    if-eqz v2, :cond_d

    invoke-static {v6, p2, v1}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/w$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/w$h;

    move-result-object v6

    iput-object v0, v6, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    iput-boolean p3, v6, Landroidx/fragment/app/w$h;->b:Z

    iput-object p0, v6, Landroidx/fragment/app/w$h;->c:Landroidx/fragment/app/a;

    :cond_d
    const/4 v2, 0x0

    if-nez p4, :cond_f

    if-eqz p1, :cond_f

    if-eqz v6, :cond_e

    iget-object p1, v6, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_e

    iput-object v2, v6, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    :cond_e
    iget-object p1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/m;

    iget v7, v0, Landroidx/fragment/app/Fragment;->b:I

    if-ge v7, v3, :cond_f

    iget v7, p1, Landroidx/fragment/app/m;->n:I

    if-lt v7, v3, :cond_f

    iget-boolean v7, p0, Landroidx/fragment/app/v;->r:Z

    if-nez v7, :cond_f

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->v0(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v0, v3}, Landroidx/fragment/app/m;->B0(Landroidx/fragment/app/Fragment;I)V

    :cond_f
    if-eqz v5, :cond_11

    if-eqz v6, :cond_10

    iget-object p1, v6, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_11

    :cond_10
    invoke-static {v6, p2, v1}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/w$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/w$h;

    move-result-object v6

    iput-object v0, v6, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    iput-boolean p3, v6, Landroidx/fragment/app/w$h;->e:Z

    iput-object p0, v6, Landroidx/fragment/app/w$h;->f:Landroidx/fragment/app/a;

    :cond_11
    if-nez p4, :cond_12

    if-eqz v4, :cond_12

    if-eqz v6, :cond_12

    iget-object p0, v6, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_12

    iput-object v2, v6, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method public static c(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/fragment/app/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/v$a;

    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/w;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/v$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static d(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lr/a;
    .locals 9

    new-instance v0, Lr/a;

    invoke-direct {v0}, Lr/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->B(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v1, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    iget-object v1, v1, Landroidx/fragment/app/v;->q:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    iget-object v1, v1, Landroidx/fragment/app/v;->q:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lr/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v0, v5, v7}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v5, v6}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static e(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->p:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/v$a;

    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/w;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/v$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLr/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->w()Ly/y;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->w()Ly/y;

    :goto_0
    return-void
.end method

.method private static g(Landroidx/fragment/app/D;Ljava/util/List;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/D;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static h(Landroidx/fragment/app/D;Lr/a;Ljava/lang/Object;Landroidx/fragment/app/w$h;)Lr/a;
    .locals 3

    iget-object v0, p3, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->P()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lr/g;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lr/a;

    invoke-direct {p2}, Lr/a;-><init>()V

    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/D;->j(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Landroidx/fragment/app/w$h;->c:Landroidx/fragment/app/a;

    iget-boolean p3, p3, Landroidx/fragment/app/w$h;->b:Z

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->y()Ly/y;

    iget-object p0, p0, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->w()Ly/y;

    iget-object p0, p0, Landroidx/fragment/app/v;->q:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p2, p0}, Lr/a;->n(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lr/a;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p2, p0}, Lr/a;->n(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {p1, p2}, Landroidx/fragment/app/w;->x(Lr/a;Lr/a;)V

    return-object p2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lr/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(Landroidx/fragment/app/D;Lr/a;Ljava/lang/Object;Landroidx/fragment/app/w$h;)Lr/a;
    .locals 2

    invoke-virtual {p1}, Lr/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    new-instance v0, Lr/a;

    invoke-direct {v0}, Lr/a;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->i1()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/D;->j(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Landroidx/fragment/app/w$h;->f:Landroidx/fragment/app/a;

    iget-boolean p3, p3, Landroidx/fragment/app/w$h;->e:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->w()Ly/y;

    iget-object p0, p0, Landroidx/fragment/app/v;->q:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->y()Ly/y;

    iget-object p0, p0, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lr/a;->n(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Lr/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lr/a;->n(Ljava/util/Collection;)Z

    return-object v0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lr/g;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/D;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->v()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    :cond_6
    sget-object p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/D;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Landroidx/fragment/app/w;->g(Landroidx/fragment/app/D;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p0

    :cond_7
    sget-object v1, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/D;

    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Landroidx/fragment/app/w;->g(Landroidx/fragment/app/D;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    if-nez p0, :cond_9

    if-nez v1, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static k(Landroidx/fragment/app/D;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->P()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/D;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/D;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static l(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v8, v7, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    iget-object v9, v7, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v12, v7, Landroidx/fragment/app/w$h;->b:Z

    invoke-virtual/range {p3 .. p3}, Lr/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    :goto_0
    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/w;->i(Landroidx/fragment/app/D;Lr/a;Ljava/lang/Object;Landroidx/fragment/app/w$h;)Lr/a;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lr/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lr/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLr/a;Z)V

    if-eqz v14, :cond_4

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/D;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v4, v7, Landroidx/fragment/app/w$h;->e:Z

    iget-object v2, v7, Landroidx/fragment/app/w$h;->f:Landroidx/fragment/app/a;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/w;->z(Landroidx/fragment/app/D;Ljava/lang/Object;Ljava/lang/Object;Lr/a;ZLandroidx/fragment/app/a;)V

    if-eqz v11, :cond_5

    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/D;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    :cond_5
    :goto_2
    new-instance v5, Landroidx/fragment/app/w$f;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/w$f;-><init>(Landroidx/fragment/app/D;Lr/a;Ljava/lang/Object;Landroidx/fragment/app/w$h;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, LI/w;->a(Landroid/view/View;Ljava/lang/Runnable;)LI/w;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static m(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    iget-object v9, v7, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    iget-object v10, v7, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->i1()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v11, v7, Landroidx/fragment/app/w$h;->b:Z

    invoke-virtual/range {p3 .. p3}, Lr/g;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    :cond_2
    invoke-static {p0, v9, v10, v11}, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/w;->i(Landroidx/fragment/app/D;Lr/a;Ljava/lang/Object;Landroidx/fragment/app/w$h;)Lr/a;

    move-result-object v12

    invoke-static {p0, v1, v5, v7}, Landroidx/fragment/app/w;->h(Landroidx/fragment/app/D;Lr/a;Ljava/lang/Object;Landroidx/fragment/app/w$h;)Lr/a;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lr/g;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lr/g;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lr/g;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lr/a;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-static {v2, v12, v14}, Landroidx/fragment/app/w;->a(Ljava/util/ArrayList;Lr/a;Ljava/util/Collection;)V

    invoke-virtual/range {p3 .. p3}, Lr/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v3, v13, v1}, Landroidx/fragment/app/w;->a(Ljava/util/ArrayList;Lr/a;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLr/a;Z)V

    if-eqz v14, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v14, v0, v2}, Landroidx/fragment/app/D;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v4, v7, Landroidx/fragment/app/w$h;->e:Z

    iget-object v5, v7, Landroidx/fragment/app/w$h;->f:Landroidx/fragment/app/a;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/w;->z(Landroidx/fragment/app/D;Ljava/lang/Object;Ljava/lang/Object;Lr/a;ZLandroidx/fragment/app/a;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/w;->s(Lr/a;Landroidx/fragment/app/w$h;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v8, v0}, Landroidx/fragment/app/D;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    :goto_2
    new-instance v8, Landroidx/fragment/app/w$e;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/w$e;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLr/a;Landroid/view/View;Landroidx/fragment/app/D;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, LI/w;->a(Landroid/view/View;Ljava/lang/Runnable;)LI/w;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method private static n(Landroidx/fragment/app/m;ILandroidx/fragment/app/w$h;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$g;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    iget-object v1, v0, Landroidx/fragment/app/m;->p:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/m;->p:Landroidx/fragment/app/f;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v14, v0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-nez v14, :cond_1

    return-void

    :cond_1
    iget-object v15, v9, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    iget-object v8, v9, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v8, v15}, Landroidx/fragment/app/w;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/D;

    move-result-object v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-boolean v0, v9, Landroidx/fragment/app/w$h;->b:Z

    iget-boolean v1, v9, Landroidx/fragment/app/w$h;->e:Z

    invoke-static {v7, v15, v0}, Landroidx/fragment/app/w;->q(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v8, v1}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, p3

    move-object/from16 p0, v3

    move-object/from16 v3, p4

    move-object/from16 p1, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    move-object v13, v7

    move-object/from16 v7, v17

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/w;->l(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v17

    if-nez v8, :cond_4

    if-nez v6, :cond_4

    move-object/from16 v0, v16

    if-nez v0, :cond_3

    return-void

    :cond_3
    :goto_1
    move-object/from16 v7, p1

    goto :goto_2

    :cond_4
    move-object/from16 v0, v16

    goto :goto_1

    :goto_2
    invoke-static {v13, v0, v11, v7, v10}, Landroidx/fragment/app/w;->k(Landroidx/fragment/app/D;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v18, v0

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v18, 0x0

    :goto_4
    invoke-virtual {v13, v8, v10}, Landroidx/fragment/app/D;->a(Ljava/lang/Object;Landroid/view/View;)V

    iget-boolean v5, v9, Landroidx/fragment/app/w$h;->b:Z

    move-object v0, v13

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v15

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/w;->u(Landroidx/fragment/app/D;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v11, :cond_8

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_7
    new-instance v0, LE/a;

    invoke-direct {v0}, LE/a;-><init>()V

    invoke-interface {v12, v11, v0}, Landroidx/fragment/app/w$g;->a(Landroidx/fragment/app/Fragment;LE/a;)V

    new-instance v1, Landroidx/fragment/app/w$c;

    invoke-direct {v1, v12, v11, v0}, Landroidx/fragment/app/w$c;-><init>(Landroidx/fragment/app/w$g;Landroidx/fragment/app/Fragment;LE/a;)V

    invoke-virtual {v13, v11, v9, v0, v1}, Landroidx/fragment/app/D;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;LE/a;Ljava/lang/Runnable;)V

    :cond_8
    if-eqz v9, :cond_9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v13

    move-object v1, v9

    move-object v2, v8

    move-object v3, v11

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/D;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object v5, v8

    move-object v6, v11

    move-object/from16 v7, v18

    move-object/from16 v8, v16

    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    invoke-virtual {v13, v14, v1, v0}, Landroidx/fragment/app/D;->x(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-virtual {v13, v14, v9}, Landroidx/fragment/app/D;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v13, v14, v1, v0}, Landroidx/fragment/app/D;->s(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method private static o(Landroidx/fragment/app/m;ILandroidx/fragment/app/w$h;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$g;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    iget-object v1, v0, Landroidx/fragment/app/m;->p:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/m;->p:Landroidx/fragment/app/f;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez v11, :cond_1

    return-void

    :cond_1
    iget-object v12, v4, Landroidx/fragment/app/w$h;->a:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/w$h;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v13, v12}, Landroidx/fragment/app/w;->j(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/D;

    move-result-object v14

    if-nez v14, :cond_2

    return-void

    :cond_2
    iget-boolean v15, v4, Landroidx/fragment/app/w$h;->b:Z

    iget-boolean v0, v4, Landroidx/fragment/app/w$h;->e:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14, v12, v15}, Landroidx/fragment/app/w;->q(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v14, v13, v0}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 p0, v5

    move-object v5, v7

    move-object/from16 p1, v6

    move-object v6, v8

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v7, p1

    move-object v10, v8

    move-object/from16 v8, p0

    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/w;->m(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, p1

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    move-object/from16 v7, p0

    if-nez v7, :cond_4

    return-void

    :cond_3
    move-object/from16 v7, p0

    :cond_4
    invoke-static {v14, v7, v13, v11, v9}, Landroidx/fragment/app/w;->k(Landroidx/fragment/app/D;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v14, v6, v12, v10, v9}, Landroidx/fragment/app/w;->k(Landroidx/fragment/app/D;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    invoke-static {v9, v0}, Landroidx/fragment/app/w;->A(Ljava/util/ArrayList;I)V

    move-object v0, v14

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    move-object v12, v5

    move v5, v15

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/w;->u(Landroidx/fragment/app/D;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    if-eqz v13, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    :cond_5
    new-instance v0, LE/a;

    invoke-direct {v0}, LE/a;-><init>()V

    move-object/from16 v1, p5

    invoke-interface {v1, v13, v0}, Landroidx/fragment/app/w$g;->a(Landroidx/fragment/app/Fragment;LE/a;)V

    new-instance v2, Landroidx/fragment/app/w$a;

    invoke-direct {v2, v1, v13, v0}, Landroidx/fragment/app/w$a;-><init>(Landroidx/fragment/app/w$g;Landroidx/fragment/app/Fragment;LE/a;)V

    invoke-virtual {v14, v13, v15, v0, v2}, Landroidx/fragment/app/D;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;LE/a;Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v15, :cond_7

    invoke-static {v14, v7, v13, v12}, Landroidx/fragment/app/w;->v(Landroidx/fragment/app/D;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v10}, Landroidx/fragment/app/D;->o(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v14

    move-object v1, v15

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v12

    move-object v6, v8

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/D;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroidx/fragment/app/D;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v1, v14

    move-object v2, v0

    move-object v3, v11

    move-object v4, v10

    move-object v5, v13

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/D;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroidx/fragment/app/w;->A(Ljava/util/ArrayList;I)V

    invoke-virtual {v14, v8, v11, v10}, Landroidx/fragment/app/D;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method private static p(Landroidx/fragment/app/w$h;Landroid/util/SparseArray;I)Landroidx/fragment/app/w$h;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/fragment/app/w$h;

    invoke-direct {p0}, Landroidx/fragment/app/w$h;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static q(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->v()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/D;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static r(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->J()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->x()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/D;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static s(Lr/a;Landroidx/fragment/app/w$h;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    iget-object p1, p1, Landroidx/fragment/app/w$h;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/v;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static t(Landroidx/fragment/app/D;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->L()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/D;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/D;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static u(Landroidx/fragment/app/D;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->p()Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->o()Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/D;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/D;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static v(Landroidx/fragment/app/D;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->o1(Z)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->P()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/D;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object p0, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    new-instance p1, Landroidx/fragment/app/w$b;

    invoke-direct {p1, p3}, Landroidx/fragment/app/w$b;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, LI/w;->a(Landroid/view/View;Ljava/lang/Runnable;)LI/w;

    :cond_0
    return-void
.end method

.method private static w()Landroidx/fragment/app/D;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/D;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static x(Lr/a;Lr/a;)V
    .locals 2

    invoke-virtual {p0}, Lr/g;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lr/g;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lr/g;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lr/g;->j(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static y(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10

    new-instance v9, Landroidx/fragment/app/w$d;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/w$d;-><init>(Ljava/lang/Object;Landroidx/fragment/app/D;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, LI/w;->a(Landroid/view/View;Ljava/lang/Runnable;)LI/w;

    return-void
.end method

.method private static z(Landroidx/fragment/app/D;Ljava/lang/Object;Ljava/lang/Object;Lr/a;ZLandroidx/fragment/app/a;)V
    .locals 1

    iget-object v0, p5, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, Landroidx/fragment/app/v;->q:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/v;->p:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, p4}, Lr/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/D;->v(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/D;->v(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method
