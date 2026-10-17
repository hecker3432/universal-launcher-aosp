.class public Landroid/support/constraint/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/d$a;,
        Landroid/support/constraint/a/a/d$b;,
        Landroid/support/constraint/a/a/d$c;
    }
.end annotation


# instance fields
.field final a:Landroid/support/constraint/a/a/e;

.field final b:Landroid/support/constraint/a/a/d$c;

.field c:Landroid/support/constraint/a/a/d;

.field public d:I

.field e:I

.field f:Landroid/support/constraint/a/h;

.field private g:Landroid/support/constraint/a/a/k;

.field private h:Landroid/support/constraint/a/a/d$b;

.field private i:Landroid/support/constraint/a/a/d$a;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/a/d$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/a/a/k;

    invoke-direct {v0, p0}, Landroid/support/constraint/a/a/k;-><init>(Landroid/support/constraint/a/a/d;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/k;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/a/d;->e:I

    sget-object v1, Landroid/support/constraint/a/a/d$b;->a:Landroid/support/constraint/a/a/d$b;

    iput-object v1, p0, Landroid/support/constraint/a/a/d;->h:Landroid/support/constraint/a/a/d$b;

    sget-object v1, Landroid/support/constraint/a/a/d$a;->a:Landroid/support/constraint/a/a/d$a;

    iput-object v1, p0, Landroid/support/constraint/a/a/d;->i:Landroid/support/constraint/a/a/d$a;

    iput v0, p0, Landroid/support/constraint/a/a/d;->j:I

    iput-object p1, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    iput-object p2, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/constraint/a/a/k;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/k;

    return-object v0
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 2

    iget-object p1, p0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/constraint/a/h;

    sget-object v0, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/support/constraint/a/h;-><init>(Landroid/support/constraint/a/h$a;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    invoke-virtual {p1}, Landroid/support/constraint/a/h;->b()V

    :goto_0
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/d;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->d()Landroid/support/constraint/a/a/d$c;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    sget-object v2, Landroid/support/constraint/a/a/d$c;->f:Landroid/support/constraint/a/a/d$c;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->c()Landroid/support/constraint/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->c()Landroid/support/constraint/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->z()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    :cond_3
    sget-object v2, Landroid/support/constraint/a/a/d$1;->a:[I

    iget-object v4, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/d$c;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    :pswitch_1
    sget-object v2, Landroid/support/constraint/a/a/d$c;->c:Landroid/support/constraint/a/a/d$c;

    if-eq v1, v2, :cond_5

    sget-object v2, Landroid/support/constraint/a/a/d$c;->e:Landroid/support/constraint/a/a/d$c;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->c()Landroid/support/constraint/a/a/e;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/a/a/g;

    if-eqz p1, :cond_8

    if-nez v2, :cond_7

    sget-object p1, Landroid/support/constraint/a/a/d$c;->i:Landroid/support/constraint/a/a/d$c;

    if-ne v1, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x1

    :cond_8
    :goto_3
    return v2

    :pswitch_2
    sget-object v2, Landroid/support/constraint/a/a/d$c;->b:Landroid/support/constraint/a/a/d$c;

    if-eq v1, v2, :cond_a

    sget-object v2, Landroid/support/constraint/a/a/d$c;->d:Landroid/support/constraint/a/a/d$c;

    if-ne v1, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->c()Landroid/support/constraint/a/a/e;

    move-result-object p1

    instance-of p1, p1, Landroid/support/constraint/a/a/g;

    if-eqz p1, :cond_d

    if-nez v2, :cond_c

    sget-object p1, Landroid/support/constraint/a/a/d$c;->h:Landroid/support/constraint/a/a/d$c;

    if-ne v1, p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v2, 0x1

    :cond_d
    :goto_7
    return v2

    :pswitch_3
    sget-object p1, Landroid/support/constraint/a/a/d$c;->f:Landroid/support/constraint/a/a/d$c;

    if-eq v1, p1, :cond_e

    sget-object p1, Landroid/support/constraint/a/a/d$c;->h:Landroid/support/constraint/a/a/d$c;

    if-eq v1, p1, :cond_e

    sget-object p1, Landroid/support/constraint/a/a/d$c;->i:Landroid/support/constraint/a/a/d$c;

    if-eq v1, p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/support/constraint/a/a/d;IILandroid/support/constraint/a/a/d$b;IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iput v1, p0, Landroid/support/constraint/a/a/d;->d:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/a/a/d;->e:I

    sget-object p1, Landroid/support/constraint/a/a/d$b;->a:Landroid/support/constraint/a/a/d$b;

    iput-object p1, p0, Landroid/support/constraint/a/a/d;->h:Landroid/support/constraint/a/a/d$b;

    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/a/a/d;->j:I

    return v0

    :cond_0
    if-nez p6, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/d;)Z

    move-result p6

    if-nez p6, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-lez p2, :cond_2

    iput p2, p0, Landroid/support/constraint/a/a/d;->d:I

    goto :goto_0

    :cond_2
    iput v1, p0, Landroid/support/constraint/a/a/d;->d:I

    :goto_0
    iput p3, p0, Landroid/support/constraint/a/a/d;->e:I

    iput-object p4, p0, Landroid/support/constraint/a/a/d;->h:Landroid/support/constraint/a/a/d$b;

    iput p5, p0, Landroid/support/constraint/a/a/d;->j:I

    return v0
.end method

.method public a(Landroid/support/constraint/a/a/d;ILandroid/support/constraint/a/a/d$b;I)Z
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/d;IILandroid/support/constraint/a/a/d$b;IZ)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/support/constraint/a/h;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->f:Landroid/support/constraint/a/h;

    return-object v0
.end method

.method public c()Landroid/support/constraint/a/a/e;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    return-object v0
.end method

.method public d()Landroid/support/constraint/a/a/d$c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    return-object v0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->k()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/d;->e:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->k()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/d;->e:I

    return v0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/d;->d:I

    return v0
.end method

.method public f()Landroid/support/constraint/a/a/d$b;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->h:Landroid/support/constraint/a/a/d$b;

    return-object v0
.end method

.method public g()Landroid/support/constraint/a/a/d;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/d;->j:I

    return v0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/a/d;->e:I

    sget-object v1, Landroid/support/constraint/a/a/d$b;->b:Landroid/support/constraint/a/a/d$b;

    iput-object v1, p0, Landroid/support/constraint/a/a/d;->h:Landroid/support/constraint/a/a/d$b;

    iput v0, p0, Landroid/support/constraint/a/a/d;->j:I

    sget-object v0, Landroid/support/constraint/a/a/d$a;->a:Landroid/support/constraint/a/a/d$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->i:Landroid/support/constraint/a/a/d$a;

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->g:Landroid/support/constraint/a/a/k;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/k;->b()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->c:Landroid/support/constraint/a/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/d$c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
