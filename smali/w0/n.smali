.class Lw0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/n;


# instance fields
.field private final a:Lc0/m;


# direct methods
.method public constructor <init>(Lc0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/n;->a:Lc0/m;

    return-void
.end method


# virtual methods
.method public a(La0/q;La0/s;LG0/e;)Lf0/i;
    .locals 1

    iget-object v0, p0, Lw0/n;->a:Lc0/m;

    invoke-interface {v0, p2, p3}, Lc0/m;->a(La0/s;LG0/e;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p1

    invoke-interface {p1}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HEAD"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lf0/g;

    invoke-direct {p1, p2}, Lf0/g;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_0
    new-instance p1, Lf0/f;

    invoke-direct {p1, p2}, Lf0/f;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method public b(La0/q;La0/s;LG0/e;)Z
    .locals 0

    iget-object p1, p0, Lw0/n;->a:Lc0/m;

    invoke-interface {p1, p2, p3}, Lc0/m;->b(La0/s;LG0/e;)Z

    move-result p1

    return p1
.end method

.method public c()Lc0/m;
    .locals 1

    iget-object v0, p0, Lw0/n;->a:Lc0/m;

    return-object v0
.end method
