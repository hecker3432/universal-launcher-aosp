.class public Landroid/support/constraint/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/support/constraint/a/a/e;

.field protected b:Landroid/support/constraint/a/a/e;

.field protected c:Landroid/support/constraint/a/a/e;

.field protected d:Landroid/support/constraint/a/a/e;

.field protected e:Landroid/support/constraint/a/a/e;

.field protected f:Landroid/support/constraint/a/a/e;

.field protected g:Landroid/support/constraint/a/a/e;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/e;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/c;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/a/a/c;->p:Z

    iput-object p1, p0, Landroid/support/constraint/a/a/c;->a:Landroid/support/constraint/a/a/e;

    iput p2, p0, Landroid/support/constraint/a/a/c;->o:I

    iput-boolean p3, p0, Landroid/support/constraint/a/a/c;->p:Z

    return-void
.end method

.method private static a(Landroid/support/constraint/a/a/e;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->k()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->g:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/constraint/a/a/e;->g:[I

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()V
    .locals 12

    iget v0, p0, Landroid/support/constraint/a/a/c;->o:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Landroid/support/constraint/a/a/c;->a:Landroid/support/constraint/a/a/e;

    iget-object v3, p0, Landroid/support/constraint/a/a/c;->a:Landroid/support/constraint/a/a/e;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x1

    if-nez v2, :cond_d

    iget v6, p0, Landroid/support/constraint/a/a/c;->i:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/constraint/a/a/c;->i:I

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->Z:[Landroid/support/constraint/a/a/e;

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->Y:[Landroid/support/constraint/a/a/e;

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aput-object v8, v6, v7

    invoke-virtual {v4}, Landroid/support/constraint/a/a/e;->k()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Landroid/support/constraint/a/a/c;->b:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_0

    iput-object v4, p0, Landroid/support/constraint/a/a/c;->b:Landroid/support/constraint/a/a/e;

    :cond_0
    iget-object v6, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/e;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->Z:[Landroid/support/constraint/a/a/e;

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aput-object v4, v6, v7

    :cond_1
    iput-object v4, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/e;

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aget-object v6, v6, v7

    sget-object v7, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v6, v7, :cond_9

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->g:[I

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aget v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->g:[I

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aget v6, v6, v7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->g:[I

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aget v6, v6, v7

    if-ne v6, v1, :cond_9

    :cond_2
    iget v6, p0, Landroid/support/constraint/a/a/c;->j:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/constraint/a/a/c;->j:I

    iget-object v6, v4, Landroid/support/constraint/a/a/e;->X:[F

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aget v6, v6, v7

    const/4 v7, 0x0

    cmpl-float v9, v6, v7

    if-lez v9, :cond_3

    iget v9, p0, Landroid/support/constraint/a/a/c;->k:F

    iget-object v10, v4, Landroid/support/constraint/a/a/e;->X:[F

    iget v11, p0, Landroid/support/constraint/a/a/c;->o:I

    aget v10, v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Landroid/support/constraint/a/a/c;->k:F

    :cond_3
    iget v9, p0, Landroid/support/constraint/a/a/c;->o:I

    invoke-static {v4, v9}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/e;I)Z

    move-result v9

    if-eqz v9, :cond_6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iput-boolean v5, p0, Landroid/support/constraint/a/a/c;->l:Z

    goto :goto_1

    :cond_4
    iput-boolean v5, p0, Landroid/support/constraint/a/a/c;->m:Z

    :goto_1
    iget-object v6, p0, Landroid/support/constraint/a/a/c;->h:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/constraint/a/a/c;->h:Ljava/util/ArrayList;

    :cond_5
    iget-object v6, p0, Landroid/support/constraint/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v6, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/e;

    if-nez v6, :cond_7

    iput-object v4, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/e;

    :cond_7
    iget-object v6, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/e;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/e;

    iget-object v6, v6, Landroid/support/constraint/a/a/e;->Y:[Landroid/support/constraint/a/a/e;

    iget v7, p0, Landroid/support/constraint/a/a/c;->o:I

    aput-object v4, v6, v7

    :cond_8
    iput-object v4, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/e;

    :cond_9
    iget-object v6, v4, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v6, :cond_b

    iget-object v6, v6, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    iget-object v7, v6, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v7, :cond_b

    iget-object v7, v6, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v7, v7, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    if-eq v7, v4, :cond_a

    goto :goto_2

    :cond_a
    move-object v8, v6

    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    move-object v4, v8

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    iput-object v4, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/e;

    iget v0, p0, Landroid/support/constraint/a/a/c;->o:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/constraint/a/a/c;->p:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/e;

    goto :goto_3

    :cond_e
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->a:Landroid/support/constraint/a/a/e;

    :goto_3
    iput-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/e;

    iget-boolean v0, p0, Landroid/support/constraint/a/a/c;->m:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/constraint/a/a/c;->l:Z

    if-eqz v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    iput-boolean v3, p0, Landroid/support/constraint/a/a/c;->n:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/constraint/a/a/c;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/constraint/a/a/c;->b()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/a/a/c;->q:Z

    return-void
.end method
