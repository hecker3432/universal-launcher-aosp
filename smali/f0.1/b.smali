.class public abstract Lf0/b;
.super LD0/a;
.source "SourceFile"

# interfaces
.implements Lf0/a;
.implements Ljava/lang/Cloneable;
.implements La0/q;


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, LD0/a;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf0/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf0/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    iget-object v0, p0, Lf0/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj0/a;->cancel()Z

    :cond_0
    return-void
.end method

.method public b(Ll0/h;)V
    .locals 1

    new-instance v0, Lf0/b$b;

    invoke-direct {v0, p0, p1}, Lf0/b$b;-><init>(Lf0/b;Ll0/h;)V

    invoke-virtual {p0, v0}, Lf0/b;->j(Lj0/a;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/b;

    iget-object v1, p0, LD0/a;->a:LD0/r;

    invoke-static {v1}, Li0/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/r;

    iput-object v1, v0, LD0/a;->a:LD0/r;

    iget-object v1, p0, LD0/a;->b:LE0/e;

    invoke-static {v1}, Li0/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE0/e;

    iput-object v1, v0, LD0/a;->b:LE0/e;

    return-object v0
.end method

.method public e(Ll0/d;)V
    .locals 1

    new-instance v0, Lf0/b$a;

    invoke-direct {v0, p0, p1}, Lf0/b$a;-><init>(Lf0/b;Ll0/d;)V

    invoke-virtual {p0, v0}, Lf0/b;->j(Lj0/a;)V

    return-void
.end method

.method public isAborted()Z
    .locals 1

    iget-object v0, p0, Lf0/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j(Lj0/a;)V
    .locals 1

    iget-object v0, p0, Lf0/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf0/b;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
