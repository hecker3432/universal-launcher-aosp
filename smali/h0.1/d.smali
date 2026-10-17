.class abstract Lh0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field final a:Lt0/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh0/d;->a:Lt0/b;

    return-void
.end method

.method private a(Lb0/c;Lb0/m;La0/q;LG0/e;)La0/e;
    .locals 1

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lb0/l;

    if-eqz v0, :cond_0

    check-cast p1, Lb0/l;

    invoke-interface {p1, p2, p3, p4}, Lb0/l;->a(Lb0/m;La0/q;LG0/e;)La0/e;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, p2, p3}, Lb0/c;->d(Lb0/m;La0/q;)La0/e;

    move-result-object p1

    return-object p1
.end method

.method private c(Lb0/c;)V
    .locals 1

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method d(Lb0/h;La0/q;LG0/e;)V
    .locals 7

    invoke-virtual {p1}, Lb0/h;->b()Lb0/c;

    move-result-object v0

    invoke-virtual {p1}, Lb0/h;->c()Lb0/m;

    move-result-object v1

    sget-object v2, Lh0/d$a;->a:[I

    invoke-virtual {p1}, Lb0/h;->d()Lb0/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    const-string v4, " authentication error: "

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lb0/h;->a()Ljava/util/Queue;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/a;

    invoke-virtual {v0}, Lb0/a;->a()Lb0/c;

    move-result-object v1

    invoke-virtual {v0}, Lb0/a;->b()Lb0/m;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lb0/h;->i(Lb0/c;Lb0/m;)V

    iget-object v3, p0, Lh0/d;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lh0/d;->a:Lt0/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generating response to an authentication challenge using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " scheme"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-direct {p0, v1, v0, p2, p3}, Lh0/d;->a(Lb0/c;Lb0/m;La0/q;LG0/e;)La0/e;

    move-result-object v0

    invoke-interface {p2, v0}, La0/p;->i(La0/e;)V
    :try_end_0
    .catch Lb0/i; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lh0/d;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lh0/d;->a:Lt0/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lt0/b;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-direct {p0, v0}, Lh0/d;->c(Lb0/c;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Lh0/d;->c(Lb0/c;)V

    invoke-interface {v0}, Lb0/c;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    :try_start_1
    invoke-direct {p0, v0, v1, p2, p3}, Lh0/d;->a(Lb0/c;Lb0/m;La0/q;LG0/e;)La0/e;

    move-result-object p1

    invoke-interface {p2, p1}, La0/p;->i(La0/e;)V
    :try_end_1
    .catch Lb0/i; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    iget-object p2, p0, Lh0/d;->a:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->f()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lh0/d;->a:Lt0/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lt0/b;->c(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method
