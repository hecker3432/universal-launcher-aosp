.class Landroidx/constraintlayout/widget/ConstraintLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private d(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_2

    const/high16 p1, -0x80000000

    if-eq v1, p1, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p3, p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/c;

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/c;->h(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lv/e;Lw/b$a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lv/e;->Q()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lv/e;->a0()Z

    move-result v3

    if-nez v3, :cond_1

    iput v5, v2, Lw/b$a;->e:I

    iput v5, v2, Lw/b$a;->f:I

    iput v5, v2, Lw/b$a;->g:I

    return-void

    :cond_1
    iget-object v3, v2, Lw/b$a;->a:Lv/e$b;

    iget-object v4, v2, Lw/b$a;->b:Lv/e$b;

    iget v6, v2, Lw/b$a;->c:I

    iget v7, v2, Lw/b$a;->d:I

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    add-int/2addr v8, v9

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    invoke-virtual/range {p1 .. p1}, Lv/e;->q()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v13, 0x4

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-eq v12, v14, :cond_a

    if-eq v12, v5, :cond_9

    if-eq v12, v15, :cond_8

    if-eq v12, v13, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, Lv/e;->q:I

    if-ne v9, v14, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v1, Lv/e;->h:[I

    const/16 v16, 0x0

    aput v16, v12, v5

    iget-boolean v13, v2, Lw/b$a;->j:Z

    if-eqz v13, :cond_7

    if-eqz v9, :cond_5

    aget v13, v12, v15

    if-eqz v13, :cond_5

    aget v12, v12, v16

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    :cond_7
    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    invoke-virtual/range {p1 .. p1}, Lv/e;->z()I

    move-result v12

    add-int/2addr v9, v12

    const/4 v12, -0x1

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget-object v9, v1, Lv/e;->h:[I

    aput v12, v9, v5

    goto :goto_0

    :cond_9
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget-object v9, v1, Lv/e;->h:[I

    aput v12, v9, v5

    goto :goto_4

    :cond_a
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget-object v9, v1, Lv/e;->h:[I

    aput v6, v9, v5

    move v6, v12

    goto :goto_0

    :goto_5
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v14, :cond_13

    if-eq v11, v5, :cond_12

    if-eq v11, v15, :cond_11

    const/4 v7, 0x4

    if-eq v11, v7, :cond_b

    const/4 v7, 0x0

    :goto_6
    const/4 v8, 0x0

    goto :goto_b

    :cond_b
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget v8, v1, Lv/e;->r:I

    if-ne v8, v14, :cond_c

    const/4 v8, 0x1

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    :goto_7
    iget-object v11, v1, Lv/e;->h:[I

    const/4 v12, 0x0

    aput v12, v11, v15

    iget-boolean v12, v2, Lw/b$a;->j:Z

    if-eqz v12, :cond_10

    if-eqz v8, :cond_e

    aget v12, v11, v5

    if-eqz v12, :cond_e

    aget v11, v11, v14

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v12

    if-ne v11, v12, :cond_d

    goto :goto_8

    :cond_d
    const/4 v11, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v11, 0x0

    :goto_9
    if-eqz v8, :cond_f

    if-eqz v11, :cond_10

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_6

    :cond_10
    :goto_a
    const/4 v8, 0x1

    goto :goto_b

    :cond_11
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    invoke-virtual/range {p1 .. p1}, Lv/e;->P()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget-object v8, v1, Lv/e;->h:[I

    aput v11, v8, v15

    goto :goto_6

    :cond_12
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    const/4 v11, -0x2

    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    iget-object v8, v1, Lv/e;->h:[I

    aput v11, v8, v15

    goto :goto_a

    :cond_13
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget-object v8, v1, Lv/e;->h:[I

    aput v7, v8, v15

    move v7, v11

    goto :goto_6

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lv/e;->I()Lv/e;

    move-result-object v11

    check-cast v11, Lv/f;

    if-eqz v11, :cond_14

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v12

    const/16 v13, 0x100

    invoke-static {v12, v13}, Lv/j;->b(II)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v13

    if-ne v12, v13, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v11}, Lv/e;->R()I

    move-result v13

    if-ge v12, v13, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v13

    if-ne v12, v13, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v11}, Lv/e;->v()I

    move-result v11

    if-ge v12, v11, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lv/e;->n()I

    move-result v12

    if-ne v11, v12, :cond_14

    invoke-virtual/range {p1 .. p1}, Lv/e;->d0()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual/range {p1 .. p1}, Lv/e;->A()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v12

    invoke-direct {v0, v11, v6, v12}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual/range {p1 .. p1}, Lv/e;->B()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v12

    invoke-direct {v0, v11, v7, v12}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d(III)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual/range {p1 .. p1}, Lv/e;->R()I

    move-result v3

    iput v3, v2, Lw/b$a;->e:I

    invoke-virtual/range {p1 .. p1}, Lv/e;->v()I

    move-result v3

    iput v3, v2, Lw/b$a;->f:I

    invoke-virtual/range {p1 .. p1}, Lv/e;->n()I

    move-result v1

    iput v1, v2, Lw/b$a;->g:I

    return-void

    :cond_14
    sget-object v11, Lv/e$b;->c:Lv/e$b;

    if-ne v3, v11, :cond_15

    const/4 v12, 0x1

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    :goto_c
    if-ne v4, v11, :cond_16

    const/4 v11, 0x1

    goto :goto_d

    :cond_16
    const/4 v11, 0x0

    :goto_d
    sget-object v13, Lv/e$b;->d:Lv/e$b;

    if-eq v4, v13, :cond_18

    sget-object v15, Lv/e$b;->a:Lv/e$b;

    if-ne v4, v15, :cond_17

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v4, 0x1

    :goto_f
    if-eq v3, v13, :cond_1a

    sget-object v13, Lv/e$b;->a:Lv/e$b;

    if-ne v3, v13, :cond_19

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v3, 0x1

    :goto_11
    const/4 v13, 0x0

    if-eqz v12, :cond_1b

    iget v15, v1, Lv/e;->X:F

    cmpl-float v15, v15, v13

    if-lez v15, :cond_1b

    const/4 v15, 0x1

    goto :goto_12

    :cond_1b
    const/4 v15, 0x0

    :goto_12
    if-eqz v11, :cond_1c

    iget v14, v1, Lv/e;->X:F

    cmpl-float v13, v14, v13

    if-lez v13, :cond_1c

    const/4 v13, 0x1

    goto :goto_13

    :cond_1c
    const/4 v13, 0x0

    :goto_13
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-boolean v5, v2, Lw/b$a;->j:Z

    if-nez v5, :cond_1e

    if-eqz v12, :cond_1e

    iget v5, v1, Lv/e;->q:I

    if-nez v5, :cond_1e

    if-eqz v11, :cond_1e

    iget v5, v1, Lv/e;->r:I

    if-eqz v5, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v16, 0x0

    goto/16 :goto_1d

    :cond_1e
    :goto_14
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1, v6, v7}, Lv/e;->E0(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    if-eqz v9, :cond_1f

    iget-object v9, v1, Lv/e;->h:[I

    const/16 v16, 0x0

    aput v5, v9, v16

    const/16 v18, 0x2

    aput v11, v9, v18

    goto :goto_15

    :cond_1f
    const/16 v16, 0x0

    const/16 v18, 0x2

    iget-object v9, v1, Lv/e;->h:[I

    aput v16, v9, v16

    aput v16, v9, v18

    :goto_15
    if-eqz v8, :cond_20

    iget-object v8, v1, Lv/e;->h:[I

    const/4 v9, 0x1

    aput v11, v8, v9

    const/16 v17, 0x3

    aput v5, v8, v17

    goto :goto_16

    :cond_20
    const/4 v9, 0x1

    const/16 v17, 0x3

    iget-object v8, v1, Lv/e;->h:[I

    aput v16, v8, v9

    aput v16, v8, v17

    :goto_16
    iget v8, v1, Lv/e;->t:I

    if-lez v8, :cond_21

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_17

    :cond_21
    move v8, v5

    :goto_17
    iget v9, v1, Lv/e;->u:I

    if-lez v9, :cond_22

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_22
    iget v9, v1, Lv/e;->w:I

    if-lez v9, :cond_23

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v17, v6

    goto :goto_18

    :cond_23
    move/from16 v17, v6

    move v9, v11

    :goto_18
    iget v6, v1, Lv/e;->x:I

    if-lez v6, :cond_24

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_24
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lv/j;->b(II)Z

    move-result v6

    if-nez v6, :cond_26

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v15, :cond_25

    if-eqz v4, :cond_25

    iget v3, v1, Lv/e;->X:F

    int-to-float v4, v9

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v8, v0

    goto :goto_19

    :cond_25
    if-eqz v13, :cond_26

    if-eqz v3, :cond_26

    iget v3, v1, Lv/e;->X:F

    int-to-float v4, v8

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_26
    :goto_19
    if-ne v5, v8, :cond_28

    if-eq v11, v9, :cond_27

    goto :goto_1b

    :cond_27
    move v0, v8

    move v3, v9

    move v4, v12

    :goto_1a
    const/4 v5, -0x1

    goto :goto_1d

    :cond_28
    :goto_1b
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_29

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1c

    :cond_29
    move/from16 v6, v17

    :goto_1c
    if-eq v11, v9, :cond_2a

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :cond_2a
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1, v6, v7}, Lv/e;->E0(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    goto :goto_1a

    :goto_1d
    if-eq v4, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_1e

    :cond_2b
    const/4 v5, 0x0

    :goto_1e
    iget v6, v2, Lw/b$a;->c:I

    if-ne v0, v6, :cond_2d

    iget v6, v2, Lw/b$a;->d:I

    if-eq v3, v6, :cond_2c

    goto :goto_1f

    :cond_2c
    const/4 v6, 0x0

    goto :goto_20

    :cond_2d
    :goto_1f
    const/4 v6, 0x1

    :goto_20
    iput-boolean v6, v2, Lw/b$a;->i:Z

    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z

    if-eqz v6, :cond_2e

    const/4 v9, 0x1

    goto :goto_21

    :cond_2e
    move v9, v5

    :goto_21
    if-eqz v9, :cond_2f

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lv/e;->n()I

    move-result v1

    if-eq v1, v4, :cond_2f

    const/4 v1, 0x1

    iput-boolean v1, v2, Lw/b$a;->i:Z

    :cond_2f
    iput v0, v2, Lw/b$a;->e:I

    iput v3, v2, Lw/b$a;->f:I

    iput-boolean v9, v2, Lw/b$a;->h:Z

    iput v4, v2, Lw/b$a;->g:I

    return-void
.end method

.method public c(IIIIII)V
    .locals 0

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    return-void
.end method
