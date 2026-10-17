.class public Lh0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field private final a:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh0/f;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/f;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 1

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p2

    invoke-interface {p2}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CONNECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object p2

    const-string v0, "http.default-headers"

    invoke-interface {p2, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_1

    iget-object p2, p0, Lh0/f;->a:Ljava/util/Collection;

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/e;

    invoke-interface {p1, v0}, La0/p;->i(La0/e;)V

    goto :goto_0

    :cond_2
    return-void
.end method
