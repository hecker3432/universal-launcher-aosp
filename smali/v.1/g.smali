.class public Lv/g;
.super Lv/e;
.source "SourceFile"


# instance fields
.field protected E0:F

.field protected F0:I

.field protected G0:I

.field private H0:Lv/d;

.field private I0:I

.field private J0:I

.field private K0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lv/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lv/g;->E0:F

    const/4 v0, -0x1

    iput v0, p0, Lv/g;->F0:I

    iput v0, p0, Lv/g;->G0:I

    iget-object v0, p0, Lv/e;->J:Lv/d;

    iput-object v0, p0, Lv/g;->H0:Lv/d;

    const/4 v0, 0x0

    iput v0, p0, Lv/g;->I0:I

    iput v0, p0, Lv/g;->J0:I

    iget-object v1, p0, Lv/e;->R:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lv/e;->R:Ljava/util/ArrayList;

    iget-object v2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lv/e;->Q:[Lv/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lv/e;->Q:[Lv/d;

    iget-object v3, p0, Lv/g;->H0:Lv/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Y0(Lu/d;Z)V
    .locals 2

    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p1, p2}, Lu/d;->x(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lv/g;->I0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lv/e;->U0(I)V

    invoke-virtual {p0, v1}, Lv/e;->V0(I)V

    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object p1

    invoke-virtual {p1}, Lv/e;->v()I

    move-result p1

    invoke-virtual {p0, p1}, Lv/e;->v0(I)V

    invoke-virtual {p0, v1}, Lv/e;->T0(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lv/e;->U0(I)V

    invoke-virtual {p0, p1}, Lv/e;->V0(I)V

    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object p1

    invoke-virtual {p1}, Lv/e;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lv/e;->T0(I)V

    invoke-virtual {p0, v1}, Lv/e;->v0(I)V

    :goto_0
    return-void
.end method

.method public Z0()Lv/d;
    .locals 1

    iget-object v0, p0, Lv/g;->H0:Lv/d;

    return-object v0
.end method

.method public a1()I
    .locals 1

    iget v0, p0, Lv/g;->I0:I

    return v0
.end method

.method public b1()I
    .locals 1

    iget v0, p0, Lv/g;->F0:I

    return v0
.end method

.method public c1()I
    .locals 1

    iget v0, p0, Lv/g;->G0:I

    return v0
.end method

.method public d1()F
    .locals 1

    iget v0, p0, Lv/g;->E0:F

    return v0
.end method

.method public e0()Z
    .locals 1

    iget-boolean v0, p0, Lv/g;->K0:Z

    return v0
.end method

.method public e1(I)V
    .locals 1

    iget-object v0, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->s(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv/g;->K0:Z

    return-void
.end method

.method public f0()Z
    .locals 1

    iget-boolean v0, p0, Lv/g;->K0:Z

    return v0
.end method

.method public f1(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lv/g;->E0:F

    iput p1, p0, Lv/g;->F0:I

    iput v0, p0, Lv/g;->G0:I

    :cond_0
    return-void
.end method

.method public g(Lu/d;Z)V
    .locals 7

    invoke-virtual {p0}, Lv/e;->I()Lv/e;

    move-result-object p2

    check-cast p2, Lv/f;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lv/d$b;->b:Lv/d$b;

    invoke-virtual {p2, v0}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v0

    sget-object v1, Lv/d$b;->d:Lv/d$b;

    invoke-virtual {p2, v1}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v1

    iget-object v2, p0, Lv/e;->U:Lv/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lv/e;->T:[Lv/e$b;

    aget-object v2, v2, v4

    sget-object v5, Lv/e$b;->b:Lv/e$b;

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lv/g;->I0:I

    if-nez v5, :cond_3

    sget-object v0, Lv/d$b;->c:Lv/d$b;

    invoke-virtual {p2, v0}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v0

    sget-object v1, Lv/d$b;->e:Lv/d$b;

    invoke-virtual {p2, v1}, Lv/e;->m(Lv/d$b;)Lv/d;

    move-result-object v1

    iget-object p2, p0, Lv/e;->U:Lv/e;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lv/e;->T:[Lv/e$b;

    aget-object p2, p2, v3

    sget-object v2, Lv/e$b;->b:Lv/e$b;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, Lv/g;->K0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p2}, Lv/d;->m()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p1, p2}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object p2

    iget-object v6, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {v6}, Lv/d;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lu/d;->f(Lu/i;I)V

    iget v6, p0, Lv/g;->F0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lu/d;->h(Lu/i;Lu/i;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lv/g;->G0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v1

    invoke-virtual {p1, v0}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lu/d;->h(Lu/i;Lu/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lu/d;->h(Lu/i;Lu/i;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lv/g;->K0:Z

    return-void

    :cond_6
    iget p2, p0, Lv/g;->F0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p1, p2}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object p2

    invoke-virtual {p1, v0}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v0

    iget v3, p0, Lv/g;->F0:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lu/d;->e(Lu/i;Lu/i;II)Lu/b;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lu/d;->h(Lu/i;Lu/i;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lv/g;->G0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p1, p2}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v1

    iget v3, p0, Lv/g;->G0:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lu/d;->e(Lu/i;Lu/i;II)Lu/b;

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lu/d;->h(Lu/i;Lu/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Lu/d;->h(Lu/i;Lu/i;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Lv/g;->E0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p1, p2}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Lu/d;->q(Ljava/lang/Object;)Lu/i;

    move-result-object v0

    iget v1, p0, Lv/g;->E0:F

    invoke-static {p1, p2, v0, v1}, Lu/d;->s(Lu/d;Lu/i;Lu/i;F)Lu/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu/d;->d(Lu/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public g1(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lv/g;->E0:F

    iput v0, p0, Lv/g;->F0:I

    iput p1, p0, Lv/g;->G0:I

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h1(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lv/g;->E0:F

    const/4 p1, -0x1

    iput p1, p0, Lv/g;->F0:I

    iput p1, p0, Lv/g;->G0:I

    :cond_0
    return-void
.end method

.method public i1(I)V
    .locals 3

    iget v0, p0, Lv/g;->I0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lv/g;->I0:I

    iget-object p1, p0, Lv/e;->R:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lv/g;->I0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lv/e;->I:Lv/d;

    iput-object p1, p0, Lv/g;->H0:Lv/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv/e;->J:Lv/d;

    iput-object p1, p0, Lv/g;->H0:Lv/d;

    :goto_0
    iget-object p1, p0, Lv/e;->R:Ljava/util/ArrayList;

    iget-object v0, p0, Lv/g;->H0:Lv/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lv/e;->Q:[Lv/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lv/e;->Q:[Lv/d;

    iget-object v2, p0, Lv/g;->H0:Lv/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public m(Lv/d$b;)Lv/d;
    .locals 2

    sget-object v0, Lv/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Lv/g;->I0:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lv/g;->H0:Lv/d;

    return-object p1

    :pswitch_2
    iget v0, p0, Lv/g;->I0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lv/g;->H0:Lv/d;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

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
