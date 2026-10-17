.class public Lh0/c;
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

    iput-object v0, p0, Lh0/c;->a:Lt0/b;

    return-void
.end method

.method private a(La0/n;Lb0/c;Lb0/h;Lc0/h;)V
    .locals 4

    invoke-interface {p2}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh0/c;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh0/c;->a:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-using cached \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lb0/g;

    sget-object v2, Lb0/g;->g:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lb0/g;-><init>(La0/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lc0/h;->a(Lb0/g;)Lb0/m;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p4, "BASIC"

    invoke-interface {p2}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Lb0/b;->b:Lb0/b;

    invoke-virtual {p3, p4}, Lb0/h;->h(Lb0/b;)V

    goto :goto_0

    :cond_1
    sget-object p4, Lb0/b;->e:Lb0/b;

    invoke-virtual {p3, p4}, Lb0/h;->h(Lb0/b;)V

    :goto_0
    invoke-virtual {p3, p2, p1}, Lb0/h;->i(Lb0/c;Lb0/m;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lh0/c;->a:Lt0/b;

    const-string p2, "No credentials for preemptive authentication"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 6

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "HTTP context"

    invoke-static {p2, p1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lh0/a;->h(LG0/e;)Lh0/a;

    move-result-object p1

    invoke-virtual {p1}, Lh0/a;->i()Lc0/a;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lh0/c;->a:Lt0/b;

    const-string p2, "Auth cache not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lh0/a;->o()Lc0/h;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lh0/c;->a:Lt0/b;

    const-string p2, "Credentials provider not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lh0/a;->p()Ln0/e;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lh0/c;->a:Lt0/b;

    const-string p2, "Route info not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, LG0/f;->f()La0/n;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lh0/c;->a:Lt0/b;

    const-string p2, "Target host not set in the context"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v2}, La0/n;->c()I

    move-result v3

    if-gez v3, :cond_4

    new-instance v3, La0/n;

    invoke-virtual {v2}, La0/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ln0/e;->d()La0/n;

    move-result-object v5

    invoke-virtual {v5}, La0/n;->c()I

    move-result v5

    invoke-virtual {v2}, La0/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v3

    :cond_4
    invoke-virtual {p1}, Lh0/a;->t()Lb0/h;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lb0/h;->d()Lb0/b;

    move-result-object v4

    sget-object v5, Lb0/b;->a:Lb0/b;

    if-ne v4, v5, :cond_5

    invoke-interface {p2, v2}, Lc0/a;->a(La0/n;)Lb0/c;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v2, v4, v3, v0}, Lh0/c;->a(La0/n;Lb0/c;Lb0/h;Lc0/h;)V

    :cond_5
    invoke-interface {v1}, Ln0/e;->h()La0/n;

    move-result-object v1

    invoke-virtual {p1}, Lh0/a;->r()Lb0/h;

    move-result-object p1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lb0/h;->d()Lb0/b;

    move-result-object v2

    sget-object v3, Lb0/b;->a:Lb0/b;

    if-ne v2, v3, :cond_6

    invoke-interface {p2, v1}, Lc0/a;->a(La0/n;)Lb0/c;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-direct {p0, v1, p2, p1, v0}, Lh0/c;->a(La0/n;Lb0/c;Lb0/h;Lc0/h;)V

    :cond_6
    return-void
.end method
