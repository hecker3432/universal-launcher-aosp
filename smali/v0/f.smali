.class public abstract Lv0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt0/b;


# direct methods
.method public constructor <init>(Lt0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lt0/b;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lv0/f;->a:Lt0/b;

    return-void
.end method


# virtual methods
.method public a(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lv0/f;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv0/f;->a:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, La0/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-interface {p3, p1, p2, p5}, Lc0/b;->d(La0/n;La0/s;LG0/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lv0/f;->a:Lt0/b;

    const-string p2, "Response contains no authentication challenges"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p4}, Lb0/h;->b()Lb0/c;

    move-result-object v2

    sget-object v3, Lv0/f$a;->a:[I

    invoke-virtual {p4}, Lb0/h;->d()Lb0/b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p4}, Lb0/h;->e()V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    const-string v1, "Auth scheme is null"

    invoke-virtual {p2, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p5}, Lc0/b;->e(La0/n;Lb0/c;LG0/e;)V

    invoke-virtual {p4}, Lb0/h;->e()V

    sget-object p1, Lb0/b;->d:Lb0/b;

    invoke-virtual {p4, p1}, Lb0/h;->h(Lb0/b;)V

    return v0

    :cond_5
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/e;

    if-eqz v3, :cond_7

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    const-string v1, "Authorization challenge processed"

    invoke-virtual {p2, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lb0/c;->f(La0/e;)V

    invoke-interface {v2}, Lb0/c;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    const-string v1, "Authentication failed"

    invoke-virtual {p2, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lb0/h;->b()Lb0/c;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lc0/b;->e(La0/n;Lb0/c;LG0/e;)V

    invoke-virtual {p4}, Lb0/h;->e()V

    sget-object p1, Lb0/b;->d:Lb0/b;

    invoke-virtual {p4, p1}, Lb0/h;->h(Lb0/b;)V

    return v0

    :cond_6
    sget-object p1, Lb0/b;->c:Lb0/b;

    invoke-virtual {p4, p1}, Lb0/h;->h(Lb0/b;)V

    return v4

    :cond_7
    invoke-virtual {p4}, Lb0/h;->e()V

    :cond_8
    :goto_1
    invoke-interface {p3, v1, p1, p2, p5}, Lc0/b;->b(Ljava/util/Map;La0/n;La0/s;LG0/e;)Ljava/util/Queue;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Selected authentication options: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_9
    sget-object p2, Lb0/b;->b:Lb0/b;

    invoke-virtual {p4, p2}, Lb0/h;->h(Lb0/b;)V

    invoke-virtual {p4, p1}, Lb0/h;->j(Ljava/util/Queue;)V
    :try_end_0
    .catch Lb0/o; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_a
    return v0

    :goto_2
    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->h()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Malformed challenge: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lt0/b;->i(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p4}, Lb0/h;->e()V

    return v0
.end method

.method public b(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z
    .locals 2

    invoke-interface {p3, p1, p2, p5}, Lc0/b;->c(La0/n;La0/s;LG0/e;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    const-string v1, "Authentication required"

    invoke-virtual {p2, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lb0/h;->d()Lb0/b;

    move-result-object p2

    sget-object v1, Lb0/b;->e:Lb0/b;

    if-ne p2, v1, :cond_0

    invoke-virtual {p4}, Lb0/h;->b()Lb0/c;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lc0/b;->e(La0/n;Lb0/c;LG0/e;)V

    :cond_0
    return v0

    :cond_1
    sget-object p2, Lv0/f$a;->a:[I

    invoke-virtual {p4}, Lb0/h;->d()Lb0/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    sget-object p1, Lb0/b;->a:Lb0/b;

    invoke-virtual {p4, p1}, Lb0/h;->h(Lb0/b;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lv0/f;->a:Lt0/b;

    const-string v0, "Authentication succeeded"

    invoke-virtual {p2, v0}, Lt0/b;->a(Ljava/lang/Object;)V

    sget-object p2, Lb0/b;->e:Lb0/b;

    invoke-virtual {p4, p2}, Lb0/h;->h(Lb0/b;)V

    invoke-virtual {p4}, Lb0/h;->b()Lb0/c;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lc0/b;->a(La0/n;Lb0/c;LG0/e;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
