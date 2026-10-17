.class public Lh0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field public a:Lt0/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh0/b;->a:Lt0/b;

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 11

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lh0/a;->h(LG0/e;)Lh0/a;

    move-result-object v0

    invoke-virtual {v0}, Lh0/a;->n()Lc0/g;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lh0/b;->a:Lt0/b;

    const-string p2, "Cookie store not specified in HTTP context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lh0/a;->m()Lk0/a;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lh0/b;->a:Lt0/b;

    const-string p2, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0}, LG0/f;->f()La0/n;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object p1, p0, Lh0/b;->a:Lt0/b;

    const-string p2, "Target host not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lh0/a;->p()Ln0/e;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object p1, p0, Lh0/b;->a:Lt0/b;

    const-string p2, "Connection route not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lh0/a;->s()Ld0/a;

    move-result-object v5

    invoke-virtual {v5}, Ld0/a;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "default"

    :cond_5
    iget-object v6, p0, Lh0/b;->a:Lt0/b;

    invoke-virtual {v6}, Lt0/b;->e()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lh0/b;->a:Lt0/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CookieSpec selected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_6
    instance-of v6, p1, Lf0/i;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    move-object v6, p1

    check-cast v6, Lf0/i;

    invoke-interface {v6}, Lf0/i;->getURI()Ljava/net/URI;

    move-result-object v6

    goto :goto_0

    :cond_7
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v8

    invoke-interface {v8}, La0/E;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-virtual {v3}, La0/n;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, La0/n;->c()I

    move-result v3

    if-gez v3, :cond_9

    invoke-interface {v4}, Ln0/e;->d()La0/n;

    move-result-object v3

    invoke-virtual {v3}, La0/n;->c()I

    move-result v3

    :cond_9
    new-instance v8, Lr0/f;

    const/4 v9, 0x0

    if-ltz v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    invoke-static {v7}, LH0/i;->c(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_2

    :cond_b
    const-string v7, "/"

    :goto_2
    invoke-interface {v4}, Ln0/e;->a()Z

    move-result v4

    invoke-direct {v8, v6, v3, v7, v4}, Lr0/f;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v5}, Lk0/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/k;

    if-nez v2, :cond_d

    iget-object p1, p0, Lh0/b;->a:Lt0/b;

    invoke-virtual {p1}, Lt0/b;->e()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lh0/b;->a:Lt0/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported cookie policy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_c
    return-void

    :cond_d
    invoke-interface {v2, v0}, Lr0/k;->b(LG0/e;)Lr0/i;

    move-result-object v0

    invoke-interface {v1}, Lc0/g;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/c;

    invoke-interface {v5, v4}, Lr0/c;->m(Ljava/util/Date;)Z

    move-result v6

    const-string v7, "Cookie "

    if-nez v6, :cond_10

    invoke-interface {v0, v5, v8}, Lr0/i;->a(Lr0/c;Lr0/f;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lh0/b;->a:Lt0/b;

    invoke-virtual {v6}, Lt0/b;->e()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lh0/b;->a:Lt0/b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " match "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    iget-object v6, p0, Lh0/b;->a:Lt0/b;

    invoke-virtual {v6}, Lt0/b;->e()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lh0/b;->a:Lt0/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " expired"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_11
    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_12
    if-eqz v9, :cond_13

    invoke-interface {v1, v4}, Lc0/g;->b(Ljava/util/Date;)Z

    :cond_13
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {v0, v3}, Lr0/i;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/e;

    invoke-interface {p1, v2}, La0/p;->i(La0/e;)V

    goto :goto_4

    :cond_14
    invoke-interface {v0}, Lr0/i;->c()I

    move-result v1

    if-lez v1, :cond_15

    invoke-interface {v0}, Lr0/i;->d()La0/e;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {p1, v1}, La0/p;->i(La0/e;)V

    :cond_15
    const-string p1, "http.cookie-spec"

    invoke-interface {p2, p1, v0}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http.cookie-origin"

    invoke-interface {p2, p1, v8}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
