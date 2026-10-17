.class LI/o0$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field final a:LI/o0;


# direct methods
.method constructor <init>(LI/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/o0$i;->a:LI/o0;

    return-void
.end method


# virtual methods
.method a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$i;->a:LI/o0;

    return-object v0
.end method

.method b()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$i;->a:LI/o0;

    return-object v0
.end method

.method c()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$i;->a:LI/o0;

    return-object v0
.end method

.method d()LI/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method e()LB/c;
    .locals 1

    sget-object v0, LB/c;->e:LB/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LI/o0$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LI/o0$i;

    invoke-virtual {p0}, LI/o0$i;->i()Z

    move-result v1

    invoke-virtual {p1}, LI/o0$i;->i()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LI/o0$i;->h()Z

    move-result v1

    invoke-virtual {p1}, LI/o0$i;->h()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, LI/o0$i;->f()LB/c;

    move-result-object v1

    invoke-virtual {p1}, LI/o0$i;->f()LB/c;

    move-result-object v3

    invoke-static {v1, v3}, LH/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LI/o0$i;->e()LB/c;

    move-result-object v1

    invoke-virtual {p1}, LI/o0$i;->e()LB/c;

    move-result-object v3

    invoke-static {v1, v3}, LH/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LI/o0$i;->d()LI/c;

    move-result-object v1

    invoke-virtual {p1}, LI/o0$i;->d()LI/c;

    move-result-object p1

    invoke-static {v1, p1}, LH/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()LB/c;
    .locals 1

    sget-object v0, LB/c;->e:LB/c;

    return-object v0
.end method

.method g(IIII)LI/o0;
    .locals 0

    sget-object p1, LI/o0;->b:LI/o0;

    return-object p1
.end method

.method h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, LI/o0$i;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, LI/o0$i;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, LI/o0$i;->f()LB/c;

    move-result-object v2

    invoke-virtual {p0}, LI/o0$i;->e()LB/c;

    move-result-object v3

    invoke-virtual {p0}, LI/o0$i;->d()LI/c;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, LH/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
