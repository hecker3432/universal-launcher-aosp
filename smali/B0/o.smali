.class public LB0/o;
.super LB0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILE0/e;)V
    .locals 1

    invoke-direct {p0}, LB0/d;-><init>()V

    const-string v0, "Socket"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p2

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    const/16 p2, 0x400

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, LB0/d;->i(Ljava/io/OutputStream;ILE0/e;)V

    return-void
.end method
