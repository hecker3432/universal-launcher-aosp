.class public Lh0/a;
.super LG0/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(LG0/e;)V
    .locals 0

    invoke-direct {p0, p1}, LG0/f;-><init>(LG0/e;)V

    return-void
.end method

.method public static h(LG0/e;)Lh0/a;
    .locals 1

    instance-of v0, p0, Lh0/a;

    if-eqz v0, :cond_0

    check-cast p0, Lh0/a;

    return-object p0

    :cond_0
    new-instance v0, Lh0/a;

    invoke-direct {v0, p0}, Lh0/a;-><init>(LG0/e;)V

    return-object v0
.end method

.method private q(Ljava/lang/String;Ljava/lang/Class;)Lk0/a;
    .locals 0

    const-class p2, Lk0/a;

    invoke-virtual {p0, p1, p2}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk0/a;

    return-object p1
.end method


# virtual methods
.method public i()Lc0/a;
    .locals 2

    const-string v0, "http.auth.auth-cache"

    const-class v1, Lc0/a;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/a;

    return-object v0
.end method

.method public j()Lk0/a;
    .locals 2

    const-string v0, "http.authscheme-registry"

    const-class v1, Lb0/e;

    invoke-direct {p0, v0, v1}, Lh0/a;->q(Ljava/lang/String;Ljava/lang/Class;)Lk0/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Lr0/f;
    .locals 2

    const-string v0, "http.cookie-origin"

    const-class v1, Lr0/f;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/f;

    return-object v0
.end method

.method public l()Lr0/i;
    .locals 2

    const-string v0, "http.cookie-spec"

    const-class v1, Lr0/i;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/i;

    return-object v0
.end method

.method public m()Lk0/a;
    .locals 2

    const-string v0, "http.cookiespec-registry"

    const-class v1, Lr0/k;

    invoke-direct {p0, v0, v1}, Lh0/a;->q(Ljava/lang/String;Ljava/lang/Class;)Lk0/a;

    move-result-object v0

    return-object v0
.end method

.method public n()Lc0/g;
    .locals 2

    const-string v0, "http.cookie-store"

    const-class v1, Lc0/g;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/g;

    return-object v0
.end method

.method public o()Lc0/h;
    .locals 2

    const-string v0, "http.auth.credentials-provider"

    const-class v1, Lc0/h;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/h;

    return-object v0
.end method

.method public p()Ln0/e;
    .locals 2

    const-string v0, "http.route"

    const-class v1, Ln0/b;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/e;

    return-object v0
.end method

.method public r()Lb0/h;
    .locals 2

    const-string v0, "http.auth.proxy-scope"

    const-class v1, Lb0/h;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/h;

    return-object v0
.end method

.method public s()Ld0/a;
    .locals 2

    const-string v0, "http.request-config"

    const-class v1, Ld0/a;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld0/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ld0/a;->q:Ld0/a;

    :goto_0
    return-object v0
.end method

.method public t()Lb0/h;
    .locals 2

    const-string v0, "http.auth.target-scope"

    const-class v1, Lb0/h;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/h;

    return-object v0
.end method

.method public u(Lc0/a;)V
    .locals 1

    const-string v0, "http.auth.auth-cache"

    invoke-virtual {p0, v0, p1}, LG0/f;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
