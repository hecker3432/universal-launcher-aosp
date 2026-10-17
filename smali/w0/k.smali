.class public Lw0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/i;


# static fields
.field public static final d:Lw0/k;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw0/k;

    invoke-direct {v0}, Lw0/k;-><init>()V

    sput-object v0, Lw0/k;->d:Lw0/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lw0/k;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/net/UnknownHostException;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/net/ConnectException;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/net/ssl/SSLException;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lw0/k;-><init>(IZLjava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(IZLjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/k;->a:I

    iput-boolean p2, p0, Lw0/k;->b:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lw0/k;->c:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    iget-object p3, p0, Lw0/k;->c:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;ILG0/e;)Z
    .locals 2

    const-string v0, "Exception parameter"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lw0/k;->a:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    :cond_0
    iget-object p2, p0, Lw0/k;->c:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lw0/k;->c:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    invoke-static {p3}, Lh0/a;->h(LG0/e;)Lh0/a;

    move-result-object p1

    invoke-virtual {p1}, LG0/f;->e()La0/q;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw0/k;->c(La0/q;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0, p2}, Lw0/k;->b(La0/q;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    return p3

    :cond_5
    invoke-virtual {p1}, LG0/f;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lw0/k;->b:Z

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return p3
.end method

.method protected b(La0/q;)Z
    .locals 0

    instance-of p1, p1, La0/l;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected c(La0/q;)Z
    .locals 1

    instance-of v0, p1, Lw0/u;

    if-eqz v0, :cond_0

    check-cast p1, Lw0/u;

    invoke-virtual {p1}, Lw0/u;->k()La0/q;

    move-result-object p1

    :cond_0
    instance-of v0, p1, Lf0/i;

    if-eqz v0, :cond_1

    check-cast p1, Lf0/i;

    invoke-interface {p1}, Lf0/i;->isAborted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
