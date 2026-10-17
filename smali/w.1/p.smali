.class public abstract Lw/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/p$b;
    }
.end annotation


# instance fields
.field public a:I

.field b:Lv/e;

.field c:Lw/m;

.field protected d:Lv/e$b;

.field e:Lw/g;

.field public f:I

.field g:Z

.field public h:Lw/f;

.field public i:Lw/f;

.field protected j:Lw/p$b;


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw/g;

    invoke-direct {v0, p0}, Lw/g;-><init>(Lw/p;)V

    iput-object v0, p0, Lw/p;->e:Lw/g;

    const/4 v0, 0x0

    iput v0, p0, Lw/p;->f:I

    iput-boolean v0, p0, Lw/p;->g:Z

    new-instance v0, Lw/f;

    invoke-direct {v0, p0}, Lw/f;-><init>(Lw/p;)V

    iput-object v0, p0, Lw/p;->h:Lw/f;

    new-instance v0, Lw/f;

    invoke-direct {v0, p0}, Lw/f;-><init>(Lw/p;)V

    iput-object v0, p0, Lw/p;->i:Lw/f;

    sget-object v0, Lw/p$b;->a:Lw/p$b;

    iput-object v0, p0, Lw/p;->j:Lw/p$b;

    iput-object p1, p0, Lw/p;->b:Lv/e;

    return-void
.end method

.method private l(II)V
    .locals 7

    iget v0, p0, Lw/p;->a:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lw/p;->b:Lv/e;

    iget-object v3, v0, Lv/e;->e:Lw/l;

    iget-object v4, v3, Lw/p;->d:Lv/e$b;

    sget-object v5, Lv/e$b;->c:Lv/e$b;

    if-ne v4, v5, :cond_1

    iget v4, v3, Lw/p;->a:I

    if-ne v4, p2, :cond_1

    iget-object v4, v0, Lv/e;->f:Lw/n;

    iget-object v6, v4, Lw/p;->d:Lv/e$b;

    if-ne v6, v5, :cond_1

    iget v4, v4, Lw/p;->a:I

    if-ne v4, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v3, v0, Lv/e;->f:Lw/n;

    :cond_2
    iget-object p2, v3, Lw/p;->e:Lw/g;

    iget-boolean p2, p2, Lw/f;->j:Z

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lv/e;->t()F

    move-result p2

    if-ne p1, v1, :cond_3

    iget-object p1, v3, Lw/p;->e:Lw/g;

    iget p1, p1, Lw/f;->g:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_0

    :cond_3
    iget-object p1, v3, Lw/p;->e:Lw/g;

    iget p1, p1, Lw/f;->g:I

    int-to-float p1, p1

    mul-float p2, p2, p1

    add-float/2addr p2, v2

    float-to-int p1, p2

    :goto_0
    iget-object p2, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p2, p1}, Lw/g;->d(I)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lw/p;->b:Lv/e;

    invoke-virtual {p2}, Lv/e;->I()Lv/e;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_5

    iget-object p2, p2, Lv/e;->e:Lw/l;

    goto :goto_1

    :cond_5
    iget-object p2, p2, Lv/e;->f:Lw/n;

    :goto_1
    iget-object p2, p2, Lw/p;->e:Lw/g;

    iget-boolean v0, p2, Lw/f;->j:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lw/p;->b:Lv/e;

    if-nez p1, :cond_6

    iget v0, v0, Lv/e;->v:F

    goto :goto_2

    :cond_6
    iget v0, v0, Lv/e;->y:F

    :goto_2
    iget p2, p2, Lw/f;->g:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, p2, p1}, Lw/p;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lw/g;->d(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget v0, v0, Lw/g;->m:I

    invoke-virtual {p0, v0, p1}, Lw/p;->g(II)I

    move-result p1

    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lw/g;->d(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lw/p;->e:Lw/g;

    invoke-virtual {p0, p2, p1}, Lw/p;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lw/g;->d(I)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract a(Lw/d;)V
.end method

.method protected final b(Lw/f;Lw/f;I)V
    .locals 1

    iget-object v0, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lw/f;->f:I

    iget-object p2, p2, Lw/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c(Lw/f;Lw/f;ILw/g;)V
    .locals 2

    iget-object v0, p1, Lw/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lw/f;->l:Ljava/util/List;

    iget-object v1, p0, Lw/p;->e:Lw/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lw/f;->h:I

    iput-object p4, p1, Lw/f;->i:Lw/g;

    iget-object p2, p2, Lw/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Lw/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method protected final g(II)I
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, Lw/p;->b:Lv/e;

    iget v0, p2, Lv/e;->u:I

    iget p2, p2, Lv/e;->t:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lw/p;->b:Lv/e;

    iget v0, p2, Lv/e;->x:I

    iget p2, p2, Lv/e;->w:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    :goto_0
    move p1, p2

    :cond_3
    return p1
.end method

.method protected final h(Lv/d;)Lw/f;
    .locals 3

    iget-object p1, p1, Lv/d;->f:Lv/d;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lv/d;->d:Lv/e;

    iget-object p1, p1, Lv/d;->e:Lv/d$b;

    sget-object v2, Lw/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lv/e;->f:Lw/n;

    iget-object v0, p1, Lw/p;->i:Lw/f;

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lv/e;->f:Lw/n;

    iget-object v0, p1, Lw/n;->k:Lw/f;

    goto :goto_0

    :cond_3
    iget-object p1, v1, Lv/e;->f:Lw/n;

    iget-object v0, p1, Lw/p;->h:Lw/f;

    goto :goto_0

    :cond_4
    iget-object p1, v1, Lv/e;->e:Lw/l;

    iget-object v0, p1, Lw/p;->i:Lw/f;

    goto :goto_0

    :cond_5
    iget-object p1, v1, Lv/e;->e:Lw/l;

    iget-object v0, p1, Lw/p;->h:Lw/f;

    :goto_0
    return-object v0
.end method

.method protected final i(Lv/d;I)Lw/f;
    .locals 2

    iget-object p1, p1, Lv/d;->f:Lv/d;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lv/d;->d:Lv/e;

    if-nez p2, :cond_1

    iget-object p2, v1, Lv/e;->e:Lw/l;

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lv/e;->f:Lw/n;

    :goto_0
    iget-object p1, p1, Lv/d;->e:Lv/d$b;

    sget-object v1, Lw/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lw/p;->i:Lw/f;

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lw/p;->h:Lw/f;

    :goto_1
    return-object v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lw/p;->e:Lw/g;

    iget-boolean v1, v0, Lw/f;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lw/f;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lw/p;->g:Z

    return v0
.end method

.method abstract m()Z
.end method

.method protected n(Lw/d;Lv/d;Lv/d;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object p1

    invoke-virtual {p0, p3}, Lw/p;->h(Lv/d;)Lw/f;

    move-result-object v0

    iget-boolean v1, p1, Lw/f;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lw/f;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Lw/f;->g:I

    invoke-virtual {p2}, Lv/d;->e()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Lw/f;->g:I

    invoke-virtual {p3}, Lv/d;->e()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget-boolean v2, v2, Lw/f;->j:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lw/p;->d:Lv/e$b;

    sget-object v3, Lv/e$b;->c:Lv/e$b;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p4, p3}, Lw/p;->l(II)V

    :cond_1
    iget-object v2, p0, Lw/p;->e:Lw/g;

    iget-boolean v3, v2, Lw/f;->j:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v2, v2, Lw/f;->g:I

    if-ne v2, p3, :cond_3

    iget-object p1, p0, Lw/p;->h:Lw/f;

    invoke-virtual {p1, v1}, Lw/f;->d(I)V

    iget-object p1, p0, Lw/p;->i:Lw/f;

    invoke-virtual {p1, p2}, Lw/f;->d(I)V

    return-void

    :cond_3
    iget-object p3, p0, Lw/p;->b:Lv/e;

    if-nez p4, :cond_4

    invoke-virtual {p3}, Lv/e;->w()F

    move-result p3

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lv/e;->M()F

    move-result p3

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    iget v1, p1, Lw/f;->g:I

    iget p2, v0, Lw/f;->g:I

    const/high16 p3, 0x3f000000    # 0.5f

    :cond_5
    sub-int/2addr p2, v1

    iget-object p1, p0, Lw/p;->e:Lw/g;

    iget p1, p1, Lw/f;->g:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lw/p;->h:Lw/f;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float p2, p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lw/f;->d(I)V

    iget-object p1, p0, Lw/p;->i:Lw/f;

    iget-object p2, p0, Lw/p;->h:Lw/f;

    iget p2, p2, Lw/f;->g:I

    iget-object p3, p0, Lw/p;->e:Lw/g;

    iget p3, p3, Lw/f;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lw/f;->d(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected o(Lw/d;)V
    .locals 0

    return-void
.end method

.method protected p(Lw/d;)V
    .locals 0

    return-void
.end method
