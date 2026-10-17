.class Landroidx/fragment/app/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/l;

.field private final b:Landroidx/fragment/app/Fragment;

.field private c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/s;->c:I

    iput-object p1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/s;->c:I

    iput-object p1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p2, Landroidx/fragment/app/Fragment;->r:I

    iput-boolean v0, p2, Landroidx/fragment/app/Fragment;->o:Z

    iput-boolean v0, p2, Landroidx/fragment/app/Fragment;->l:Z

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    iget-object p1, p3, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/l;Ljava/lang/ClassLoader;Landroidx/fragment/app/i;Landroidx/fragment/app/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/s;->c:I

    iput-object p1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object p1, p4, Landroidx/fragment/app/r;->b:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Landroidx/fragment/app/i;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object p3, p4, Landroidx/fragment/app/r;->k:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object p2, p4, Landroidx/fragment/app/r;->k:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->n1(Landroid/os/Bundle;)V

    iget-object p2, p4, Landroidx/fragment/app/r;->c:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    iget-boolean p2, p4, Landroidx/fragment/app/r;->d:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->n:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->p:Z

    iget p2, p4, Landroidx/fragment/app/r;->e:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->w:I

    iget p2, p4, Landroidx/fragment/app/r;->f:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->x:I

    iget-object p2, p4, Landroidx/fragment/app/r;->g:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    iget-boolean p2, p4, Landroidx/fragment/app/r;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->B:Z

    iget-boolean p2, p4, Landroidx/fragment/app/r;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->m:Z

    iget-boolean p2, p4, Landroidx/fragment/app/r;->j:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->A:Z

    iget-boolean p2, p4, Landroidx/fragment/app/r;->l:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->z:Z

    invoke-static {}, Landroidx/lifecycle/c$b;->values()[Landroidx/lifecycle/c$b;

    move-result-object p2

    iget p3, p4, Landroidx/fragment/app/r;->m:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/c$b;

    iget-object p2, p4, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :goto_0
    const/4 p2, 0x2

    invoke-static {p2}, Landroidx/fragment/app/m;->q0(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private n()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->d1(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/l;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/s;->q()V

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->J:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->J:Z

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->J0(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method b(Landroidx/fragment/app/j;Landroidx/fragment/app/m;Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/j;

    iput-object p3, v0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    iput-object p2, v0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/m;

    iget-object p2, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->h()Landroid/content/Context;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/l;->g(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    iget-object p2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->K0()V

    iget-object p2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object p3, p2, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/j;->k(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->g0(Landroidx/fragment/app/Fragment;)V

    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object p3, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->h()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p3, p1, v1}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    return-void
.end method

.method c()I
    .locals 7

    iget v0, p0, Landroidx/fragment/app/s;->c:I

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->n:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ge v0, v3, :cond_1

    iget v1, v1, Landroidx/fragment/app/Fragment;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->m:Z

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->V()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->I:Z

    const/4 v6, 0x3

    if-eqz v2, :cond_6

    iget v1, v1, Landroidx/fragment/app/Fragment;->b:I

    if-ge v1, v6, :cond_6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    sget-object v1, Landroidx/fragment/app/s$a;->a:[I

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/c$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v6, :cond_7

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_8
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_9
    :goto_2
    return v0
.end method

.method d()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->Q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/l;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->N0(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->j1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/Fragment;->b:I

    :goto_0
    return-void
.end method

.method e(Landroidx/fragment/app/f;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v0, v0, Landroidx/fragment/app/Fragment;->x:I

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroidx/fragment/app/f;->d(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "unknown"

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for a container view with no id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->T0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/Fragment;->P0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    sget v3, LM/b;->a:I

    invoke-virtual {v2, v3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v1, :cond_8

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-static {p1}, LI/P;->K(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/Fragment;->H0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/fragment/app/l;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->M:Z

    :cond_a
    return-void
.end method

.method f(Landroidx/fragment/app/j;Landroidx/fragment/app/p;)V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->m:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->V()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Landroidx/fragment/app/p;->n(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iput v2, p1, Landroidx/fragment/app/Fragment;->b:I

    goto :goto_3

    :cond_3
    :goto_1
    instance-of v1, p1, Landroidx/lifecycle/r;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroidx/fragment/app/p;->l()Z

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/j;->h()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/j;->h()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    xor-int/2addr v3, p1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/p;->f(Landroidx/fragment/app/Fragment;)V

    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Q0()V

    iget-object p1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object p2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2, v2}, Landroidx/fragment/app/l;->d(Landroidx/fragment/app/Fragment;Z)V

    :goto_3
    return-void
.end method

.method g(Landroidx/fragment/app/p;)V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->S0()V

    iget-object v1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v3, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/l;->e(Landroidx/fragment/app/Fragment;Z)V

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/Fragment;->b:I

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/j;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/Fragment;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/m;

    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->V()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/p;->n(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initState called for fragment: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R()V

    :cond_3
    return-void
.end method

.method h()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->q:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->T0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/fragment/app/Fragment;->P0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    sget v3, LM/b;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->H0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/l;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_2
    return-void
.end method

.method i()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method j()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->Y0()V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method k(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->j:I

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-nez v0, :cond_3

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->I:Z

    :cond_3
    return-void
.end method

.method l()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->k1(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    return-void
.end method

.method m()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c1()V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/l;->i(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    return-void
.end method

.method o()Landroidx/fragment/app/Fragment$g;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/s;->n()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/fragment/app/Fragment$g;

    invoke-direct {v2, v0}, Landroidx/fragment/app/Fragment$g;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v2
.end method

.method p()Landroidx/fragment/app/r;
    .locals 4

    new-instance v0, Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget v2, v1, Landroidx/fragment/app/Fragment;->b:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v2, v0, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroidx/fragment/app/s;->n()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->i:Ljava/lang/String;

    const-string v3, "android:target_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->j:I

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    const-string v3, "android:target_req_state"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/r;->n:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-object v0
.end method

.method q()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method r(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/s;->c:I

    return-void
.end method

.method s()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->e1()V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/l;->k(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method t()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/m;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->f1()V

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/s;->b:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/l;->l(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
