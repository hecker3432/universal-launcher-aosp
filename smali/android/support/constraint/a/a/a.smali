.class public Landroid/support/constraint/a/a/a;
.super Landroid/support/constraint/a/a/h;


# instance fields
.field private ae:I

.field private af:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/constraint/a/a/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/a/a/a;->af:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/a/a/a;->ag:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/a;->ae:I

    return-void
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    iput-object v6, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ltz v0, :cond_11

    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->z:[Landroid/support/constraint/a/a/d;

    iget v1, p0, Landroid/support/constraint/a/a/a;->ae:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Landroid/support/constraint/a/a/a;->ad:I

    if-ge v1, v6, :cond_6

    iget-object v6, p0, Landroid/support/constraint/a/a/a;->ac:[Landroid/support/constraint/a/a/e;

    aget-object v6, v6, v1

    iget-boolean v7, p0, Landroid/support/constraint/a/a/a;->ag:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->a()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    iget v7, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-eqz v7, :cond_2

    iget v7, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v7, v4, :cond_3

    :cond_2
    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->F()Landroid/support/constraint/a/a/e$a;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v7, v8, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    iget v7, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-eq v7, v3, :cond_4

    iget v7, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v7, v5, :cond_5

    :cond_4
    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->G()Landroid/support/constraint/a/a/e$a;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/a/a/e$a;->c:Landroid/support/constraint/a/a/e$a;

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget v6, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-eqz v6, :cond_8

    iget v6, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v6, v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/a/a/a;->j()Landroid/support/constraint/a/a/e;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->G()Landroid/support/constraint/a/a/e$a;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v6, v7, :cond_9

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/support/constraint/a/a/a;->j()Landroid/support/constraint/a/a/e;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/a/a/e;->F()Landroid/support/constraint/a/a/e$a;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/a/a/e$a;->b:Landroid/support/constraint/a/a/e$a;

    if-ne v6, v7, :cond_9

    :goto_6
    const/4 v1, 0x0

    :cond_9
    const/4 v6, 0x0

    :goto_7
    iget v7, p0, Landroid/support/constraint/a/a/a;->ad:I

    if-ge v6, v7, :cond_d

    iget-object v7, p0, Landroid/support/constraint/a/a/a;->ac:[Landroid/support/constraint/a/a/e;

    aget-object v7, v7, v6

    iget-boolean v8, p0, Landroid/support/constraint/a/a/a;->ag:Z

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/support/constraint/a/a/e;->a()Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_9

    :cond_a
    iget-object v8, v7, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    iget v9, p0, Landroid/support/constraint/a/a/a;->ae:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    iget-object v7, v7, Landroid/support/constraint/a/a/e;->z:[Landroid/support/constraint/a/a/d;

    iget v9, p0, Landroid/support/constraint/a/a/a;->ae:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget v7, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-eqz v7, :cond_c

    iget v7, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v7, v3, :cond_b

    goto :goto_8

    :cond_b
    iget-object v7, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Z)V

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v7, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Z)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->C:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    :goto_a
    iget-object v1, v1, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_b

    :cond_e
    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->C:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    goto :goto_a

    :cond_f
    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->C:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    goto :goto_a

    :cond_10
    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    iget-object v3, v3, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->C:Landroid/support/constraint/a/a/e;

    iget-object v1, v1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    goto :goto_a

    :cond_11
    :goto_b
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/a;->ag:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Landroid/support/constraint/a/a/h;->b()V

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object p1, p0, Landroid/support/constraint/a/a/a;->C:Landroid/support/constraint/a/a/e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/constraint/a/a/a;->C:Landroid/support/constraint/a/a/e;

    check-cast p1, Landroid/support/constraint/a/a/f;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/f;->q(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Landroid/support/constraint/a/a/a;->ae:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    :goto_0
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/k;->b(I)V

    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/k;F)V

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/k;F)V

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    :goto_2
    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/k;F)V

    iget-object v0, p0, Landroid/support/constraint/a/a/a;->af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Landroid/support/constraint/a/a/a;->ad:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/a;->ac:[Landroid/support/constraint/a/a/e;

    aget-object v1, v1, v0

    iget-boolean v3, p0, Landroid/support/constraint/a/a/a;->ag:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->a()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_6

    :cond_4
    iget v3, p0, Landroid/support/constraint/a/a/a;->ae:I

    packed-switch v3, :pswitch_data_1

    move-object v1, v2

    goto :goto_5

    :pswitch_4
    iget-object v1, v1, Landroid/support/constraint/a/a/e;->u:Landroid/support/constraint/a/a/d;

    goto :goto_4

    :pswitch_5
    iget-object v1, v1, Landroid/support/constraint/a/a/e;->s:Landroid/support/constraint/a/a/d;

    goto :goto_4

    :pswitch_6
    iget-object v1, v1, Landroid/support/constraint/a/a/e;->t:Landroid/support/constraint/a/a/d;

    goto :goto_4

    :pswitch_7
    iget-object v1, v1, Landroid/support/constraint/a/a/e;->r:Landroid/support/constraint/a/a/d;

    :goto_4
    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_5

    iget-object v3, p0, Landroid/support/constraint/a/a/a;->af:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/m;)V

    :cond_5
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public c()V
    .locals 8

    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    :goto_1
    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Landroid/support/constraint/a/a/a;->af:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Landroid/support/constraint/a/a/a;->af:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/a/a/k;

    iget v6, v5, Landroid/support/constraint/a/a/k;->i:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    return-void

    :cond_0
    iget v6, p0, Landroid/support/constraint/a/a/a;->ae:I

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/support/constraint/a/a/a;->ae:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    goto :goto_4

    :cond_1
    iget v6, v5, Landroid/support/constraint/a/a/k;->f:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_3

    goto :goto_5

    :cond_2
    :goto_4
    iget v6, v5, Landroid/support/constraint/a/a/k;->f:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_3

    :goto_5
    iget v1, v5, Landroid/support/constraint/a/a/k;->f:F

    iget-object v3, v5, Landroid/support/constraint/a/a/k;->e:Landroid/support/constraint/a/a/k;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/f;

    move-result-object v2

    iget-wide v4, v2, Landroid/support/constraint/a/f;->z:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->z:J

    :cond_5
    iput-object v3, v0, Landroid/support/constraint/a/a/k;->e:Landroid/support/constraint/a/a/k;

    iput v1, v0, Landroid/support/constraint/a/a/k;->f:F

    invoke-virtual {v0}, Landroid/support/constraint/a/a/k;->f()V

    iget v0, p0, Landroid/support/constraint/a/a/a;->ae:I

    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->s:Landroid/support/constraint/a/a/d;

    goto :goto_6

    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->u:Landroid/support/constraint/a/a/d;

    goto :goto_6

    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->r:Landroid/support/constraint/a/a/d;

    goto :goto_6

    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/a/a/a;->t:Landroid/support/constraint/a/a/d;

    :goto_6
    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/a/a/k;->a(Landroid/support/constraint/a/a/k;F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
