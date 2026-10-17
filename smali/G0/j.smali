.class public LG0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LG0/j;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LG0/j;->a:Z

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 8

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of p2, p1, La0/l;

    if-eqz p2, :cond_8

    iget-boolean p2, p0, LG0/j;->a:Z

    const-string v0, "Transfer-Encoding"

    const-string v1, "Content-Length"

    if-eqz p2, :cond_0

    invoke-interface {p1, v0}, La0/p;->removeHeaders(Ljava/lang/String;)V

    invoke-interface {p1, v1}, La0/p;->removeHeaders(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1, v1}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_0
    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p2

    invoke-interface {p2}, La0/E;->getProtocolVersion()La0/C;

    move-result-object p2

    move-object v2, p1

    check-cast v2, La0/l;

    invoke-interface {v2}, La0/l;->getEntity()La0/k;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p2, "0"

    invoke-interface {p1, v1, p2}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v2}, La0/k;->n()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, La0/k;->r()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, La0/k;->r()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, La0/v;->e:La0/v;

    invoke-virtual {p2, v1}, La0/C;->g(La0/C;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p2, "chunked"

    invoke-interface {p1, v0, p2}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v2}, La0/k;->h()La0/e;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {v2}, La0/k;->h()La0/e;

    move-result-object p2

    invoke-interface {p1, p2}, La0/p;->i(La0/e;)V

    :cond_4
    invoke-interface {v2}, La0/k;->b()La0/e;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {v2}, La0/k;->b()La0/e;

    move-result-object p2

    invoke-interface {p1, p2}, La0/p;->i(La0/e;)V

    goto :goto_3

    :cond_5
    new-instance p1, La0/B;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunked transfer encoding not allowed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, La0/B;

    const-string p2, "Content-Length header already present"

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, La0/B;

    const-string p2, "Transfer-encoding header already present"

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method
