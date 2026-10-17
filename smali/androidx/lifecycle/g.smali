.class public Landroidx/lifecycle/g;
.super Landroidx/lifecycle/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/g$b;
    }
.end annotation


# instance fields
.field private b:Lq/a;

.field private c:Landroidx/lifecycle/c$b;

.field private final d:Ljava/lang/ref/WeakReference;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/f;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/c;-><init>()V

    new-instance v0, Lq/a;

    invoke-direct {v0}, Lq/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/g;->e:I

    iput-boolean v0, p0, Landroidx/lifecycle/g;->f:Z

    iput-boolean v0, p0, Landroidx/lifecycle/g;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/g;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/g;->d:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/c$b;->b:Landroidx/lifecycle/c$b;

    iput-object p1, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    return-void
.end method

.method private d(Landroidx/lifecycle/f;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v0}, Lq/b;->a()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/g;->g:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/g$b;

    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    iget-object v4, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/g;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lq/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-static {v3}, Landroidx/lifecycle/g;->f(Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$a;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/g;->h(Landroidx/lifecycle/c$a;)Landroidx/lifecycle/c$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/g;->o(Landroidx/lifecycle/c$b;)V

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/c$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/g;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Landroidx/lifecycle/e;)Landroidx/lifecycle/c$b;
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v0, p1}, Lq/a;->i(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/g$b;

    iget-object p1, p1, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/c$b;

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    invoke-static {v1, p1}, Landroidx/lifecycle/g;->l(Landroidx/lifecycle/c$b;Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$b;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/lifecycle/g;->l(Landroidx/lifecycle/c$b;Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$b;

    move-result-object p1

    return-object p1
.end method

.method private static f(Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$a;
    .locals 3

    sget-object v0, Landroidx/lifecycle/g$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroidx/lifecycle/c$a;->ON_PAUSE:Landroidx/lifecycle/c$a;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/lifecycle/c$a;->ON_STOP:Landroidx/lifecycle/c$a;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/lifecycle/c$a;->ON_DESTROY:Landroidx/lifecycle/c$a;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private g(Landroidx/lifecycle/f;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v0}, Lq/b;->d()Lq/b$d;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/g;->g:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/g$b;

    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    iget-object v4, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/g;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lq/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/g;->o(Landroidx/lifecycle/c$b;)V

    iget-object v3, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-static {v3}, Landroidx/lifecycle/g;->r(Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/c$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/g;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static h(Landroidx/lifecycle/c$a;)Landroidx/lifecycle/c$b;
    .locals 3

    sget-object v0, Landroidx/lifecycle/g$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Landroidx/lifecycle/c$b;->a:Landroidx/lifecycle/c$b;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/lifecycle/c$b;->e:Landroidx/lifecycle/c$b;

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/lifecycle/c$b;->d:Landroidx/lifecycle/c$b;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/lifecycle/c$b;->c:Landroidx/lifecycle/c$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()Z
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v0}, Lq/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v0}, Lq/b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g$b;

    iget-object v0, v0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    iget-object v2, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v2}, Lq/b;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/g$b;

    iget-object v2, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static l(Landroidx/lifecycle/c$b;Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private m(Landroidx/lifecycle/c$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    iget-boolean p1, p0, Landroidx/lifecycle/g;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/g;->e:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/g;->f:Z

    invoke-direct {p0}, Landroidx/lifecycle/g;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/g;->f:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/g;->g:Z

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private o(Landroidx/lifecycle/c$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/f;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/g;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroidx/lifecycle/g;->g:Z

    iget-object v1, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    iget-object v2, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v2}, Lq/b;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/g$b;

    iget-object v2, v2, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/lifecycle/g;->d(Landroidx/lifecycle/f;)V

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v1}, Lq/b;->e()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/g;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/g$b;

    iget-object v1, v1, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/lifecycle/g;->g(Landroidx/lifecycle/f;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/g;->g:Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static r(Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$a;
    .locals 3

    sget-object v0, Landroidx/lifecycle/g$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Landroidx/lifecycle/c$a;->ON_RESUME:Landroidx/lifecycle/c$a;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/lifecycle/c$a;->ON_START:Landroidx/lifecycle/c$a;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Landroidx/lifecycle/c$a;->ON_CREATE:Landroidx/lifecycle/c$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/e;)V
    .locals 6

    iget-object v0, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    sget-object v1, Landroidx/lifecycle/c$b;->a:Landroidx/lifecycle/c$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/c$b;->b:Landroidx/lifecycle/c$b;

    :goto_0
    new-instance v0, Landroidx/lifecycle/g$b;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/g$b;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/c$b;)V

    iget-object v1, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v1, p1, v0}, Lq/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/g$b;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/f;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroidx/lifecycle/g;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/g;->f:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/g;->e(Landroidx/lifecycle/e;)Landroidx/lifecycle/c$b;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/g;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/g;->e:I

    :goto_3
    iget-object v5, v0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v4, p1}, Lq/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-direct {p0, v4}, Landroidx/lifecycle/g;->o(Landroidx/lifecycle/c$b;)V

    iget-object v4, v0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-static {v4}, Landroidx/lifecycle/g;->r(Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/c$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/g;->n()V

    invoke-direct {p0, p1}, Landroidx/lifecycle/g;->e(Landroidx/lifecycle/e;)Landroidx/lifecycle/c$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    invoke-direct {p0}, Landroidx/lifecycle/g;->q()V

    :cond_6
    iget p1, p0, Landroidx/lifecycle/g;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/g;->e:I

    return-void
.end method

.method public b()Landroidx/lifecycle/c$b;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/g;->c:Landroidx/lifecycle/c$b;

    return-object v0
.end method

.method public c(Landroidx/lifecycle/e;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/g;->b:Lq/a;

    invoke-virtual {v0, p1}, Lq/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Landroidx/lifecycle/c$a;)V
    .locals 0

    invoke-static {p1}, Landroidx/lifecycle/g;->h(Landroidx/lifecycle/c$a;)Landroidx/lifecycle/c$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/g;->m(Landroidx/lifecycle/c$b;)V

    return-void
.end method

.method public k(Landroidx/lifecycle/c$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/g;->p(Landroidx/lifecycle/c$b;)V

    return-void
.end method

.method public p(Landroidx/lifecycle/c$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/lifecycle/g;->m(Landroidx/lifecycle/c$b;)V

    return-void
.end method
