.class public LG0/k;
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

    invoke-direct {p0, v0}, LG0/k;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LG0/k;->a:Z

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 6

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "Expect"

    invoke-interface {p1, p2}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, La0/l;

    if-eqz v0, :cond_0

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getProtocolVersion()La0/C;

    move-result-object v0

    move-object v1, p1

    check-cast v1, La0/l;

    invoke-interface {v1}, La0/l;->getEntity()La0/k;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, La0/k;->r()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    sget-object v1, La0/v;->e:La0/v;

    invoke-virtual {v0, v1}, La0/C;->g(La0/C;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    iget-boolean v2, p0, LG0/k;->a:Z

    invoke-interface {v0, v1, v2}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "100-continue"

    invoke-interface {p1, p2, v0}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
