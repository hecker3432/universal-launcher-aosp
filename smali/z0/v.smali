.class public Lz0/v;
.super Lz0/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz0/v;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lz0/i;

    invoke-direct {v2}, Lz0/i;-><init>()V

    new-instance v3, Lz0/t;

    invoke-direct {v3}, Lz0/t;-><init>()V

    new-instance v4, Lz0/j;

    invoke-direct {v4}, Lz0/j;-><init>()V

    new-instance v5, Lz0/e;

    invoke-direct {v5}, Lz0/e;-><init>()V

    new-instance v6, Lz0/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    const-string v7, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v7, p1, v0

    :goto_0
    invoke-direct {v6, p1}, Lz0/g;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x5

    new-array p1, p1, [Lr0/b;

    aput-object v2, p1, v0

    aput-object v3, p1, v1

    const/4 v0, 0x2

    aput-object v4, p1, v0

    const/4 v0, 0x3

    aput-object v5, p1, v0

    const/4 v0, 0x4

    aput-object v6, p1, v0

    invoke-direct {p0, p1}, Lz0/p;-><init>([Lr0/b;)V

    return-void
.end method

.method varargs constructor <init>([Lr0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lz0/p;-><init>([Lr0/b;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()La0/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(La0/e;Lr0/f;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Header"

    invoke-static {p1, v1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Cookie origin"

    invoke-static {p2, v1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set-Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lz0/u;->b:Lz0/u;

    instance-of v2, p1, La0/d;

    if-eqz v2, :cond_0

    check-cast p1, La0/d;

    invoke-interface {p1}, La0/d;->c()LH0/d;

    move-result-object v2

    new-instance v3, LD0/v;

    invoke-interface {p1}, La0/d;->b()I

    move-result p1

    invoke-virtual {v2}, LH0/d;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, LD0/v;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v2, LH0/d;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, LH0/d;-><init>(I)V

    invoke-virtual {v2, p1}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v3, LD0/v;

    invoke-virtual {v2}, LH0/d;->length()I

    move-result p1

    invoke-direct {v3, v0, p1}, LD0/v;-><init>(II)V

    :goto_0
    invoke-virtual {v1, v2, v3}, Lz0/u;->a(LH0/d;LD0/v;)La0/f;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [La0/f;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1, p2}, Lz0/p;->k([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lr0/m;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Lr0/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized cookie header \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f(Ljava/util/List;)Ljava/util/List;
    .locals 4

    const-string v0, "List of cookies"

    invoke-static {p1, v0}, LH0/a;->f(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v0, LH0/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    const-string v1, "Cookie"

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/c;

    if-lez v1, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, LH0/d;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Lr0/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LH0/d;->d(Ljava/lang/String;)V

    invoke-interface {v2}, Lr0/c;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "="

    invoke-virtual {v0, v3}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LH0/d;->d(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, LD0/q;

    invoke-direct {v1, v0}, LD0/q;-><init>(LH0/d;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "netscape"

    return-object v0
.end method
