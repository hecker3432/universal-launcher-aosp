.class public LA0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ls0/d;


# direct methods
.method public constructor <init>(Ls0/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Content length strategy"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls0/d;

    iput-object p1, p0, LA0/a;->a:Ls0/d;

    return-void
.end method


# virtual methods
.method public a(LC0/f;La0/p;)La0/k;
    .locals 1

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP message"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, LA0/a;->b(LC0/f;La0/p;)Ls0/b;

    move-result-object p1

    return-object p1
.end method

.method protected b(LC0/f;La0/p;)Ls0/b;
    .locals 8

    new-instance v0, Ls0/b;

    invoke-direct {v0}, Ls0/b;-><init>()V

    iget-object v1, p0, LA0/a;->a:Ls0/d;

    invoke-interface {v1, p2}, Ls0/d;->a(La0/p;)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls0/a;->c(Z)V

    invoke-virtual {v0, v5, v6}, Ls0/b;->j(J)V

    new-instance v1, LB0/e;

    invoke-direct {v1, p1}, LB0/e;-><init>(LC0/f;)V

    invoke-virtual {v0, v1}, Ls0/b;->i(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    cmp-long v4, v1, v5

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ls0/a;->c(Z)V

    invoke-virtual {v0, v5, v6}, Ls0/b;->j(J)V

    new-instance v1, LB0/l;

    invoke-direct {v1, p1}, LB0/l;-><init>(LC0/f;)V

    invoke-virtual {v0, v1}, Ls0/b;->i(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ls0/a;->c(Z)V

    invoke-virtual {v0, v1, v2}, Ls0/b;->j(J)V

    new-instance v3, LB0/g;

    invoke-direct {v3, p1, v1, v2}, LB0/g;-><init>(LC0/f;J)V

    invoke-virtual {v0, v3}, Ls0/b;->i(Ljava/io/InputStream;)V

    :goto_0
    const-string p1, "Content-Type"

    invoke-interface {p2, p1}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ls0/a;->e(La0/e;)V

    :cond_2
    const-string p1, "Content-Encoding"

    invoke-interface {p2, p1}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ls0/a;->d(La0/e;)V

    :cond_3
    return-object v0
.end method
