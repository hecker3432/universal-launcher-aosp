.class public final Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/e;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:La0/n;

.field private final b:Ljava/net/InetAddress;

.field private final c:Ljava/util/List;

.field private final d:Ln0/e$b;

.field private final e:Ln0/e$a;

.field private final f:Z


# direct methods
.method public constructor <init>(La0/n;)V
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v5, Ln0/e$b;->a:Ln0/e$b;

    sget-object v6, Ln0/e$a;->a:Ln0/e$a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ln0/b;-><init>(La0/n;Ljava/net/InetAddress;Ljava/util/List;ZLn0/e$b;Ln0/e$a;)V

    return-void
.end method

.method public constructor <init>(La0/n;Ljava/net/InetAddress;La0/n;Z)V
    .locals 7

    const-string v0, "Proxy host"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_0

    sget-object p3, Ln0/e$b;->b:Ln0/e$b;

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_0
    sget-object p3, Ln0/e$b;->a:Ln0/e$b;

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    sget-object p3, Ln0/e$a;->b:Ln0/e$a;

    :goto_2
    move-object v6, p3

    goto :goto_3

    :cond_1
    sget-object p3, Ln0/e$a;->a:Ln0/e$a;

    goto :goto_2

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ln0/b;-><init>(La0/n;Ljava/net/InetAddress;Ljava/util/List;ZLn0/e$b;Ln0/e$a;)V

    return-void
.end method

.method private constructor <init>(La0/n;Ljava/net/InetAddress;Ljava/util/List;ZLn0/e$b;Ln0/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Target host"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ln0/b;->j(La0/n;)La0/n;

    move-result-object p1

    iput-object p1, p0, Ln0/b;->a:La0/n;

    iput-object p2, p0, Ln0/b;->b:Ljava/net/InetAddress;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ln0/b;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ln0/b;->c:Ljava/util/List;

    :goto_0
    sget-object p1, Ln0/e$b;->b:Ln0/e$b;

    if-ne p5, p1, :cond_2

    iget-object p1, p0, Ln0/b;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string p2, "Proxy required if tunnelled"

    invoke-static {p1, p2}, LH0/a;->a(ZLjava/lang/String;)V

    :cond_2
    iput-boolean p4, p0, Ln0/b;->f:Z

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    sget-object p5, Ln0/e$b;->a:Ln0/e$b;

    :goto_2
    iput-object p5, p0, Ln0/b;->d:Ln0/e$b;

    if-eqz p6, :cond_4

    goto :goto_3

    :cond_4
    sget-object p6, Ln0/e$a;->a:Ln0/e$a;

    :goto_3
    iput-object p6, p0, Ln0/b;->e:Ln0/e$a;

    return-void
.end method

.method public constructor <init>(La0/n;Ljava/net/InetAddress;Z)V
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v5, Ln0/e$b;->a:Ln0/e$b;

    sget-object v6, Ln0/e$a;->a:Ln0/e$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ln0/b;-><init>(La0/n;Ljava/net/InetAddress;Ljava/util/List;ZLn0/e$b;Ln0/e$a;)V

    return-void
.end method

.method public constructor <init>(La0/n;Ljava/net/InetAddress;[La0/n;ZLn0/e$b;Ln0/e$a;)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    move-object v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ln0/b;-><init>(La0/n;Ljava/net/InetAddress;Ljava/util/List;ZLn0/e$b;Ln0/e$a;)V

    return-void
.end method

.method private static i(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static j(La0/n;)La0/n;
    .locals 3

    invoke-virtual {p0}, La0/n;->c()I

    move-result v0

    if-ltz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, La0/n;->a()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, La0/n;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance p0, La0/n;

    invoke-static {v1}, Ln0/b;->i(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, La0/n;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, La0/n;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v0, La0/n;

    invoke-static {v1}, Ln0/b;->i(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v2, v1}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Ln0/b;->f:Z

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Ln0/b;->d:Ln0/e$b;

    sget-object v1, Ln0/e$b;->b:Ln0/e$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(I)La0/n;
    .locals 4

    const-string v0, "Hop index"

    invoke-static {p1, v0}, LH0/a;->g(ILjava/lang/String;)I

    invoke-virtual {p0}, Ln0/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Hop index exceeds tracked route length"

    invoke-static {v2, v3}, LH0/a;->a(ZLjava/lang/String;)V

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ln0/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/n;

    return-object p1

    :cond_1
    iget-object p1, p0, Ln0/b;->a:La0/n;

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()La0/n;
    .locals 1

    iget-object v0, p0, Ln0/b;->a:La0/n;

    return-object v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Ln0/b;->c:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ln0/b;

    iget-boolean v1, p0, Ln0/b;->f:Z

    iget-boolean v3, p1, Ln0/b;->f:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ln0/b;->d:Ln0/e$b;

    iget-object v3, p1, Ln0/b;->d:Ln0/e$b;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ln0/b;->e:Ln0/e$a;

    iget-object v3, p1, Ln0/b;->e:Ln0/e$a;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ln0/b;->a:La0/n;

    iget-object v3, p1, Ln0/b;->a:La0/n;

    invoke-static {v1, v3}, LH0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln0/b;->b:Ljava/net/InetAddress;

    iget-object v3, p1, Ln0/b;->b:Ljava/net/InetAddress;

    invoke-static {v1, v3}, LH0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ln0/b;->c:Ljava/util/List;

    iget-object p1, p1, Ln0/b;->c:Ljava/util/List;

    invoke-static {v1, p1}, LH0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ln0/b;->b:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Ln0/b;->e:Ln0/e$a;

    sget-object v1, Ln0/e$a;->b:Ln0/e$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()La0/n;
    .locals 2

    iget-object v0, p0, Ln0/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln0/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/n;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Ln0/b;->a:La0/n;

    invoke-static {v0, v1}, LH0/h;->d(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ln0/b;->b:Ljava/net/InetAddress;

    invoke-static {v0, v1}, LH0/h;->d(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ln0/b;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/n;

    invoke-static {v0, v2}, LH0/h;->d(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Ln0/b;->f:Z

    invoke-static {v0, v1}, LH0/h;->e(IZ)I

    move-result v0

    iget-object v1, p0, Ln0/b;->d:Ln0/e$b;

    invoke-static {v0, v1}, LH0/h;->d(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ln0/b;->e:Ln0/e$a;

    invoke-static {v0, v1}, LH0/h;->d(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln0/b;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Ln0/b;->b:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/b;->d:Ln0/e$b;

    sget-object v3, Ln0/e$b;->b:Ln0/e$b;

    if-ne v1, v3, :cond_1

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Ln0/b;->e:Ln0/e$a;

    sget-object v3, Ln0/e$a;->b:Ln0/e$a;

    if-ne v1, v3, :cond_2

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Ln0/b;->f:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/b;->c:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/n;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ln0/b;->a:La0/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
