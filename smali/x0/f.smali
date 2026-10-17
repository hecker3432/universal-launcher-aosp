.class public Lx0/f;
.super Lu0/f;
.source "SourceFile"

# interfaces
.implements Ll0/p;
.implements Ll0/o;
.implements LG0/e;


# instance fields
.field public k:Lt0/b;

.field public l:Lt0/b;

.field public m:Lt0/b;

.field private volatile n:Ljava/net/Socket;

.field private o:La0/n;

.field private p:Z

.field private volatile q:Z

.field private final r:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu0/f;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx0/f;->k:Lt0/b;

    new-instance v0, Lt0/b;

    const-string v1, "cz.msebera.android.httpclient.headers"

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx0/f;->l:Lt0/b;

    new-instance v0, Lt0/b;

    const-string v1, "cz.msebera.android.httpclient.wire"

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lx0/f;->m:Lt0/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lx0/f;->r:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public B(Ljava/net/Socket;La0/n;)V
    .locals 0

    invoke-virtual {p0}, Lu0/f;->M()V

    iput-object p1, p0, Lx0/f;->n:Ljava/net/Socket;

    iput-object p2, p0, Lx0/f;->o:La0/n;

    iget-boolean p2, p0, Lx0/f;->q:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "Connection already shutdown"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected I(LC0/f;La0/t;LE0/e;)LC0/c;
    .locals 2

    new-instance v0, Lx0/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lx0/h;-><init>(LC0/f;LD0/u;La0/t;LE0/e;)V

    return-object v0
.end method

.method protected O(Ljava/net/Socket;ILE0/e;)LC0/f;
    .locals 2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x2000

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lu0/f;->O(Ljava/net/Socket;ILE0/e;)LC0/f;

    move-result-object p1

    iget-object p2, p0, Lx0/f;->m:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lx0/m;

    new-instance v0, Lx0/r;

    iget-object v1, p0, Lx0/f;->m:Lt0/b;

    invoke-direct {v0, v1}, Lx0/r;-><init>(Lt0/b;)V

    invoke-static {p3}, LE0/f;->a(LE0/e;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lx0/m;-><init>(LC0/f;Lx0/r;Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method protected P(Ljava/net/Socket;ILE0/e;)LC0/g;
    .locals 2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x2000

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lu0/f;->P(Ljava/net/Socket;ILE0/e;)LC0/g;

    move-result-object p1

    iget-object p2, p0, Lx0/f;->m:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lx0/n;

    new-instance v0, Lx0/r;

    iget-object v1, p0, Lx0/f;->m:Lt0/b;

    invoke-direct {v0, v1}, Lx0/r;-><init>(Lt0/b;)V

    invoke-static {p3}, LE0/f;->a(LE0/e;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lx0/n;-><init>(LC0/g;Lx0/r;Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lx0/f;->p:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx0/f;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx0/f;->q:Z

    :try_start_0
    invoke-super {p0}, Lu0/f;->c()V

    iget-object v0, p0, Lx0/f;->k:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/f;->k:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lx0/f;->n:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lx0/f;->k:Lt0/b;

    const-string v2, "I/O error shutting down connection"

    invoke-virtual {v1, v2, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public close()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lu0/f;->close()V

    iget-object v0, p0, Lx0/f;->k:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/f;->k:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lx0/f;->k:Lt0/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f(ZLE0/e;)V
    .locals 1

    const-string v0, "Parameters"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lu0/f;->M()V

    iput-boolean p1, p0, Lx0/f;->p:Z

    iget-object p1, p0, Lx0/f;->n:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Lu0/f;->N(Ljava/net/Socket;LE0/e;)V

    return-void
.end method

.method public k()La0/s;
    .locals 8

    invoke-super {p0}, Lu0/a;->k()La0/s;

    move-result-object v0

    iget-object v1, p0, Lx0/f;->k:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx0/f;->k:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La0/s;->h()La0/F;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lx0/f;->l:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lx0/f;->l:Lt0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La0/s;->h()La0/F;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, La0/p;->getAllHeaders()[La0/e;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-object v6, p0, Lx0/f;->l:Lt0/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public n(La0/q;)V
    .locals 6

    iget-object v0, p0, Lx0/f;->k:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/f;->k:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lu0/a;->n(La0/q;)V

    iget-object v0, p0, Lx0/f;->l:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx0/f;->l:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    iget-object v4, p0, Lx0/f;->l:Lt0/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Ljava/net/Socket;La0/n;ZLE0/e;)V
    .locals 1

    invoke-virtual {p0}, Lu0/f;->s()V

    const-string v0, "Target host"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lx0/f;->n:Ljava/net/Socket;

    invoke-virtual {p0, p1, p4}, Lu0/f;->N(Ljava/net/Socket;LE0/e;)V

    :cond_0
    iput-object p2, p0, Lx0/f;->o:La0/n;

    iput-boolean p3, p0, Lx0/f;->p:Z

    return-void
.end method

.method public t()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lx0/f;->n:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/f;->n:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lx0/f;->n:Ljava/net/Socket;

    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lx0/f;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
