.class public Lz0/F;
.super Lz0/y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lz0/F;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method varargs constructor <init>(Z[Lr0/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz0/y;-><init>(Z[Lr0/b;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 11

    new-instance v0, Lz0/H;

    invoke-direct {v0}, Lz0/H;-><init>()V

    new-instance v1, Lz0/i;

    invoke-direct {v1}, Lz0/i;-><init>()V

    new-instance v2, Lz0/D;

    invoke-direct {v2}, Lz0/D;-><init>()V

    new-instance v3, Lz0/E;

    invoke-direct {v3}, Lz0/E;-><init>()V

    new-instance v4, Lz0/h;

    invoke-direct {v4}, Lz0/h;-><init>()V

    new-instance v5, Lz0/j;

    invoke-direct {v5}, Lz0/j;-><init>()V

    new-instance v6, Lz0/e;

    invoke-direct {v6}, Lz0/e;-><init>()V

    new-instance v7, Lz0/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lz0/y;->c:[Ljava/lang/String;

    :goto_0
    invoke-direct {v7, p1}, Lz0/g;-><init>([Ljava/lang/String;)V

    new-instance p1, Lz0/B;

    invoke-direct {p1}, Lz0/B;-><init>()V

    new-instance v8, Lz0/C;

    invoke-direct {v8}, Lz0/C;-><init>()V

    const/16 v9, 0xa

    new-array v9, v9, [Lr0/b;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object p1, v9, v0

    const/16 p1, 0x9

    aput-object v8, v9, p1

    invoke-direct {p0, p2, v9}, Lz0/y;-><init>(Z[Lr0/b;)V

    return-void
.end method

.method private static p(Lr0/f;)Lr0/f;
    .locals 4

    invoke-virtual {p0}, Lr0/f;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".local"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lr0/f;

    invoke-virtual {p0}, Lr0/f;->c()I

    move-result v2

    invoke-virtual {p0}, Lr0/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lr0/f;->d()Z

    move-result p0

    invoke-direct {v1, v0, v2, v3, p0}, Lr0/f;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v1
.end method

.method private q([La0/f;Lr0/f;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    invoke-interface {v3}, La0/f;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, La0/f;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lz0/c;

    invoke-direct {v6, v4, v5}, Lz0/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lz0/p;->j(Lr0/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lz0/d;->k(Ljava/lang/String;)V

    invoke-static {p2}, Lz0/p;->i(Lr0/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lz0/d;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Lr0/f;->c()I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v6, v4}, Lz0/c;->r([I)V

    invoke-interface {v3}, La0/f;->b()[La0/y;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_0

    aget-object v7, v3, v5

    invoke-interface {v7}, La0/y;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/y;

    invoke-interface {v4}, La0/y;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lz0/d;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lz0/b;->g(Ljava/lang/String;)Lr0/d;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lr0/d;->c(Lr0/o;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lr0/m;

    const-string p2, "Cookie name may not be empty"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a(Lr0/c;Lr0/f;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lz0/F;->p(Lr0/f;)Lr0/f;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lz0/p;->a(Lr0/c;Lr0/f;)Z

    move-result p1

    return p1
.end method

.method public b(Lr0/c;Lr0/f;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lz0/F;->p(Lr0/f;)Lr0/f;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lz0/y;->b(Lr0/c;Lr0/f;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()La0/e;
    .locals 2

    new-instance v0, LH0/d;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    const-string v1, "Cookie2"

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    const-string v1, "$Version="

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lz0/F;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v1, LD0/q;

    invoke-direct {v1, v0}, LD0/q;-><init>(LH0/d;)V

    return-object v1
.end method

.method public e(La0/e;Lr0/f;)Ljava/util/List;
    .locals 2

    const-string v0, "Header"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, La0/e;->a()[La0/f;

    move-result-object p1

    invoke-static {p2}, Lz0/F;->p(Lr0/f;)Lr0/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lz0/F;->q([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
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

.method protected k([La0/f;Lr0/f;)Ljava/util/List;
    .locals 0

    invoke-static {p2}, Lz0/F;->p(Lr0/f;)Lr0/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lz0/F;->q([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected n(LH0/d;Lr0/c;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lz0/y;->n(LH0/d;Lr0/c;I)V

    instance-of p3, p2, Lr0/a;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lr0/a;

    const-string v0, "port"

    invoke-interface {p3, v0}, Lr0/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "; $Port"

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lr0/c;->i()[I

    move-result-object p2

    if-eqz p2, :cond_1

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    if-lez v0, :cond_0

    const-string v1, ","

    invoke-virtual {p1, v1}, LH0/d;->d(Ljava/lang/String;)V

    :cond_0
    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LH0/d;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "\""

    invoke-virtual {p1, p2}, LH0/d;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc2965"

    return-object v0
.end method
