.class public Lx0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/d;


# instance fields
.field protected final a:Lo0/h;


# direct methods
.method public constructor <init>(Lo0/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lx0/i;->a:Lo0/h;

    return-void
.end method


# virtual methods
.method public a(La0/n;La0/q;LG0/e;)Ln0/b;
    .locals 2

    const-string p3, "HTTP request"

    invoke-static {p2, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, La0/p;->getParams()LE0/e;

    move-result-object p3

    invoke-static {p3}, Lm0/d;->b(LE0/e;)Ln0/b;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    const-string p3, "Target host"

    invoke-static {p1, p3}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, La0/p;->getParams()LE0/e;

    move-result-object p3

    invoke-static {p3}, Lm0/d;->c(LE0/e;)Ljava/net/InetAddress;

    move-result-object p3

    invoke-interface {p2}, La0/p;->getParams()LE0/e;

    move-result-object p2

    invoke-static {p2}, Lm0/d;->a(LE0/e;)La0/n;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lx0/i;->a:Lo0/h;

    invoke-virtual {p1}, La0/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo0/h;->c(Ljava/lang/String;)Lo0/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lo0/d;->d()Z

    move-result v0

    if-nez p2, :cond_1

    new-instance p2, Ln0/b;

    invoke-direct {p2, p1, p3, v0}, Ln0/b;-><init>(La0/n;Ljava/net/InetAddress;Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Ln0/b;

    invoke-direct {v1, p1, p3, p2, v0}, Ln0/b;-><init>(La0/n;Ljava/net/InetAddress;La0/n;Z)V

    move-object p2, v1

    :goto_0
    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, La0/m;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/m;-><init>(Ljava/lang/String;)V

    throw p2
.end method
