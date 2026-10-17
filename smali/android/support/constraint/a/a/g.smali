.class public Landroid/support/constraint/a/a/g;
.super Landroid/support/constraint/a/a/e;


# instance fields
.field protected ac:F

.field protected ad:I

.field protected ae:I

.field private af:Landroid/support/constraint/a/a/d;

.field private ag:I

.field private ah:Z

.field private ai:I

.field private aj:Landroid/support/constraint/a/a/j;

.field private ak:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/constraint/a/a/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/a/a/g;->ac:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/g;->ad:I

    iput v0, p0, Landroid/support/constraint/a/a/g;->ae:I

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->s:Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/g;->ag:I

    iput-boolean v0, p0, Landroid/support/constraint/a/a/g;->ah:Z

    iput v0, p0, Landroid/support/constraint/a/a/g;->ai:I

    new-instance v1, Landroid/support/constraint/a/a/j;

    invoke-direct {v1}, Landroid/support/constraint/a/a/j;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/a/a/g;->aj:Landroid/support/constraint/a/a/j;

    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/a/a/g;->ak:I

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->A:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->z:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/g;->z:[Landroid/support/constraint/a/a/d;

    iget-object v3, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/g;->ag:I

    return v0
.end method

.method public a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/g$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Landroid/support/constraint/a/a/g;->ag:I

    if-nez v0, :cond_0

    iget-object p1, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    return-object p1

    :pswitch_2
    iget v0, p0, Landroid/support/constraint/a/a/g;->ag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d$c;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Landroid/support/constraint/a/a/g;->ag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/g;->ag:I

    iget-object p1, p0, Landroid/support/constraint/a/a/g;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Landroid/support/constraint/a/a/g;->ag:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/constraint/a/a/g;->r:Landroid/support/constraint/a/a/d;

    :goto_0
    iput-object p1, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/constraint/a/a/g;->s:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Landroid/support/constraint/a/a/g;->A:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/constraint/a/a/g;->z:[Landroid/support/constraint/a/a/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->z:[Landroid/support/constraint/a/a/d;

    iget-object v2, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->j()Landroid/support/constraint/a/a/e;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/support/constraint/a/a/d$c;->b:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/d$c;->d:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a/g;->C:Landroid/support/constraint/a/a/e;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/a/g;->C:Landroid/support/constraint/a/a/e;

    iget-object v3, v3, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Landroid/support/constraint/a/a/g;->ag:I

    if-nez v6, :cond_3

    sget-object v1, Landroid/support/constraint/a/a/d$c;->c:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/a/a/d$c;->e:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/d$c;)Landroid/support/constraint/a/a/d;

    move-result-object v2

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->C:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->C:Landroid/support/constraint/a/a/e;

    iget-object v0, v0, Landroid/support/constraint/a/a/e;->B:[Landroid/support/constraint/a/a/e$a;

    aget-object v0, v0, v4

    sget-object v3, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/constraint/a/a/g;->ad:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    iget v6, p0, Landroid/support/constraint/a/a/g;->ad:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/support/constraint/a/a/g;->ae:I

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v2

    iget v6, p0, Landroid/support/constraint/a/a/g;->ae:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual {p1, v2, v0, v5, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_2

    :cond_5
    iget v0, p0, Landroid/support/constraint/a/a/g;->ac:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/a/a/g;->ac:F

    iget-boolean v8, p0, Landroid/support/constraint/a/a/g;->ah:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FZ)Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->j()Landroid/support/constraint/a/a/e;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->H()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget v0, p0, Landroid/support/constraint/a/a/g;->ad:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/g;->ad:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    :goto_0
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/a/a/g;->ad:I

    :goto_1
    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/g;->ae:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/g;->ae:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    :goto_2
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/a/a/g;->ae:I

    neg-int v1, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/support/constraint/a/a/g;->ac:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->F()Landroid/support/constraint/a/a/e$a;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/support/constraint/a/a/e;->D:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/g;->ac:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    :goto_3
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/a/a/g;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->t:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget v0, p0, Landroid/support/constraint/a/a/g;->ad:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/g;->ad:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Landroid/support/constraint/a/a/g;->ae:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/g;->ae:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/g;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Landroid/support/constraint/a/a/g;->ac:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->G()Landroid/support/constraint/a/a/e$a;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a/a/e$a;->a:Landroid/support/constraint/a/a/e$a;

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/support/constraint/a/a/e;->E:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/a/a/g;->ac:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/a/a/k;->a(ILandroid/support/constraint/a/a/k;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/g;->u:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    goto/16 :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public c(Landroid/support/constraint/a/e;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->j()Landroid/support/constraint/a/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/g;->af:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Landroid/support/constraint/a/a/g;->ag:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/g;->f(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/g;->g(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->j()Landroid/support/constraint/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/g;->i(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/g;->h(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/g;->f(I)V

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/g;->g(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/g;->j()Landroid/support/constraint/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/g;->h(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/a/a/g;->i(I)V

    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/support/constraint/a/a/g;->ac:F

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/a/a/g;->ad:I

    iput p1, p0, Landroid/support/constraint/a/a/g;->ae:I

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/a/a/g;->ac:F

    iput p1, p0, Landroid/support/constraint/a/a/g;->ad:I

    iput v0, p0, Landroid/support/constraint/a/a/g;->ae:I

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/a/a/g;->ac:F

    iput v0, p0, Landroid/support/constraint/a/a/g;->ad:I

    iput p1, p0, Landroid/support/constraint/a/a/g;->ae:I

    :cond_0
    return-void
.end method
