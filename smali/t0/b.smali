.class public Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt0/b;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt0/b;->b:Z

    iput-boolean p1, p0, Lt0/b;->c:Z

    iput-boolean p1, p0, Lt0/b;->d:Z

    iput-boolean p1, p0, Lt0/b;->e:Z

    iput-boolean p1, p0, Lt0/b;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lt0/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lt0/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lt0/b;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lt0/b;->c:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lt0/b;->f:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lt0/b;->e:Z

    return v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lt0/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lt0/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
