.class public Ly0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt0/b;

.field protected final b:Ln0/b;

.field protected final c:I

.field protected final d:Lm0/b;

.field protected final e:Ljava/util/LinkedList;

.field protected final f:Ljava/util/Queue;

.field protected g:I


# direct methods
.method public constructor <init>(Ln0/b;Lm0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ly0/f;->a:Lt0/b;

    iput-object p1, p0, Ly0/f;->b:Ln0/b;

    iput-object p2, p0, Ly0/f;->d:Lm0/b;

    invoke-interface {p2, p1}, Lm0/b;->a(Ln0/b;)I

    move-result p1

    iput p1, p0, Ly0/f;->c:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ly0/f;->e:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ly0/f;->f:Ljava/util/Queue;

    const/4 p1, 0x0

    iput p1, p0, Ly0/f;->g:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ly0/b;
    .locals 3

    iget-object v0, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/b;

    invoke-virtual {v1}, Lx0/b;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lx0/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, LH0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Ly0/f;->f()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly0/b;

    invoke-virtual {p1}, Ly0/b;->e()V

    invoke-virtual {p1}, Ly0/b;->h()Ll0/p;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, La0/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ly0/f;->a:Lt0/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ly0/b;)V
    .locals 1

    iget-object v0, p0, Ly0/f;->b:Ln0/b;

    invoke-virtual {p1}, Ly0/b;->i()Ln0/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln0/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Entry not planned for this pool"

    invoke-static {p1, v0}, LH0/a;->a(ZLjava/lang/String;)V

    iget p1, p0, Ly0/f;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ly0/f;->g:I

    return-void
.end method

.method public c(Ly0/b;)Z
    .locals 1

    iget-object v0, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget v0, p0, Ly0/f;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ly0/f;->g:I

    :cond_0
    return p1
.end method

.method public d()V
    .locals 3

    iget v0, p0, Ly0/f;->g:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "There is no entry that could be dropped"

    invoke-static {v0, v2}, LH0/b;->a(ZLjava/lang/String;)V

    iget v0, p0, Ly0/f;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Ly0/f;->g:I

    return-void
.end method

.method public e(Ly0/b;)V
    .locals 2

    iget v0, p0, Ly0/f;->g:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ly0/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry allocated from this pool. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly0/f;->b:Ln0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry created for this pool. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly0/f;->b:Ln0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Ly0/f;->d:Lm0/b;

    iget-object v1, p0, Ly0/f;->b:Ln0/b;

    invoke-interface {v0, v1}, Lm0/b;->a(Ln0/b;)I

    move-result v0

    iget v1, p0, Ly0/f;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ly0/f;->c:I

    return v0
.end method

.method public final h()Ln0/b;
    .locals 1

    iget-object v0, p0, Ly0/f;->b:Ln0/b;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Ly0/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Ly0/f;->g:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ly0/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Ly0/h;
    .locals 1

    iget-object v0, p0, Ly0/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/h;

    return-object v0
.end method

.method public l(Ly0/h;)V
    .locals 1

    const-string v0, "Waiting thread"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ly0/f;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Ly0/h;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly0/f;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
