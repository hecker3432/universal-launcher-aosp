.class public Lf0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/j$a;,
        Lf0/j$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/nio/charset/Charset;

.field private c:La0/C;

.field private d:Ljava/net/URI;

.field private e:LD0/r;

.field private f:La0/k;

.field private g:Ljava/util/List;

.field private h:Ld0/a;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf0/j;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La0/c;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lf0/j;->b:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lf0/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(La0/q;)Lf0/j;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lf0/j;

    invoke-direct {v0}, Lf0/j;-><init>()V

    invoke-direct {v0, p0}, Lf0/j;->c(La0/q;)Lf0/j;

    move-result-object p0

    return-object p0
.end method

.method private c(La0/q;)Lf0/j;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf0/j;->a:Ljava/lang/String;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getProtocolVersion()La0/C;

    move-result-object v0

    iput-object v0, p0, Lf0/j;->c:La0/C;

    iget-object v0, p0, Lf0/j;->e:LD0/r;

    if-nez v0, :cond_1

    new-instance v0, LD0/r;

    invoke-direct {v0}, LD0/r;-><init>()V

    iput-object v0, p0, Lf0/j;->e:LD0/r;

    :cond_1
    iget-object v0, p0, Lf0/j;->e:LD0/r;

    invoke-virtual {v0}, LD0/r;->b()V

    iget-object v0, p0, Lf0/j;->e:LD0/r;

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r;->j([La0/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf0/j;->g:Ljava/util/List;

    iput-object v0, p0, Lf0/j;->f:La0/k;

    instance-of v1, p1, La0/l;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, La0/l;

    invoke-interface {v1}, La0/l;->getEntity()La0/k;

    move-result-object v1

    invoke-static {v1}, Ls0/e;->d(La0/k;)Ls0/e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ls0/e;->f()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls0/e;->e:Ls0/e;

    invoke-virtual {v3}, Ls0/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v1}, Li0/e;->i(La0/k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, Lf0/j;->g:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lf0/j;->f:La0/k;

    :cond_3
    :goto_0
    instance-of v1, p1, Lf0/i;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lf0/i;

    invoke-interface {v1}, Lf0/i;->getURI()Ljava/net/URI;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v1

    invoke-interface {v1}, La0/E;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    :goto_1
    new-instance v2, Li0/c;

    invoke-direct {v2, v1}, Li0/c;-><init>(Ljava/net/URI;)V

    iget-object v3, p0, Lf0/j;->g:Ljava/util/List;

    if-nez v3, :cond_6

    invoke-virtual {v2}, Li0/c;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v3, p0, Lf0/j;->g:Ljava/util/List;

    invoke-virtual {v2}, Li0/c;->d()Li0/c;

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lf0/j;->g:Ljava/util/List;

    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Li0/c;->b()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lf0/j;->d:Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    iput-object v1, p0, Lf0/j;->d:Ljava/net/URI;

    :goto_3
    instance-of v1, p1, Lf0/d;

    if-eqz v1, :cond_7

    check-cast p1, Lf0/d;

    invoke-interface {p1}, Lf0/d;->g()Ld0/a;

    move-result-object p1

    iput-object p1, p0, Lf0/j;->h:Ld0/a;

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lf0/j;->h:Ld0/a;

    :goto_4
    return-object p0
.end method


# virtual methods
.method public a()Lf0/i;
    .locals 4

    iget-object v0, p0, Lf0/j;->d:Ljava/net/URI;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lf0/j;->f:La0/k;

    iget-object v2, p0, Lf0/j;->g:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    const-string v2, "POST"

    iget-object v3, p0, Lf0/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PUT"

    iget-object v3, p0, Lf0/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Le0/a;

    iget-object v2, p0, Lf0/j;->g:Ljava/util/List;

    sget-object v3, LG0/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Le0/a;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v2, Li0/c;

    invoke-direct {v2, v0}, Li0/c;-><init>(Ljava/net/URI;)V

    iget-object v3, p0, Lf0/j;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Li0/c;->p(Ljava/nio/charset/Charset;)Li0/c;

    move-result-object v2

    iget-object v3, p0, Lf0/j;->g:Ljava/util/List;

    invoke-virtual {v2, v3}, Li0/c;->a(Ljava/util/List;)Li0/c;

    move-result-object v2

    invoke-virtual {v2}, Li0/c;->b()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Lf0/j$b;

    iget-object v2, p0, Lf0/j;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lf0/j$b;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lf0/j$a;

    iget-object v3, p0, Lf0/j;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lf0/j$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lf0/e;->a(La0/k;)V

    move-object v1, v2

    :goto_2
    iget-object v2, p0, Lf0/j;->c:La0/C;

    invoke-virtual {v1, v2}, Lf0/h;->l(La0/C;)V

    invoke-virtual {v1, v0}, Lf0/h;->m(Ljava/net/URI;)V

    iget-object v0, p0, Lf0/j;->e:LD0/r;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LD0/r;->d()[La0/e;

    move-result-object v0

    invoke-virtual {v1, v0}, LD0/a;->f([La0/e;)V

    :cond_5
    iget-object v0, p0, Lf0/j;->h:Ld0/a;

    invoke-virtual {v1, v0}, Lf0/h;->k(Ld0/a;)V

    return-object v1
.end method

.method public d(Ljava/net/URI;)Lf0/j;
    .locals 0

    iput-object p1, p0, Lf0/j;->d:Ljava/net/URI;

    return-object p0
.end method
