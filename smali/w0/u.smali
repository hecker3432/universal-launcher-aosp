.class public Lw0/u;
.super LD0/a;
.source "SourceFile"

# interfaces
.implements Lf0/i;


# instance fields
.field private final c:La0/q;

.field private d:Ljava/net/URI;

.field private e:Ljava/lang/String;

.field private f:La0/C;

.field private g:I


# direct methods
.method public constructor <init>(La0/q;)V
    .locals 4

    invoke-direct {p0}, LD0/a;-><init>()V

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lw0/u;->c:La0/q;

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object v0

    invoke-virtual {p0, v0}, LD0/a;->c(LE0/e;)V

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object v0

    invoke-virtual {p0, v0}, LD0/a;->f([La0/e;)V

    instance-of v0, p1, Lf0/i;

    if-eqz v0, :cond_0

    check-cast p1, Lf0/i;

    invoke-interface {p1}, Lf0/i;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lw0/u;->d:Ljava/net/URI;

    invoke-interface {p1}, Lf0/i;->getMethod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lw0/u;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/u;->f:La0/C;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-interface {v0}, La0/E;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lw0/u;->d:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw0/u;->e:Ljava/lang/String;

    invoke-interface {p1}, La0/p;->getProtocolVersion()La0/C;

    move-result-object p1

    iput-object p1, p0, Lw0/u;->f:La0/C;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lw0/u;->g:I

    return-void

    :catch_0
    move-exception p1

    new-instance v1, La0/B;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid request URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La0/E;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw0/u;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()La0/C;
    .locals 1

    iget-object v0, p0, Lw0/u;->f:La0/C;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LD0/a;->getParams()LE0/e;

    move-result-object v0

    invoke-static {v0}, LE0/f;->b(LE0/e;)La0/C;

    move-result-object v0

    iput-object v0, p0, Lw0/u;->f:La0/C;

    :cond_0
    iget-object v0, p0, Lw0/u;->f:La0/C;

    return-object v0
.end method

.method public getRequestLine()La0/E;
    .locals 4

    invoke-virtual {p0}, Lw0/u;->getProtocolVersion()La0/C;

    move-result-object v0

    iget-object v1, p0, Lw0/u;->d:Ljava/net/URI;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "/"

    :cond_2
    new-instance v2, LD0/n;

    invoke-virtual {p0}, Lw0/u;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, LD0/n;-><init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V

    return-object v2
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lw0/u;->d:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lw0/u;->g:I

    return v0
.end method

.method public k()La0/q;
    .locals 1

    iget-object v0, p0, Lw0/u;->c:La0/q;

    return-object v0
.end method

.method public l()V
    .locals 1

    iget v0, p0, Lw0/u;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw0/u;->g:I

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0}, LD0/r;->b()V

    iget-object v0, p0, Lw0/u;->c:La0/q;

    invoke-interface {v0}, La0/p;->getAllHeaders()[La0/e;

    move-result-object v0

    invoke-virtual {p0, v0}, LD0/a;->f([La0/e;)V

    return-void
.end method

.method public o(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lw0/u;->d:Ljava/net/URI;

    return-void
.end method
