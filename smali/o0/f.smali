.class Lo0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# instance fields
.field private final a:Lo0/a;


# direct methods
.method constructor <init>(Lo0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/f;->a:Lo0/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)Z
    .locals 1

    iget-object v0, p0, Lo0/f;->a:Lo0/a;

    invoke-interface {v0, p1}, Lo0/i;->a(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/net/Socket;Ljava/lang/String;ILE0/e;)Ljava/net/Socket;
    .locals 1

    iget-object p4, p0, Lo0/f;->a:Lo0/a;

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lo0/a;->b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public e(LE0/e;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lo0/f;->a:Lo0/a;

    invoke-interface {v0, p1}, Lo0/i;->e(LE0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lo0/f;->a:Lo0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lo0/i;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;LE0/e;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
