.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData.b;",
        "Landroidx/lifecycle/d;"
    }
.end annotation


# instance fields
.field final d:Landroidx/lifecycle/f;

.field final synthetic e:Landroidx/lifecycle/LiveData;


# virtual methods
.method public a(Landroidx/lifecycle/f;Landroidx/lifecycle/c$a;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d:Landroidx/lifecycle/f;

    invoke-interface {p1}, Landroidx/lifecycle/f;->j()Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/c;->b()Landroidx/lifecycle/c$b;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/c$b;->a:Landroidx/lifecycle/c$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LiveData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/k;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$b;->b(Z)V

    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d:Landroidx/lifecycle/f;

    invoke-interface {v0}, Landroidx/lifecycle/f;->j()Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/c;->c(Landroidx/lifecycle/e;)V

    return-void
.end method

.method d()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d:Landroidx/lifecycle/f;

    invoke-interface {v0}, Landroidx/lifecycle/f;->j()Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/c;->b()Landroidx/lifecycle/c$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/c$b;->d:Landroidx/lifecycle/c$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c$b;->a(Landroidx/lifecycle/c$b;)Z

    move-result v0

    return v0
.end method
