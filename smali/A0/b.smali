.class public LA0/b;
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

    iput-object p1, p0, LA0/b;->a:Ls0/d;

    return-void
.end method


# virtual methods
.method protected a(LC0/g;La0/p;)Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, LA0/b;->a:Ls0/d;

    invoke-interface {v0, p2}, Ls0/d;->a(La0/p;)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    new-instance p2, LB0/f;

    invoke-direct {p2, p1}, LB0/f;-><init>(LC0/g;)V

    return-object p2

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    new-instance p2, LB0/m;

    invoke-direct {p2, p1}, LB0/m;-><init>(LC0/g;)V

    return-object p2

    :cond_1
    new-instance p2, LB0/h;

    invoke-direct {p2, p1, v0, v1}, LB0/h;-><init>(LC0/g;J)V

    return-object p2
.end method

.method public b(LC0/g;La0/p;La0/k;)V
    .locals 1

    const-string v0, "Session output buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP message"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP entity"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, LA0/b;->a(LC0/g;La0/p;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {p3, p1}, La0/k;->f(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method
