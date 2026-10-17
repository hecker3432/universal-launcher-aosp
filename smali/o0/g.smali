.class Lo0/g;
.super Lo0/j;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# instance fields
.field private final b:Lo0/b;


# direct methods
.method constructor <init>(Lo0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lo0/j;-><init>(Lo0/k;)V

    iput-object p1, p0, Lo0/g;->b:Lo0/b;

    return-void
.end method


# virtual methods
.method public d(Ljava/net/Socket;Ljava/lang/String;ILE0/e;)Ljava/net/Socket;
    .locals 1

    iget-object p4, p0, Lo0/g;->b:Lo0/b;

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lo0/b;->g(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
