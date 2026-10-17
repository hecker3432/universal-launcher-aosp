.class public Lv/f;
.super Lv/k;
.source "SourceFile"


# instance fields
.field F0:Lw/b;

.field public G0:Lw/e;

.field protected H0:Lw/b$b;

.field private I0:Z

.field protected J0:Lu/d;

.field K0:I

.field L0:I

.field M0:I

.field N0:I

.field public O0:I

.field public P0:I

.field Q0:[Lv/c;

.field R0:[Lv/c;

.field public S0:Z

.field public T0:Z

.field public U0:Z

.field public V0:I

.field public W0:I

.field private X0:I

.field public Y0:Z

.field private Z0:Z

.field private a1:Z

.field b1:I

.field private c1:Ljava/lang/ref/WeakReference;

.field private d1:Ljava/lang/ref/WeakReference;

.field private e1:Ljava/lang/ref/WeakReference;

.field private f1:Ljava/lang/ref/WeakReference;

.field public g1:Lw/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lv/k;-><init>()V

    new-instance v0, Lw/b;

    invoke-direct {v0, p0}, Lw/b;-><init>(Lv/f;)V

    iput-object v0, p0, Lv/f;->F0:Lw/b;

    new-instance v0, Lw/e;

    invoke-direct {v0, p0}, Lw/e;-><init>(Lv/f;)V

    iput-object v0, p0, Lv/f;->G0:Lw/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lv/f;->H0:Lw/b$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lv/f;->I0:Z

    new-instance v2, Lu/d;

    invoke-direct {v2}, Lu/d;-><init>()V

    iput-object v2, p0, Lv/f;->J0:Lu/d;

    iput v1, p0, Lv/f;->O0:I

    iput v1, p0, Lv/f;->P0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lv/c;

    iput-object v3, p0, Lv/f;->Q0:[Lv/c;

    new-array v2, v2, [Lv/c;

    iput-object v2, p0, Lv/f;->R0:[Lv/c;

    iput-boolean v1, p0, Lv/f;->S0:Z

    iput-boolean v1, p0, Lv/f;->T0:Z

    iput-boolean v1, p0, Lv/f;->U0:Z

    iput v1, p0, Lv/f;->V0:I

    iput v1, p0, Lv/f;->W0:I

    const/16 v2, 0x101

    iput v2, p0, Lv/f;->X0:I

    iput-boolean v1, p0, Lv/f;->Y0:Z

    iput-boolean v1, p0, Lv/f;->Z0:Z

    iput-boolean v1, p0, Lv/f;->a1:Z

    iput v1, p0, Lv/f;->b1:I

    iput-object v0, p0, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    iput-object v0, p0, Lv/f;->g1:Lw/b$a;

    return-void
.end method

.method private B1()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv/f;->O0:I

    iput v0, p0, Lv/f;->P0:I

    return-void
.end method

.method private f1(Lv/e;)V
    .locals 5

    iget v0, p0, Lv/f;->O0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lv/f;->R0:[Lv/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv/c;

    iput-object v0, p0, Lv/f;->R0:[Lv/c;

    :cond_0
    iget-object v0, p0, Lv/f;->R0:[Lv/c;

    iget v1, p0, Lv/f;->O0:I

    new-instance v2, Lv/c;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lv/f;->w1()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lv/c;-><init>(Lv/e;IZ)V

    aput-object v2, v0, v1

    iget p1, p0, Lv/f;->O0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv/f;->O0:I

    return-void
.end method

.method private i1(Lv/d;Lu/i;)V
    .locals 3

    iget-object v0, p0, Lv/f;->J0:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object p1

    iget-object v0, p0, Lv/f;->J0:Lu/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p2, p1, v1, v2}, Lu/d;->h(Lu/i;Lu/i;II)V

    return-void
.end method

.method private j1(Lv/d;Lu/i;)V
    .locals 3

    iget-object v0, p0, Lv/f;->J0:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object p1

    iget-object v0, p0, Lv/f;->J0:Lu/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, p2, v1, v2}, Lu/d;->h(Lu/i;Lu/i;II)V

    return-void
.end method

.method private k1(Lv/e;)V
    .locals 5

    iget v0, p0, Lv/f;->P0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lv/f;->Q0:[Lv/c;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv/c;

    iput-object v0, p0, Lv/f;->Q0:[Lv/c;

    :cond_0
    iget-object v0, p0, Lv/f;->Q0:[Lv/c;

    iget v2, p0, Lv/f;->P0:I

    new-instance v3, Lv/c;

    invoke-virtual {p0}, Lv/f;->w1()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lv/c;-><init>(Lv/e;IZ)V

    aput-object v3, v0, v2

    iget p1, p0, Lv/f;->P0:I

    add-int/2addr p1, v1

    iput p1, p0, Lv/f;->P0:I

    return-void
.end method

.method public static z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lv/e;->y()Lv/e$b;

    move-result-object v1

    iput-object v1, p2, Lw/b$a;->a:Lv/e$b;

    invoke-virtual {p0}, Lv/e;->O()Lv/e$b;

    move-result-object v1

    iput-object v1, p2, Lw/b$a;->b:Lv/e$b;

    invoke-virtual {p0}, Lv/e;->R()I

    move-result v1

    iput v1, p2, Lw/b$a;->c:I

    invoke-virtual {p0}, Lv/e;->v()I

    move-result v1

    iput v1, p2, Lw/b$a;->d:I

    iput-boolean v0, p2, Lw/b$a;->i:Z

    iput-boolean p3, p2, Lw/b$a;->j:Z

    iget-object p3, p2, Lw/b$a;->a:Lv/e$b;

    sget-object v1, Lv/e$b;->c:Lv/e$b;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-object v3, p2, Lw/b$a;->b:Lv/e$b;

    if-ne v3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    iget v4, p0, Lv/e;->X:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v5, p0, Lv/e;->X:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz p3, :cond_6

    invoke-virtual {p0, v0}, Lv/e;->V(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lv/e;->q:I

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    sget-object p3, Lv/e$b;->b:Lv/e$b;

    iput-object p3, p2, Lw/b$a;->a:Lv/e$b;

    if-eqz v1, :cond_5

    iget p3, p0, Lv/e;->r:I

    if-nez p3, :cond_5

    sget-object p3, Lv/e$b;->a:Lv/e$b;

    iput-object p3, p2, Lw/b$a;->a:Lv/e$b;

    :cond_5
    const/4 p3, 0x0

    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {p0, v2}, Lv/e;->V(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Lv/e;->r:I

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    sget-object v1, Lv/e$b;->b:Lv/e$b;

    iput-object v1, p2, Lw/b$a;->b:Lv/e$b;

    if-eqz p3, :cond_7

    iget v1, p0, Lv/e;->q:I

    if-nez v1, :cond_7

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    iput-object v1, p2, Lw/b$a;->b:Lv/e$b;

    :cond_7
    const/4 v1, 0x0

    :cond_8
    invoke-virtual {p0}, Lv/e;->e0()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object p3, Lv/e$b;->a:Lv/e$b;

    iput-object p3, p2, Lw/b$a;->a:Lv/e$b;

    const/4 p3, 0x0

    :cond_9
    invoke-virtual {p0}, Lv/e;->f0()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    iput-object v1, p2, Lw/b$a;->b:Lv/e$b;

    const/4 v1, 0x0

    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lv/e;->s:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_b

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    iput-object v1, p2, Lw/b$a;->a:Lv/e$b;

    goto :goto_6

    :cond_b
    if-nez v1, :cond_f

    iget-object v1, p2, Lw/b$a;->b:Lv/e$b;

    sget-object v4, Lv/e$b;->a:Lv/e$b;

    if-ne v1, v4, :cond_c

    iget v1, p2, Lw/b$a;->d:I

    goto :goto_4

    :cond_c
    sget-object v1, Lv/e$b;->b:Lv/e$b;

    iput-object v1, p2, Lw/b$a;->a:Lv/e$b;

    invoke-interface {p1, p0, p2}, Lw/b$b;->b(Lv/e;Lw/b$a;)V

    iget v1, p2, Lw/b$a;->f:I

    :goto_4
    iput-object v4, p2, Lw/b$a;->a:Lv/e$b;

    iget v4, p0, Lv/e;->Y:I

    if-eqz v4, :cond_e

    if-ne v4, v5, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lv/e;->t()F

    move-result v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, p2, Lw/b$a;->c:I

    goto :goto_6

    :cond_e
    :goto_5
    invoke-virtual {p0}, Lv/e;->t()F

    move-result v4

    int-to-float v1, v1

    mul-float v4, v4, v1

    float-to-int v1, v4

    iput v1, p2, Lw/b$a;->c:I

    :cond_f
    :goto_6
    if-eqz v3, :cond_14

    iget-object v1, p0, Lv/e;->s:[I

    aget v1, v1, v2

    if-ne v1, v6, :cond_10

    sget-object p3, Lv/e$b;->a:Lv/e$b;

    iput-object p3, p2, Lw/b$a;->b:Lv/e$b;

    goto :goto_9

    :cond_10
    if-nez p3, :cond_14

    iget-object p3, p2, Lw/b$a;->a:Lv/e$b;

    sget-object v1, Lv/e$b;->a:Lv/e$b;

    if-ne p3, v1, :cond_11

    iget p3, p2, Lw/b$a;->c:I

    goto :goto_7

    :cond_11
    sget-object p3, Lv/e$b;->b:Lv/e$b;

    iput-object p3, p2, Lw/b$a;->b:Lv/e$b;

    invoke-interface {p1, p0, p2}, Lw/b$b;->b(Lv/e;Lw/b$a;)V

    iget p3, p2, Lw/b$a;->e:I

    :goto_7
    iput-object v1, p2, Lw/b$a;->b:Lv/e$b;

    iget v1, p0, Lv/e;->Y:I

    if-eqz v1, :cond_13

    if-ne v1, v5, :cond_12

    goto :goto_8

    :cond_12
    int-to-float p3, p3

    invoke-virtual {p0}, Lv/e;->t()F

    move-result v1

    mul-float p3, p3, v1

    float-to-int p3, p3

    iput p3, p2, Lw/b$a;->d:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float p3, p3

    invoke-virtual {p0}, Lv/e;->t()F

    move-result v1

    div-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p2, Lw/b$a;->d:I

    :cond_14
    :goto_9
    invoke-interface {p1, p0, p2}, Lw/b$b;->b(Lv/e;Lw/b$a;)V

    iget p1, p2, Lw/b$a;->e:I

    invoke-virtual {p0, p1}, Lv/e;->T0(I)V

    iget p1, p2, Lw/b$a;->f:I

    invoke-virtual {p0, p1}, Lv/e;->v0(I)V

    iget-boolean p1, p2, Lw/b$a;->h:Z

    invoke-virtual {p0, p1}, Lv/e;->u0(Z)V

    iget p1, p2, Lw/b$a;->g:I

    invoke-virtual {p0, p1}, Lv/e;->k0(I)V

    iput-boolean v0, p2, Lw/b$a;->j:Z

    iget-boolean p0, p2, Lw/b$a;->i:Z

    return p0
.end method


# virtual methods
.method public A1(I)Z
    .locals 1

    iget v0, p0, Lv/f;->X0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C1(Lw/b$b;)V
    .locals 1

    iput-object p1, p0, Lv/f;->H0:Lw/b$b;

    iget-object v0, p0, Lv/f;->G0:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->n(Lw/b$b;)V

    return-void
.end method

.method public D1(I)V
    .locals 0

    iput p1, p0, Lv/f;->X0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lv/f;->A1(I)Z

    move-result p1

    sput-boolean p1, Lu/d;->r:Z

    return-void
.end method

.method public E1(Z)V
    .locals 0

    iput-boolean p1, p0, Lv/f;->I0:Z

    return-void
.end method

.method public F1(Lu/d;[Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p2, v0

    const/16 p2, 0x40

    invoke-virtual {p0, p2}, Lv/f;->A1(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lv/e;->Y0(Lu/d;Z)V

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/e;

    invoke-virtual {v2, p1, p2}, Lv/e;->Y0(Lu/d;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G1()V
    .locals 1

    iget-object v0, p0, Lv/f;->F0:Lw/b;

    invoke-virtual {v0, p0}, Lw/b;->e(Lv/f;)V

    return-void
.end method

.method public X0(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lv/e;->X0(ZZ)V

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/e;

    invoke-virtual {v2, p1, p2}, Lv/e;->X0(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a1()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Lv/e;->Z:I

    iput v2, v1, Lv/e;->a0:I

    iput-boolean v2, v1, Lv/f;->Z0:Z

    iput-boolean v2, v1, Lv/f;->a1:Z

    iget-object v0, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Lv/e;->T:[Lv/e$b;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v5, v5, v2

    iget v8, v1, Lv/f;->X0:I

    invoke-static {v8, v6}, Lv/j;->b(II)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lv/f;->q1()Lw/b$b;

    move-result-object v8

    invoke-static {v1, v8}, Lw/h;->h(Lv/f;Lw/b$b;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_2

    iget-object v9, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv/e;

    invoke-virtual {v9}, Lv/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_1

    instance-of v10, v9, Lv/g;

    if-nez v10, :cond_1

    instance-of v10, v9, Lv/a;

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lv/e;->c0()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9, v2}, Lv/e;->s(I)Lv/e$b;

    move-result-object v10

    invoke-virtual {v9, v6}, Lv/e;->s(I)Lv/e$b;

    move-result-object v11

    sget-object v12, Lv/e$b;->c:Lv/e$b;

    if-ne v10, v12, :cond_0

    iget v10, v9, Lv/e;->q:I

    if-eq v10, v6, :cond_0

    if-ne v11, v12, :cond_0

    iget v10, v9, Lv/e;->r:I

    if-eq v10, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v10, Lw/b$a;

    invoke-direct {v10}, Lw/b$a;-><init>()V

    iget-object v11, v1, Lv/f;->H0:Lw/b$b;

    invoke-static {v9, v11, v10, v2}, Lv/f;->z1(Lv/e;Lw/b$b;Lw/b$a;Z)Z

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    if-le v3, v8, :cond_8

    sget-object v9, Lv/e$b;->b:Lv/e$b;

    if-eq v5, v9, :cond_3

    if-ne v7, v9, :cond_8

    :cond_3
    iget v10, v1, Lv/f;->X0:I

    const/16 v11, 0x400

    invoke-static {v10, v11}, Lv/j;->b(II)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lv/f;->q1()Lw/b$b;

    move-result-object v10

    invoke-static {v1, v10}, Lw/i;->c(Lv/f;Lw/b$b;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-ne v5, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v10

    if-ge v0, v10, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {v1, v0}, Lv/e;->T0(I)V

    iput-boolean v6, v1, Lv/f;->Z0:Z

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v0

    :cond_5
    :goto_2
    if-ne v7, v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v9

    if-ge v4, v9, :cond_6

    if-lez v4, :cond_6

    invoke-virtual {v1, v4}, Lv/e;->v0(I)V

    iput-boolean v6, v1, Lv/f;->a1:Z

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v4

    :cond_7
    :goto_3
    move v9, v4

    move v4, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    move v9, v4

    move v4, v0

    const/4 v0, 0x0

    :goto_4
    const/16 v10, 0x40

    invoke-virtual {v1, v10}, Lv/f;->A1(I)Z

    move-result v11

    if-nez v11, :cond_a

    const/16 v11, 0x80

    invoke-virtual {v1, v11}, Lv/f;->A1(I)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v11, 0x1

    :goto_6
    iget-object v12, v1, Lv/f;->J0:Lu/d;

    iput-boolean v2, v12, Lu/d;->h:Z

    iput-boolean v2, v12, Lu/d;->i:Z

    iget v13, v1, Lv/f;->X0:I

    if-eqz v13, :cond_b

    if-eqz v11, :cond_b

    iput-boolean v6, v12, Lu/d;->i:Z

    :cond_b
    iget-object v11, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lv/e;->y()Lv/e$b;

    move-result-object v12

    sget-object v13, Lv/e$b;->b:Lv/e$b;

    if-eq v12, v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lv/e;->O()Lv/e$b;

    move-result-object v12

    if-ne v12, v13, :cond_c

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v12, 0x1

    :goto_8
    invoke-direct/range {p0 .. p0}, Lv/f;->B1()V

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v3, :cond_f

    iget-object v14, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/e;

    instance-of v15, v14, Lv/k;

    if-eqz v15, :cond_e

    check-cast v14, Lv/k;

    invoke-virtual {v14}, Lv/k;->a1()V

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {v1, v10}, Lv/f;->A1(I)Z

    move-result v10

    move v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_a
    if-eqz v14, :cond_20

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v0}, Lu/d;->D()V

    invoke-direct/range {p0 .. p0}, Lv/f;->B1()V

    iget-object v0, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v1, v0}, Lv/e;->k(Lu/d;)V

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_10

    iget-object v6, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/e;

    iget-object v2, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v6, v2}, Lv/e;->k(Lu/d;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_10
    iget-object v0, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v1, v0}, Lv/f;->e1(Lu/d;)Z

    move-result v14

    iget-object v0, v1, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v6, v1, Lv/f;->J0:Lu/d;

    iget-object v8, v1, Lv/e;->J:Lv/d;

    invoke-virtual {v6, v8}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lv/f;->j1(Lv/d;Lu/i;)V

    iput-object v2, v1, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    :cond_11
    iget-object v0, v1, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v6, v1, Lv/f;->J0:Lu/d;

    iget-object v8, v1, Lv/e;->L:Lv/d;

    invoke-virtual {v6, v8}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lv/f;->i1(Lv/d;Lu/i;)V

    iput-object v2, v1, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    :cond_12
    iget-object v0, v1, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v6, v1, Lv/f;->J0:Lu/d;

    iget-object v8, v1, Lv/e;->I:Lv/d;

    invoke-virtual {v6, v8}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lv/f;->j1(Lv/d;Lu/i;)V

    iput-object v2, v1, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    :cond_13
    iget-object v0, v1, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v6, v1, Lv/f;->J0:Lu/d;

    iget-object v8, v1, Lv/e;->K:Lv/d;

    invoke-virtual {v6, v8}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lv/f;->i1(Lv/d;Lu/i;)V

    iput-object v2, v1, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    :cond_14
    if-eqz v14, :cond_15

    iget-object v0, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v0}, Lu/d;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    :goto_d
    if-eqz v14, :cond_16

    iget-object v0, v1, Lv/f;->J0:Lu/d;

    sget-object v2, Lv/j;->a:[Z

    invoke-virtual {v1, v0, v2}, Lv/f;->F1(Lu/d;[Z)V

    goto :goto_f

    :cond_16
    iget-object v0, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v1, v0, v10}, Lv/e;->Y0(Lu/d;Z)V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_17

    iget-object v2, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/e;

    iget-object v6, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v2, v6, v10}, Lv/e;->Y0(Lu/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_17
    :goto_f
    if-eqz v12, :cond_1a

    const/16 v0, 0x8

    if-ge v15, v0, :cond_1a

    sget-object v0, Lv/j;->a:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_10
    if-ge v0, v3, :cond_18

    iget-object v14, v1, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/e;

    iget v2, v14, Lv/e;->Z:I

    invoke-virtual {v14}, Lv/e;->R()I

    move-result v16

    add-int v2, v2, v16

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v2, v14, Lv/e;->a0:I

    invoke-virtual {v14}, Lv/e;->v()I

    move-result v14

    add-int/2addr v2, v14

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    goto :goto_10

    :cond_18
    iget v0, v1, Lv/e;->g0:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Lv/e;->h0:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget-object v6, Lv/e$b;->b:Lv/e$b;

    if-ne v5, v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v8

    if-ge v8, v0, :cond_19

    invoke-virtual {v1, v0}, Lv/e;->T0(I)V

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    const/4 v8, 0x0

    aput-object v6, v0, v8

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    if-ne v7, v6, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v8

    if-ge v8, v2, :cond_1b

    invoke-virtual {v1, v2}, Lv/e;->v0(I)V

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    const/4 v2, 0x1

    aput-object v6, v0, v2

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    :goto_12
    iget v2, v1, Lv/e;->g0:I

    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v6

    if-le v2, v6, :cond_1c

    invoke-virtual {v1, v2}, Lv/e;->T0(I)V

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    sget-object v2, Lv/e$b;->a:Lv/e$b;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v13, 0x1

    :cond_1c
    iget v2, v1, Lv/e;->h0:I

    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v6

    if-le v2, v6, :cond_1d

    invoke-virtual {v1, v2}, Lv/e;->v0(I)V

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    sget-object v2, Lv/e$b;->a:Lv/e$b;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_13

    :cond_1d
    const/4 v6, 0x1

    move v2, v13

    :goto_13
    if-nez v2, :cond_1f

    iget-object v8, v1, Lv/e;->T:[Lv/e$b;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    sget-object v14, Lv/e$b;->b:Lv/e$b;

    if-ne v8, v14, :cond_1e

    if-lez v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lv/e;->R()I

    move-result v8

    if-le v8, v4, :cond_1e

    iput-boolean v6, v1, Lv/f;->Z0:Z

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    sget-object v2, Lv/e$b;->a:Lv/e$b;

    aput-object v2, v0, v13

    invoke-virtual {v1, v4}, Lv/e;->T0(I)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_1e
    iget-object v8, v1, Lv/e;->T:[Lv/e$b;

    aget-object v8, v8, v6

    if-ne v8, v14, :cond_1f

    if-lez v9, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lv/e;->v()I

    move-result v8

    if-le v8, v9, :cond_1f

    iput-boolean v6, v1, Lv/f;->a1:Z

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    sget-object v2, Lv/e$b;->a:Lv/e$b;

    aput-object v2, v0, v6

    invoke-virtual {v1, v9}, Lv/e;->v0(I)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_14

    :cond_1f
    move v14, v0

    move v13, v2

    :goto_14
    move v0, v15

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_a

    :cond_20
    iput-object v11, v1, Lv/k;->E0:Ljava/util/ArrayList;

    if-eqz v13, :cond_21

    iget-object v0, v1, Lv/e;->T:[Lv/e$b;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const/4 v2, 0x1

    aput-object v7, v0, v2

    :cond_21
    iget-object v0, v1, Lv/f;->J0:Lu/d;

    invoke-virtual {v0}, Lu/d;->v()Lu/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv/k;->j0(Lu/c;)V

    return-void
.end method

.method d1(Lv/e;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lv/f;->f1(Lv/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lv/f;->k1(Lv/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e1(Lu/d;)Z
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lv/f;->A1(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lv/e;->g(Lu/d;Z)V

    iget-object v1, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/e;

    invoke-virtual {v6, v2, v2}, Lv/e;->C0(IZ)V

    invoke-virtual {v6, v5, v2}, Lv/e;->C0(IZ)V

    instance-of v6, v6, Lv/a;

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/e;

    instance-of v6, v4, Lv/a;

    if-eqz v6, :cond_2

    check-cast v4, Lv/a;

    invoke-virtual {v4}, Lv/a;->g1()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/e;

    invoke-virtual {v4}, Lv/e;->f()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, p1, v0}, Lv/e;->g(Lu/d;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-boolean v3, Lu/d;->r:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    iget-object v6, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/e;

    invoke-virtual {v6}, Lv/e;->f()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lv/e;->y()Lv/e$b;

    move-result-object v1

    sget-object v4, Lv/e$b;->b:Lv/e$b;

    if-ne v1, v4, :cond_8

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lv/e;->e(Lv/f;Lu/d;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/e;

    invoke-static {p0, p1, v3}, Lv/j;->a(Lv/f;Lu/d;Lv/e;)V

    invoke-virtual {v3, p1, v0}, Lv/e;->g(Lu/d;Z)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_f

    iget-object v4, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/e;

    instance-of v6, v4, Lv/f;

    if-eqz v6, :cond_d

    iget-object v6, v4, Lv/e;->T:[Lv/e$b;

    aget-object v7, v6, v2

    aget-object v6, v6, v5

    sget-object v8, Lv/e$b;->b:Lv/e$b;

    if-ne v7, v8, :cond_a

    sget-object v9, Lv/e$b;->a:Lv/e$b;

    invoke-virtual {v4, v9}, Lv/e;->z0(Lv/e$b;)V

    :cond_a
    if-ne v6, v8, :cond_b

    sget-object v9, Lv/e$b;->a:Lv/e$b;

    invoke-virtual {v4, v9}, Lv/e;->P0(Lv/e$b;)V

    :cond_b
    invoke-virtual {v4, p1, v0}, Lv/e;->g(Lu/d;Z)V

    if-ne v7, v8, :cond_c

    invoke-virtual {v4, v7}, Lv/e;->z0(Lv/e$b;)V

    :cond_c
    if-ne v6, v8, :cond_e

    invoke-virtual {v4, v6}, Lv/e;->P0(Lv/e$b;)V

    goto :goto_7

    :cond_d
    invoke-static {p0, p1, v4}, Lv/j;->a(Lv/f;Lu/d;Lv/e;)V

    invoke-virtual {v4}, Lv/e;->f()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v4, p1, v0}, Lv/e;->g(Lu/d;Z)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    iget v0, p0, Lv/f;->O0:I

    const/4 v1, 0x0

    if-lez v0, :cond_10

    invoke-static {p0, p1, v1, v2}, Lv/b;->b(Lv/f;Lu/d;Ljava/util/ArrayList;I)V

    :cond_10
    iget v0, p0, Lv/f;->P0:I

    if-lez v0, :cond_11

    invoke-static {p0, p1, v1, v5}, Lv/b;->b(Lv/f;Lu/d;Ljava/util/ArrayList;I)V

    :cond_11
    return v5
.end method

.method public g1(Lv/d;)V
    .locals 2

    iget-object v0, p0, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/d;->d()I

    move-result v0

    iget-object v1, p0, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv/f;->f1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public h0()V
    .locals 1

    iget-object v0, p0, Lv/f;->J0:Lu/d;

    invoke-virtual {v0}, Lu/d;->D()V

    const/4 v0, 0x0

    iput v0, p0, Lv/f;->K0:I

    iput v0, p0, Lv/f;->M0:I

    iput v0, p0, Lv/f;->L0:I

    iput v0, p0, Lv/f;->N0:I

    iput-boolean v0, p0, Lv/f;->Y0:Z

    invoke-super {p0}, Lv/k;->h0()V

    return-void
.end method

.method public h1(Lv/d;)V
    .locals 2

    iget-object v0, p0, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/d;->d()I

    move-result v0

    iget-object v1, p0, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv/f;->d1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method l1(Lv/d;)V
    .locals 2

    iget-object v0, p0, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/d;->d()I

    move-result v0

    iget-object v1, p0, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv/f;->e1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method m1(Lv/d;)V
    .locals 2

    iget-object v0, p0, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/d;->d()I

    move-result v0

    iget-object v1, p0, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/d;

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv/f;->c1:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public n1(Z)Z
    .locals 1

    iget-object v0, p0, Lv/f;->G0:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->f(Z)Z

    move-result p1

    return p1
.end method

.method public o1(Z)Z
    .locals 1

    iget-object v0, p0, Lv/f;->G0:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->g(Z)Z

    move-result p1

    return p1
.end method

.method public p1(ZI)Z
    .locals 1

    iget-object v0, p0, Lv/f;->G0:Lw/e;

    invoke-virtual {v0, p1, p2}, Lw/e;->h(ZI)Z

    move-result p1

    return p1
.end method

.method public q1()Lw/b$b;
    .locals 1

    iget-object v0, p0, Lv/f;->H0:Lw/b$b;

    return-object v0
.end method

.method public r1()I
    .locals 1

    iget v0, p0, Lv/f;->X0:I

    return v0
.end method

.method public s1()Lu/d;
    .locals 1

    iget-object v0, p0, Lv/f;->J0:Lu/d;

    return-object v0
.end method

.method public t1()V
    .locals 1

    iget-object v0, p0, Lv/f;->G0:Lw/e;

    invoke-virtual {v0}, Lw/e;->j()V

    return-void
.end method

.method public u1()V
    .locals 1

    iget-object v0, p0, Lv/f;->G0:Lw/e;

    invoke-virtual {v0}, Lw/e;->k()V

    return-void
.end method

.method public v1()Z
    .locals 1

    iget-boolean v0, p0, Lv/f;->a1:Z

    return v0
.end method

.method public w1()Z
    .locals 1

    iget-boolean v0, p0, Lv/f;->I0:Z

    return v0
.end method

.method public x1()Z
    .locals 1

    iget-boolean v0, p0, Lv/f;->Z0:Z

    return v0
.end method

.method public y1(IIIIIIIII)J
    .locals 12

    move-object v11, p0

    move/from16 v3, p8

    iput v3, v11, Lv/f;->K0:I

    move/from16 v4, p9

    iput v4, v11, Lv/f;->L0:I

    iget-object v0, v11, Lv/f;->F0:Lw/b;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lw/b;->d(Lv/f;IIIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method
