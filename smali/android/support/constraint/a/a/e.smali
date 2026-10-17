.class public Landroid/support/constraint/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/e$a;
    }
.end annotation


# static fields
.field public static O:F = 0.5f


# instance fields
.field protected A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected B:[Landroid/support/constraint/a/a/e$a;

.field C:Landroid/support/constraint/a/a/e;

.field D:I

.field E:I

.field protected F:F

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field L:I

.field protected M:I

.field protected N:I

.field P:F

.field Q:F

.field R:Z

.field S:Z

.field T:I

.field U:I

.field V:Z

.field W:Z

.field X:[F

.field protected Y:[Landroid/support/constraint/a/a/e;

.field protected Z:[Landroid/support/constraint/a/a/e;

.field public a:I

.field aa:Landroid/support/constraint/a/a/e;

.field ab:Landroid/support/constraint/a/a/e;

.field private ac:[I

.field private ad:F

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Ljava/lang/Object;

.field private al:I

.field private am:I

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field public b:I

.field c:Landroid/support/constraint/a/a/l;

.field d:Landroid/support/constraint/a/a/l;

.field e:I

.field f:I

.field g:[I

.field h:I

.field i:I

.field j:F

.field k:I

.field l:I

.field m:F

.field n:Z

.field o:Z

.field p:I

.field q:F

.field r:Landroid/support/constraint/a/a/d;

.field s:Landroid/support/constraint/a/a/d;

.field t:Landroid/support/constraint/a/a/d;

.field u:Landroid/support/constraint/a/a/d;

.field v:Landroid/support/constraint/a/a/d;

.field w:Landroid/support/constraint/a/a/d;

.field x:Landroid/support/constraint/a/a/d;

.field y:Landroid/support/constraint/a/a/d;

.field protected z:[Landroid/support/constraint/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/e;->a:I

    iput v0, p0, Landroid/support/constraint/a/a/e;->b:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/a/a/e;->e:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->f:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/constraint/a/a/e;->g:[I

    iput v1, p0, Landroid/support/constraint/a/a/e;->h:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->i:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/constraint/a/a/e;->j:F

    iput v1, p0, Landroid/support/constraint/a/a/e;->k:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->l:I

    iput v3, p0, Landroid/support/constraint/a/a/e;->m:F

    iput v0, p0, Landroid/support/constraint/a/a/e;->p:I

    iput v3, p0, Landroid/support/constraint/a/a/e;->q:F

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/a/a/e;->ac:[I

    const/4 v3, 0x0

    iput v3, p0, Landroid/support/constraint/a/a/e;->ad:F

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->b:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->c:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->d:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->e:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->f:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->h:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->w:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->i:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->x:Landroid/support/constraint/a/a/d;

    new-instance v4, Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/d$c;->g:Landroid/support/constraint/a/a/d$c;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/a/a/d;-><init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/support/constraint/a/a/d;

    iget-object v5, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    aput-object v5, v4, v2

    iget-object v5, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    new-array v4, v2, [Landroid/support/constraint/a/a/e$a;

    sget-object v5, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    aput-object v5, v4, v1

    sget-object v5, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    aput-object v5, v4, v6

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iput v1, p0, Landroid/support/constraint/a/a/e;->D:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->E:I

    iput v3, p0, Landroid/support/constraint/a/a/e;->F:F

    iput v0, p0, Landroid/support/constraint/a/a/e;->G:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->H:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->I:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->ae:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->af:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->ag:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->ah:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->J:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->K:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->L:I

    sget v0, Landroid/support/constraint/a/a/e;->O:F

    iput v0, p0, Landroid/support/constraint/a/a/e;->P:F

    sget v0, Landroid/support/constraint/a/a/e;->O:F

    iput v0, p0, Landroid/support/constraint/a/a/e;->Q:F

    iput v1, p0, Landroid/support/constraint/a/a/e;->al:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->am:I

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->an:Ljava/lang/String;

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->ao:Ljava/lang/String;

    iput v1, p0, Landroid/support/constraint/a/a/e;->T:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->U:I

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->X:[F

    new-array v0, v2, [Landroid/support/constraint/a/a/e;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->Y:[Landroid/support/constraint/a/a/e;

    new-array v0, v2, [Landroid/support/constraint/a/a/e;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->Z:[Landroid/support/constraint/a/a/e;

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->aa:Landroid/support/constraint/a/a/e;

    iput-object v4, p0, Landroid/support/constraint/a/a/e;->ab:Landroid/support/constraint/a/a/e;

    invoke-direct {p0}, Landroid/support/constraint/a/a/e;->H()V

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->w:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->x:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/a/e$a;ZLandroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/d;IIIIFZZIIIFZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v1, p11

    move/from16 v2, p12

    move-object/from16 v13, p7

    invoke-virtual {v10, v13}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v9

    move-object/from16 v8, p8

    invoke-virtual {v10, v8}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v7

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v14

    iget-boolean v8, v10, Landroid/support/constraint/a/e;->c:Z

    const-wide/16 v15, 0x1

    if-eqz v8, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v8

    iget v8, v8, Landroid/support/constraint/a/a/k;->i:I

    const/4 v13, 0x1

    if-ne v8, v13, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v8

    iget v8, v8, Landroid/support/constraint/a/a/k;->i:I

    if-ne v8, v13, :cond_2

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v1

    iget-wide v2, v1, Landroid/support/constraint/a/f;->s:J

    add-long/2addr v2, v15

    iput-wide v2, v1, Landroid/support/constraint/a/f;->s:J

    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/e;)V

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/e;)V

    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v10, v12, v7, v1, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v8

    move-object/from16 v20, v14

    iget-wide v13, v8, Landroid/support/constraint/a/f;->B:J

    add-long/2addr v13, v15

    iput-wide v13, v8, Landroid/support/constraint/a/f;->B:J

    goto :goto_0

    :cond_3
    move-object/from16 v20, v14

    :goto_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->j()Z

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->j()Z

    move-result v13

    iget-object v14, v0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14}, Landroid/support/constraint/a/a/d;->j()Z

    move-result v21

    if-eqz v8, :cond_4

    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    if-eqz v13, :cond_5

    add-int/lit8 v14, v14, 0x1

    :cond_5
    if-eqz v21, :cond_6

    add-int/lit8 v14, v14, 0x1

    :cond_6
    if-eqz p14, :cond_7

    const/4 v11, 0x3

    goto :goto_2

    :cond_7
    move/from16 v11, p16

    :goto_2
    sget-object v15, Landroid/support/constraint/a/a/e$1;->b:[I

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/a/a/e$a;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v12, 0x4

    packed-switch v15, :pswitch_data_0

    :goto_3
    :pswitch_0
    const/4 v15, 0x0

    goto :goto_4

    :pswitch_1
    if-ne v11, v12, :cond_8

    goto :goto_3

    :cond_8
    const/4 v15, 0x1

    :goto_4
    iget v12, v0, Landroid/support/constraint/a/a/e;->am:I

    move/from16 v22, v14

    const/16 v14, 0x8

    if-ne v12, v14, :cond_9

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    move/from16 v12, p10

    :goto_5
    if-eqz p20, :cond_b

    if-nez v8, :cond_a

    if-nez v13, :cond_a

    if-nez v21, :cond_a

    move/from16 v14, p9

    invoke-virtual {v10, v9, v14}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    goto :goto_6

    :cond_a
    if-eqz v8, :cond_b

    if-nez v13, :cond_b

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->e()I

    move-result v14

    move/from16 v23, v13

    const/4 v13, 0x6

    invoke-virtual {v10, v9, v6, v14, v13}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_7

    :cond_b
    :goto_6
    move/from16 v23, v13

    const/4 v13, 0x6

    :goto_7
    if-nez v15, :cond_f

    if-eqz p6, :cond_d

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v10, v7, v9, v14, v13}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-lez v1, :cond_c

    const/4 v14, 0x6

    invoke-virtual {v10, v7, v9, v1, v14}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_8

    :cond_c
    const/4 v14, 0x6

    :goto_8
    const v12, 0x7fffffff

    if-ge v2, v12, :cond_e

    invoke-virtual {v10, v7, v9, v2, v14}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_9

    :cond_d
    const/4 v13, 0x3

    const/4 v14, 0x6

    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_e
    :goto_9
    move/from16 v13, p17

    move/from16 v2, p18

    move-object/from16 v24, v6

    move/from16 v27, v11

    move-object/from16 v6, v20

    move/from16 v0, v22

    const/4 v11, 0x2

    const/16 v20, 0x4

    goto/16 :goto_13

    :cond_f
    const/4 v13, 0x3

    const/4 v2, -0x2

    move/from16 v14, p17

    if-ne v14, v2, :cond_10

    move/from16 v14, p18

    move v13, v12

    goto :goto_a

    :cond_10
    move v13, v14

    move/from16 v14, p18

    :goto_a
    if-ne v14, v2, :cond_11

    move v2, v12

    goto :goto_b

    :cond_11
    move v2, v14

    :goto_b
    if-lez v13, :cond_12

    const/4 v14, 0x6

    invoke-virtual {v10, v7, v9, v13, v14}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_c

    :cond_12
    const/4 v14, 0x6

    :goto_c
    if-lez v2, :cond_14

    if-eqz p2, :cond_13

    const/4 v14, 0x1

    invoke-virtual {v10, v7, v9, v2, v14}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    const/4 v14, 0x6

    goto :goto_d

    :cond_13
    invoke-virtual {v10, v7, v9, v2, v14}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :goto_d
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_14
    const/4 v14, 0x1

    if-ne v11, v14, :cond_17

    if-eqz p2, :cond_15

    const/4 v14, 0x6

    :goto_e
    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto/16 :goto_11

    :cond_15
    if-eqz p15, :cond_16

    const/4 v14, 0x4

    goto :goto_e

    :cond_16
    const/4 v14, 0x1

    goto :goto_e

    :cond_17
    const/4 v14, 0x2

    if-ne v11, v14, :cond_1a

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->d()Landroid/support/constraint/a/a/d$c;

    move-result-object v14

    move-object/from16 v24, v6

    sget-object v6, Landroid/support/constraint/a/a/d$c;->c:Landroid/support/constraint/a/a/d$c;

    if-eq v14, v6, :cond_19

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->d()Landroid/support/constraint/a/a/d$c;

    move-result-object v6

    sget-object v14, Landroid/support/constraint/a/a/d$c;->e:Landroid/support/constraint/a/a/d$c;

    if-ne v6, v14, :cond_18

    goto :goto_f

    :cond_18
    iget-object v6, v0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    sget-object v14, Landroid/support/constraint/a/a/d$c;->b:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v6, v14}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    iget-object v14, v0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    move-object/from16 v25, v6

    sget-object v6, Landroid/support/constraint/a/a/d$c;->d:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v14, v6}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v18, v25

    goto :goto_10

    :cond_19
    :goto_f
    iget-object v6, v0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    sget-object v14, Landroid/support/constraint/a/a/d$c;->c:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v6, v14}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    iget-object v14, v0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    move-object/from16 v26, v6

    sget-object v6, Landroid/support/constraint/a/a/d$c;->e:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v14, v6}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v18, v26

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v14

    move/from16 v27, v11

    move-object/from16 v6, v20

    move/from16 v0, v22

    const/4 v11, 0x2

    const/16 v20, 0x4

    move-object v15, v7

    move-object/from16 v16, v9

    move/from16 v19, p19

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    const/4 v15, 0x0

    goto :goto_12

    :cond_1a
    :goto_11
    move-object/from16 v24, v6

    move/from16 v27, v11

    move-object/from16 v6, v20

    move/from16 v0, v22

    const/4 v11, 0x2

    const/16 v20, 0x4

    :goto_12
    if-eqz v15, :cond_1c

    if-eq v0, v11, :cond_1c

    if-nez p14, :cond_1c

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-lez v2, :cond_1b

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_1b
    const/4 v14, 0x6

    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    const/4 v15, 0x0

    :cond_1c
    :goto_13
    if-eqz p20, :cond_33

    if-eqz p15, :cond_1d

    goto/16 :goto_21

    :cond_1d
    const/4 v0, 0x5

    if-nez v8, :cond_20

    if-nez v23, :cond_20

    if-nez v21, :cond_20

    if-eqz p2, :cond_1e

    const/4 v4, 0x0

    move-object/from16 v12, p4

    :goto_14
    invoke-virtual {v10, v12, v7, v4, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_15

    :cond_1e
    move-object/from16 v12, p4

    :cond_1f
    :goto_15
    move-object v2, v7

    const/4 v0, 0x0

    const/4 v1, 0x6

    goto/16 :goto_20

    :cond_20
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v12, p4

    if-eqz v8, :cond_21

    if-nez v23, :cond_21

    if-eqz p2, :cond_1f

    goto :goto_14

    :cond_21
    if-nez v8, :cond_22

    if-eqz v23, :cond_22

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x6

    invoke-virtual {v10, v7, v6, v1, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz p2, :cond_1f

    move-object/from16 v14, p3

    invoke-virtual {v10, v9, v14, v4, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_15

    :cond_22
    const/4 v11, 0x3

    move-object/from16 v14, p3

    if-eqz v8, :cond_1f

    if-eqz v23, :cond_1f

    if-eqz v15, :cond_2d

    if-eqz p2, :cond_23

    if-nez v1, :cond_23

    const/4 v1, 0x6

    invoke-virtual {v10, v7, v9, v4, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_23
    if-nez v27, :cond_28

    if-gtz v2, :cond_25

    if-lez v13, :cond_24

    goto :goto_16

    :cond_24
    const/4 v1, 0x0

    const/4 v5, 0x6

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v1, 0x1

    :goto_17
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->e()I

    move-result v3

    move-object/from16 v8, v24

    invoke-virtual {v10, v9, v8, v3, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v7, v6, v3, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-gtz v2, :cond_27

    if-lez v13, :cond_26

    goto :goto_18

    :cond_26
    const/4 v13, 0x0

    goto :goto_19

    :cond_27
    :goto_18
    const/4 v13, 0x1

    :goto_19
    move v15, v1

    move-object/from16 v11, p0

    goto :goto_1d

    :cond_28
    move-object/from16 v8, v24

    move/from16 v1, v27

    const/4 v13, 0x1

    if-ne v1, v13, :cond_29

    const/4 v0, 0x6

    move-object/from16 v11, p0

    :goto_1a
    const/4 v15, 0x1

    goto :goto_1d

    :cond_29
    if-ne v1, v11, :cond_2c

    if-nez p14, :cond_2a

    move-object/from16 v11, p0

    iget v1, v11, Landroid/support/constraint/a/a/e;->p:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    if-gtz v2, :cond_2b

    const/4 v5, 0x6

    goto :goto_1b

    :cond_2a
    move-object/from16 v11, p0

    :cond_2b
    :goto_1b
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    invoke-virtual {v10, v9, v8, v1, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v7, v6, v1, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_1a

    :cond_2c
    move-object/from16 v11, p0

    const/4 v13, 0x0

    goto :goto_1c

    :cond_2d
    move-object/from16 v8, v24

    move-object/from16 v11, p0

    const/4 v13, 0x1

    if-eqz p2, :cond_2e

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    invoke-virtual {v10, v9, v8, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v7, v6, v1, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_2e
    :goto_1c
    const/4 v15, 0x0

    :goto_1d
    if-eqz v13, :cond_2f

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->e()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->e()I

    move-result v13

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v8

    move/from16 v5, p13

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object v11, v8

    move v8, v13

    move-object v13, v9

    move v9, v0

    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_1e

    :cond_2f
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object v11, v8

    move-object v13, v9

    :goto_1e
    if-eqz v15, :cond_30

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/d;->e()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v10, v13, v11, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/d;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    invoke-virtual {v10, v2, v3, v0, v1}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_1f

    :cond_30
    move-object/from16 v2, v29

    const/4 v1, 0x6

    :goto_1f
    if-eqz p2, :cond_31

    const/4 v0, 0x0

    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_20

    :cond_31
    const/4 v0, 0x0

    :goto_20
    if-eqz p2, :cond_32

    invoke-virtual {v10, v12, v2, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_32
    return-void

    :cond_33
    :goto_21
    move v3, v0

    move-object v2, v7

    move-object v13, v9

    const/4 v0, 0x0

    const/4 v1, 0x6

    move-object/from16 v12, p4

    move-object/from16 v14, p3

    if-ge v3, v11, :cond_34

    if-eqz p2, :cond_34

    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual {v10, v12, v2, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_34
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->L:I

    return v0
.end method

.method public B()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ak:Ljava/lang/Object;

    return-object v0
.end method

.method public C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/a/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public D()V
    .locals 5

    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    iget v1, p0, Landroid/support/constraint/a/a/e;->I:I

    iget v2, p0, Landroid/support/constraint/a/a/e;->H:I

    iget v3, p0, Landroid/support/constraint/a/a/e;->D:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/a/a/e;->I:I

    iget v4, p0, Landroid/support/constraint/a/a/e;->E:I

    add-int/2addr v3, v4

    iput v0, p0, Landroid/support/constraint/a/a/e;->ae:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->af:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/support/constraint/a/a/e;->ag:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroid/support/constraint/a/a/e;->ah:I

    return-void
.end method

.method public E()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->j()Landroid/support/constraint/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/support/constraint/a/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->j()Landroid/support/constraint/a/a/e;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/f;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/constraint/a/a/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public F()Landroid/support/constraint/a/a/e$a;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public G()Landroid/support/constraint/a/a/e$a;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/e$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d$c;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->x:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->w:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->P:F

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->H:I

    iput p2, p0, Landroid/support/constraint/a/a/e;->I:I

    return-void
.end method

.method public a(IIIF)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->e:I

    iput p2, p0, Landroid/support/constraint/a/a/e;->h:I

    iput p3, p0, Landroid/support/constraint/a/a/e;->i:I

    iput p4, p0, Landroid/support/constraint/a/a/e;->j:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->e:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/a/a/e;->e:I

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iput p1, p0, Landroid/support/constraint/a/a/e;->H:I

    iput p2, p0, Landroid/support/constraint/a/a/e;->I:I

    iget p1, p0, Landroid/support/constraint/a/a/e;->am:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroid/support/constraint/a/a/e;->D:I

    iput p2, p0, Landroid/support/constraint/a/a/e;->E:I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    if-ne p1, p2, :cond_1

    iget p1, p0, Landroid/support/constraint/a/a/e;->D:I

    if-ge p3, p1, :cond_1

    iget p3, p0, Landroid/support/constraint/a/a/e;->D:I

    :cond_1
    iget-object p1, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    if-ne p1, p2, :cond_2

    iget p1, p0, Landroid/support/constraint/a/a/e;->E:I

    if-ge p4, p1, :cond_2

    iget p4, p0, Landroid/support/constraint/a/a/e;->E:I

    :cond_2
    iput p3, p0, Landroid/support/constraint/a/a/e;->D:I

    iput p4, p0, Landroid/support/constraint/a/a/e;->E:I

    iget p1, p0, Landroid/support/constraint/a/a/e;->E:I

    iget p2, p0, Landroid/support/constraint/a/a/e;->N:I

    if-ge p1, p2, :cond_3

    iget p1, p0, Landroid/support/constraint/a/a/e;->N:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->E:I

    :cond_3
    iget p1, p0, Landroid/support/constraint/a/a/e;->D:I

    iget p2, p0, Landroid/support/constraint/a/a/e;->M:I

    if-ge p1, p2, :cond_4

    iget p1, p0, Landroid/support/constraint/a/a/e;->M:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->D:I

    :cond_4
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/d$c;Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;II)V
    .locals 7

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/d$b;->b:Landroid/support/constraint/a/a/d$b;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/d;IILandroid/support/constraint/a/a/d$b;IZ)Z

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/e$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v0, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->ai:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/e;->h(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/e;FI)V
    .locals 6

    sget-object v1, Landroid/support/constraint/a/a/d$c;->g:Landroid/support/constraint/a/a/d$c;

    sget-object v3, Landroid/support/constraint/a/a/d$c;->g:Landroid/support/constraint/a/a/d$c;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d$c;Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;II)V

    iput p2, p0, Landroid/support/constraint/a/a/e;->ad:F

    return-void
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->w:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->x:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 38

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v21

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v10

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v0, v0, v13

    sget-object v5, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v5, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    if-eqz v5, :cond_1

    iget-object v5, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v5, v5, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v5, v5, v2

    sget-object v7, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v7, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_2

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    if-eq v7, v8, :cond_2

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_2

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    if-ne v7, v8, :cond_2

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    check-cast v7, Landroid/support/constraint/a/a/f;

    invoke-virtual {v7, v15, v13}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e;I)V

    :cond_2
    iget-object v7, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_3

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    if-eq v7, v8, :cond_4

    :cond_3
    iget-object v7, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_5

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    if-ne v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    iget-object v8, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v8, :cond_6

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    if-eq v8, v9, :cond_6

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v8, :cond_6

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    if-ne v8, v9, :cond_6

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    check-cast v8, Landroid/support/constraint/a/a/f;

    invoke-virtual {v8, v15, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e;I)V

    :cond_6
    iget-object v8, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v8, :cond_7

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    if-eq v8, v9, :cond_8

    :cond_7
    iget-object v8, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v8, :cond_9

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v8, v8, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    if-ne v8, v9, :cond_9

    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-eqz v0, :cond_a

    iget v9, v15, Landroid/support/constraint/a/a/e;->am:I

    if-eq v9, v1, :cond_a

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_a

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_a

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v9, v9, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v9}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v9

    invoke-virtual {v14, v9, v10, v13, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_a
    if-eqz v5, :cond_b

    iget v9, v15, Landroid/support/constraint/a/a/e;->am:I

    if-eq v9, v1, :cond_b

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_b

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    iget-object v9, v9, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_b

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    if-nez v9, :cond_b

    iget-object v9, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v9, v9, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v9}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v9

    invoke-virtual {v14, v9, v4, v13, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_b
    move v12, v5

    move/from16 v16, v7

    move/from16 v22, v8

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    :goto_4
    iget v5, v15, Landroid/support/constraint/a/a/e;->D:I

    iget v7, v15, Landroid/support/constraint/a/a/e;->M:I

    if-ge v5, v7, :cond_d

    iget v5, v15, Landroid/support/constraint/a/a/e;->M:I

    :cond_d
    iget v7, v15, Landroid/support/constraint/a/a/e;->E:I

    iget v8, v15, Landroid/support/constraint/a/a/e;->N:I

    if-ge v7, v8, :cond_e

    iget v7, v15, Landroid/support/constraint/a/a/e;->N:I

    :cond_e
    iget-object v8, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v8, v8, v13

    sget-object v9, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-eq v8, v9, :cond_f

    const/4 v8, 0x1

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :goto_5
    iget-object v9, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v9, v9, v2

    sget-object v11, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-eq v9, v11, :cond_10

    const/4 v9, 0x1

    goto :goto_6

    :cond_10
    const/4 v9, 0x0

    :goto_6
    iget v11, v15, Landroid/support/constraint/a/a/e;->G:I

    iput v11, v15, Landroid/support/constraint/a/a/e;->p:I

    iget v11, v15, Landroid/support/constraint/a/a/e;->F:F

    iput v11, v15, Landroid/support/constraint/a/a/e;->q:F

    iget v11, v15, Landroid/support/constraint/a/a/e;->e:I

    iget v2, v15, Landroid/support/constraint/a/a/e;->f:I

    iget v13, v15, Landroid/support/constraint/a/a/e;->F:F

    const/16 v17, 0x0

    const/16 v18, 0x4

    cmpl-float v13, v13, v17

    if-lez v13, :cond_19

    iget v13, v15, Landroid/support/constraint/a/a/e;->am:I

    const/16 v1, 0x8

    if-eq v13, v1, :cond_19

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v13, 0x0

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    move-object/from16 v27, v3

    const/4 v3, 0x3

    if-ne v1, v13, :cond_11

    if-nez v11, :cond_11

    const/4 v11, 0x3

    :cond_11
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v13, 0x1

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v1, v13, :cond_12

    if-nez v2, :cond_12

    const/4 v2, 0x3

    :cond_12
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v13, 0x0

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v1, v13, :cond_13

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v13, 0x1

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v1, v13, :cond_13

    if-ne v11, v3, :cond_13

    if-ne v2, v3, :cond_13

    invoke-virtual {v15, v0, v12, v8, v9}, Landroid/support/constraint/a/a/e;->a(ZZZZ)V

    goto/16 :goto_7

    :cond_13
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v8, 0x0

    aget-object v1, v1, v8

    sget-object v9, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v1, v9, :cond_15

    if-ne v11, v3, :cond_15

    iput v8, v15, Landroid/support/constraint/a/a/e;->p:I

    iget v1, v15, Landroid/support/constraint/a/a/e;->q:F

    iget v3, v15, Landroid/support/constraint/a/a/e;->E:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v3, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v8, 0x1

    aget-object v3, v3, v8

    sget-object v5, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-eq v3, v5, :cond_14

    move/from16 v29, v1

    move/from16 v25, v2

    move/from16 v30, v7

    const/16 v20, 0x4

    goto :goto_a

    :cond_14
    move/from16 v29, v1

    move/from16 v25, v2

    goto :goto_8

    :cond_15
    const/4 v8, 0x1

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v1, v1, v8

    sget-object v9, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v1, v9, :cond_18

    if-ne v2, v3, :cond_18

    iput v8, v15, Landroid/support/constraint/a/a/e;->p:I

    iget v1, v15, Landroid/support/constraint/a/a/e;->G:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, v15, Landroid/support/constraint/a/a/e;->q:F

    div-float/2addr v1, v3

    iput v1, v15, Landroid/support/constraint/a/a/e;->q:F

    :cond_16
    iget v1, v15, Landroid/support/constraint/a/a/e;->q:F

    iget v3, v15, Landroid/support/constraint/a/a/e;->D:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v3, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    sget-object v7, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-eq v3, v7, :cond_17

    move/from16 v30, v1

    move/from16 v29, v5

    move/from16 v20, v11

    const/16 v25, 0x4

    goto :goto_a

    :cond_17
    move/from16 v30, v1

    move/from16 v25, v2

    move/from16 v29, v5

    goto :goto_9

    :cond_18
    :goto_7
    move/from16 v25, v2

    move/from16 v29, v5

    :goto_8
    move/from16 v30, v7

    :goto_9
    move/from16 v20, v11

    const/16 v28, 0x1

    goto :goto_b

    :cond_19
    move-object/from16 v27, v3

    move/from16 v25, v2

    move/from16 v29, v5

    move/from16 v30, v7

    move/from16 v20, v11

    :goto_a
    const/16 v28, 0x0

    :goto_b
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->g:[I

    const/4 v2, 0x0

    aput v20, v1, v2

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->g:[I

    const/4 v2, 0x1

    aput v25, v1, v2

    if-eqz v28, :cond_1b

    iget v1, v15, Landroid/support/constraint/a/a/e;->p:I

    if-eqz v1, :cond_1a

    iget v1, v15, Landroid/support/constraint/a/a/e;->p:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    goto :goto_c

    :cond_1a
    const/4 v2, -0x1

    :goto_c
    const/16 v26, 0x1

    goto :goto_d

    :cond_1b
    const/4 v2, -0x1

    :cond_1c
    const/16 v26, 0x0

    :goto_d
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    sget-object v3, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v1, v3, :cond_1d

    instance-of v1, v15, Landroid/support/constraint/a/a/f;

    if-eqz v1, :cond_1d

    const/16 v31, 0x1

    goto :goto_e

    :cond_1d
    const/16 v31, 0x0

    :goto_e
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->j()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/lit8 v23, v1, 0x1

    iget v1, v15, Landroid/support/constraint/a/a/e;->a:I

    const/4 v13, 0x2

    const/16 v32, 0x0

    if-eq v1, v13, :cond_20

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_1e

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_f

    :cond_1e
    move-object/from16 v33, v32

    :goto_f
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_1f

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v14, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_10

    :cond_1f
    move-object/from16 v34, v32

    :goto_10
    iget-object v1, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/16 v17, 0x0

    aget-object v5, v1, v17

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    iget v9, v15, Landroid/support/constraint/a/a/e;->H:I

    iget v11, v15, Landroid/support/constraint/a/a/e;->M:I

    iget-object v1, v15, Landroid/support/constraint/a/a/e;->ac:[I

    aget v1, v1, v17

    move/from16 v24, v12

    move v12, v1

    iget v1, v15, Landroid/support/constraint/a/a/e;->P:F

    move v13, v1

    iget v1, v15, Landroid/support/constraint/a/a/e;->h:I

    move/from16 v17, v1

    iget v1, v15, Landroid/support/constraint/a/a/e;->i:I

    move/from16 v18, v1

    iget v1, v15, Landroid/support/constraint/a/a/e;->j:F

    move/from16 v19, v1

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v36, v27

    move-object/from16 v3, v34

    move-object/from16 v27, v4

    move-object/from16 v4, v33

    move-object/from16 v37, v6

    move/from16 v6, v31

    move-object/from16 v31, v10

    move/from16 v10, v29

    move/from16 v14, v26

    move/from16 v15, v16

    move/from16 v16, v20

    move/from16 v20, v23

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/a/e$a;ZLandroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/d;IIIIFZZIIIFZ)V

    goto :goto_11

    :cond_20
    move-object/from16 v37, v6

    move-object/from16 v31, v10

    move/from16 v24, v12

    move-object/from16 v36, v27

    move-object/from16 v27, v4

    :goto_11
    move-object/from16 v15, p0

    iget v0, v15, Landroid/support/constraint/a/a/e;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    return-void

    :cond_21
    iget-object v0, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    sget-object v1, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v1, :cond_22

    instance-of v0, v15, Landroid/support/constraint/a/a/f;

    if-eqz v0, :cond_22

    const/4 v6, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x0

    :goto_12
    if-eqz v28, :cond_24

    iget v0, v15, Landroid/support/constraint/a/a/e;->p:I

    if-eq v0, v14, :cond_23

    iget v0, v15, Landroid/support/constraint/a/a/e;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    :cond_23
    const/16 v16, 0x1

    goto :goto_13

    :cond_24
    const/16 v16, 0x0

    :goto_13
    iget v0, v15, Landroid/support/constraint/a/a/e;->L:I

    if-lez v0, :cond_26

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/a/a/k;->i:I

    if-ne v0, v14, :cond_25

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/e;)V

    move-object/from16 v4, v37

    goto :goto_14

    :cond_25
    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->A()I

    move-result v0

    const/4 v1, 0x6

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    invoke-virtual {v10, v2, v4, v0, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v0, :cond_27

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    invoke-virtual {v10, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v0, v3, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    const/16 v20, 0x0

    goto :goto_15

    :cond_26
    move-object/from16 v4, v37

    move-object/from16 v10, p1

    :cond_27
    :goto_14
    move/from16 v20, v23

    :goto_15
    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_28

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v10, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_16

    :cond_28
    move-object/from16 v23, v32

    :goto_16
    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_29

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v10, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    move-object v3, v0

    goto :goto_17

    :cond_29
    move-object/from16 v3, v32

    :goto_17
    iget-object v0, v15, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v5, v0, v14

    iget-object v7, v15, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    iget-object v8, v15, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    iget v9, v15, Landroid/support/constraint/a/a/e;->I:I

    iget v11, v15, Landroid/support/constraint/a/a/e;->N:I

    iget-object v0, v15, Landroid/support/constraint/a/a/e;->ac:[I

    aget v12, v0, v14

    iget v13, v15, Landroid/support/constraint/a/a/e;->Q:F

    iget v0, v15, Landroid/support/constraint/a/a/e;->k:I

    move/from16 v17, v0

    iget v0, v15, Landroid/support/constraint/a/a/e;->l:I

    move/from16 v18, v0

    iget v0, v15, Landroid/support/constraint/a/a/e;->m:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v24, v4

    move-object/from16 v4, v23

    move/from16 v10, v30

    move/from16 v14, v16

    move/from16 v15, v22

    move/from16 v16, v25

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/a/e$a;ZLandroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/d;IIIIFZZIIIFZ)V

    if-eqz v28, :cond_2b

    const/4 v6, 0x6

    move-object/from16 v7, p0

    iget v0, v7, Landroid/support/constraint/a/a/e;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget v5, v7, Landroid/support/constraint/a/a/e;->q:F

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move-object/from16 v3, v31

    move-object/from16 v4, v21

    :goto_18
    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FI)V

    goto :goto_19

    :cond_2a
    iget v5, v7, Landroid/support/constraint/a/a/e;->q:F

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    move-object/from16 v4, v24

    goto :goto_18

    :cond_2b
    move-object/from16 v7, p0

    :goto_19
    iget-object v0, v7, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v7, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->c()Landroid/support/constraint/a/a/e;

    move-result-object v0

    iget v1, v7, Landroid/support/constraint/a/a/e;->ad:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->e()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/e;FI)V

    :cond_2c
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/e;->ak:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/e;->an:Ljava/lang/String;

    return-void
.end method

.method public a(ZZZZ)V
    .locals 5

    iget v0, p0, Landroid/support/constraint/a/a/e;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    iput v2, p0, Landroid/support/constraint/a/a/e;->p:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    iput v4, p0, Landroid/support/constraint/a/a/e;->p:I

    iget p3, p0, Landroid/support/constraint/a/a/e;->G:I

    if-ne p3, v3, :cond_1

    iget p3, p0, Landroid/support/constraint/a/a/e;->q:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/a/a/e;->q:F

    :cond_1
    :goto_0
    iget p3, p0, Landroid/support/constraint/a/a/e;->p:I

    if-nez p3, :cond_3

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    iput v4, p0, Landroid/support/constraint/a/a/e;->p:I

    goto :goto_1

    :cond_3
    iget p3, p0, Landroid/support/constraint/a/a/e;->p:I

    if-ne p3, v4, :cond_5

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    iput v2, p0, Landroid/support/constraint/a/a/e;->p:I

    :cond_5
    :goto_1
    iget p3, p0, Landroid/support/constraint/a/a/e;->p:I

    if-ne p3, v3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-nez p3, :cond_8

    :cond_6
    iget-object p3, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_7

    iput v2, p0, Landroid/support/constraint/a/a/e;->p:I

    goto :goto_2

    :cond_7
    iget-object p3, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {p3}, Landroid/support/constraint/a/a/d;->j()Z

    move-result p3

    if-eqz p3, :cond_8

    iget p3, p0, Landroid/support/constraint/a/a/e;->q:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/a/a/e;->q:F

    iput v4, p0, Landroid/support/constraint/a/a/e;->p:I

    :cond_8
    :goto_2
    iget p3, p0, Landroid/support/constraint/a/a/e;->p:I

    if-ne p3, v3, :cond_a

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    iput v2, p0, Landroid/support/constraint/a/a/e;->p:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    iget p3, p0, Landroid/support/constraint/a/a/e;->q:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/a/a/e;->q:F

    iput v4, p0, Landroid/support/constraint/a/a/e;->p:I

    :cond_a
    :goto_3
    iget p3, p0, Landroid/support/constraint/a/a/e;->p:I

    if-ne p3, v3, :cond_c

    iget p3, p0, Landroid/support/constraint/a/a/e;->h:I

    if-lez p3, :cond_b

    iget p3, p0, Landroid/support/constraint/a/a/e;->k:I

    if-nez p3, :cond_b

    iput v2, p0, Landroid/support/constraint/a/a/e;->p:I

    goto :goto_4

    :cond_b
    iget p3, p0, Landroid/support/constraint/a/a/e;->h:I

    if-nez p3, :cond_c

    iget p3, p0, Landroid/support/constraint/a/a/e;->k:I

    if-lez p3, :cond_c

    iget p3, p0, Landroid/support/constraint/a/a/e;->q:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/a/a/e;->q:F

    iput v4, p0, Landroid/support/constraint/a/a/e;->p:I

    :cond_c
    :goto_4
    iget p3, p0, Landroid/support/constraint/a/a/e;->p:I

    if-ne p3, v3, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    iget p1, p0, Landroid/support/constraint/a/a/e;->q:F

    div-float/2addr v1, p1

    iput v1, p0, Landroid/support/constraint/a/a/e;->q:F

    iput v4, p0, Landroid/support/constraint/a/a/e;->p:I

    :cond_d
    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->am:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/k;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->Q:F

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-static {p1, p0}, Landroid/support/constraint/a/a/i;->a(ILandroid/support/constraint/a/a/e;)V

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->J:I

    iput p2, p0, Landroid/support/constraint/a/a/e;->K:I

    return-void
.end method

.method public b(IIIF)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->f:I

    iput p2, p0, Landroid/support/constraint/a/a/e;->k:I

    iput p3, p0, Landroid/support/constraint/a/a/e;->l:I

    iput p4, p0, Landroid/support/constraint/a/a/e;->m:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->f:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/a/a/e;->f:I

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/a/a/e$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v0, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->aj:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/e;->i(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/a/e;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    iget v0, p0, Landroid/support/constraint/a/a/e;->L:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "H"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    iput p1, p0, Landroid/support/constraint/a/a/e;->F:F

    iput v1, p0, Landroid/support/constraint/a/a/e;->G:I

    :cond_7
    return-void

    :cond_8
    :goto_2
    iput v0, p0, Landroid/support/constraint/a/a/e;->F:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/e;->n:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->X:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ac:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->H:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/support/constraint/a/a/e;->D:I

    iget p1, p0, Landroid/support/constraint/a/a/e;->D:I

    iget p2, p0, Landroid/support/constraint/a/a/e;->M:I

    if-ge p1, p2, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->M:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->D:I

    :cond_0
    return-void
.end method

.method public c(Landroid/support/constraint/a/e;)V
    .locals 6

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result p1

    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/constraint/a/a/e;->a(IIII)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/e;->o:Z

    return-void
.end method

.method public d(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->X:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ac:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->I:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/support/constraint/a/a/e;->E:I

    iget p1, p0, Landroid/support/constraint/a/a/e;->E:I

    iget p2, p0, Landroid/support/constraint/a/a/e;->N:I

    if-ge p1, p2, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->N:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->E:I

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    iget v0, p0, Landroid/support/constraint/a/a/e;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/e;->F:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/e;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/e;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->am:I

    return-void
.end method

.method public e()Z
    .locals 3

    iget v0, p0, Landroid/support/constraint/a/a/e;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/e;->F:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/e;->k:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/e;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->v:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->w:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->x:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->y:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/a/a/e;->ad:F

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/constraint/a/a/e;->D:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->E:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->F:F

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/a/e;->G:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->H:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->I:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->ae:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->af:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->ag:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->ah:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->J:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->K:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->L:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->M:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->N:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->ai:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->aj:I

    sget v3, Landroid/support/constraint/a/a/e;->O:F

    iput v3, p0, Landroid/support/constraint/a/a/e;->P:F

    sget v3, Landroid/support/constraint/a/a/e;->O:F

    iput v3, p0, Landroid/support/constraint/a/a/e;->Q:F

    iget-object v3, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    sget-object v4, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    aput-object v4, v3, v2

    iget-object v3, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    sget-object v4, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->ak:Ljava/lang/Object;

    iput v2, p0, Landroid/support/constraint/a/a/e;->al:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->am:I

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->ao:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/support/constraint/a/a/e;->R:Z

    iput-boolean v2, p0, Landroid/support/constraint/a/a/e;->S:Z

    iput v2, p0, Landroid/support/constraint/a/a/e;->T:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->U:I

    iput-boolean v2, p0, Landroid/support/constraint/a/a/e;->V:Z

    iput-boolean v2, p0, Landroid/support/constraint/a/a/e;->W:Z

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->X:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->X:[F

    aput v3, v0, v5

    iput v1, p0, Landroid/support/constraint/a/a/e;->a:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->b:I

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ac:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ac:[I

    aput v3, v0, v5

    iput v2, p0, Landroid/support/constraint/a/a/e;->e:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/e;->j:F

    iput v0, p0, Landroid/support/constraint/a/a/e;->m:F

    iput v3, p0, Landroid/support/constraint/a/a/e;->i:I

    iput v3, p0, Landroid/support/constraint/a/a/e;->l:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->h:I

    iput v2, p0, Landroid/support/constraint/a/a/e;->k:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->p:I

    iput v0, p0, Landroid/support/constraint/a/a/e;->q:F

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/l;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/l;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/l;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/l;->b()V

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->H:I

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/k;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->I:I

    return-void
.end method

.method public h()Landroid/support/constraint/a/a/l;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/l;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/a/l;

    invoke-direct {v0}, Landroid/support/constraint/a/a/l;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/l;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->c:Landroid/support/constraint/a/a/l;

    return-object v0
.end method

.method public h(I)V
    .locals 1

    iput p1, p0, Landroid/support/constraint/a/a/e;->D:I

    iget p1, p0, Landroid/support/constraint/a/a/e;->D:I

    iget v0, p0, Landroid/support/constraint/a/a/e;->M:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->M:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->D:I

    :cond_0
    return-void
.end method

.method public i()Landroid/support/constraint/a/a/l;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/l;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/a/l;

    invoke-direct {v0}, Landroid/support/constraint/a/a/l;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/l;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->d:Landroid/support/constraint/a/a/l;

    return-object v0
.end method

.method public i(I)V
    .locals 1

    iput p1, p0, Landroid/support/constraint/a/a/e;->E:I

    iget p1, p0, Landroid/support/constraint/a/a/e;->E:I

    iget v0, p0, Landroid/support/constraint/a/a/e;->N:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/support/constraint/a/a/e;->N:I

    iput p1, p0, Landroid/support/constraint/a/a/e;->E:I

    :cond_0
    return-void
.end method

.method public j()Landroid/support/constraint/a/a/e;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->C:Landroid/support/constraint/a/a/e;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/e;->M:I

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->am:I

    return v0
.end method

.method public k(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/e;->N:I

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->an:Ljava/lang/String;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->ai:I

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->aj:I

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->I:I

    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->L:I

    return-void
.end method

.method public o()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->am:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/e;->D:I

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->T:I

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->ai:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/e;->U:I

    return-void
.end method

.method public q()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->am:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/e;->E:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->aj:I

    return v0
.end method

.method public s()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->ae:I

    iget v1, p0, Landroid/support/constraint/a/a/e;->J:I

    add-int/2addr v0, v1

    return v0
.end method

.method public t()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->af:I

    iget v1, p0, Landroid/support/constraint/a/a/e;->K:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->ao:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/a/a/e;->ao:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->an:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/a/a/e;->an:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/e;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/e;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/e;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/e;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/e;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/e;->aj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->H:I

    iget v1, p0, Landroid/support/constraint/a/a/e;->J:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected v()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/e;->I:I

    iget v1, p0, Landroid/support/constraint/a/a/e;->K:I

    add-int/2addr v0, v1

    return v0
.end method

.method public w()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->m()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/e;->D:I

    add-int/2addr v0, v1

    return v0
.end method

.method public x()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->n()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/e;->E:I

    add-int/2addr v0, v1

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->P:F

    return v0
.end method

.method public z()Z
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->L:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
