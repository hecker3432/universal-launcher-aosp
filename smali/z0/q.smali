.class public abstract Lz0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/i;


# instance fields
.field private final a:Lz0/F;

.field private final b:Lz0/y;

.field private final c:Lz0/v;


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lz0/F;

    new-instance v3, Lz0/H;

    invoke-direct {v3}, Lz0/H;-><init>()V

    new-instance v4, Lz0/i;

    invoke-direct {v4}, Lz0/i;-><init>()V

    new-instance v5, Lz0/D;

    invoke-direct {v5}, Lz0/D;-><init>()V

    new-instance v6, Lz0/E;

    invoke-direct {v6}, Lz0/E;-><init>()V

    new-instance v7, Lz0/h;

    invoke-direct {v7}, Lz0/h;-><init>()V

    new-instance v8, Lz0/j;

    invoke-direct {v8}, Lz0/j;-><init>()V

    new-instance v9, Lz0/e;

    invoke-direct {v9}, Lz0/e;-><init>()V

    new-instance v10, Lz0/B;

    invoke-direct {v10}, Lz0/B;-><init>()V

    new-instance v11, Lz0/C;

    invoke-direct {v11}, Lz0/C;-><init>()V

    const/16 v12, 0x9

    new-array v12, v12, [Lr0/b;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v3, 0x1

    aput-object v4, v12, v3

    const/4 v4, 0x2

    aput-object v5, v12, v4

    const/4 v5, 0x3

    aput-object v6, v12, v5

    const/4 v6, 0x4

    aput-object v7, v12, v6

    const/4 v7, 0x5

    aput-object v8, v12, v7

    const/4 v8, 0x6

    aput-object v9, v12, v8

    const/4 v9, 0x7

    aput-object v10, v12, v9

    const/16 v9, 0x8

    aput-object v11, v12, v9

    invoke-direct {v2, v1, v12}, Lz0/F;-><init>(Z[Lr0/b;)V

    iput-object v2, v0, Lz0/q;->a:Lz0/F;

    new-instance v2, Lz0/y;

    new-instance v9, Lz0/A;

    invoke-direct {v9}, Lz0/A;-><init>()V

    new-instance v10, Lz0/i;

    invoke-direct {v10}, Lz0/i;-><init>()V

    new-instance v11, Lz0/x;

    invoke-direct {v11}, Lz0/x;-><init>()V

    new-instance v12, Lz0/h;

    invoke-direct {v12}, Lz0/h;-><init>()V

    new-instance v14, Lz0/j;

    invoke-direct {v14}, Lz0/j;-><init>()V

    new-instance v15, Lz0/e;

    invoke-direct {v15}, Lz0/e;-><init>()V

    new-array v8, v8, [Lr0/b;

    aput-object v9, v8, v13

    aput-object v10, v8, v3

    aput-object v11, v8, v4

    aput-object v12, v8, v5

    aput-object v14, v8, v6

    aput-object v15, v8, v7

    invoke-direct {v2, v1, v8}, Lz0/y;-><init>(Z[Lr0/b;)V

    iput-object v2, v0, Lz0/q;->b:Lz0/y;

    new-instance v1, Lz0/v;

    new-instance v2, Lz0/f;

    invoke-direct {v2}, Lz0/f;-><init>()V

    new-instance v8, Lz0/i;

    invoke-direct {v8}, Lz0/i;-><init>()V

    new-instance v9, Lz0/j;

    invoke-direct {v9}, Lz0/j;-><init>()V

    new-instance v10, Lz0/e;

    invoke-direct {v10}, Lz0/e;-><init>()V

    new-instance v11, Lz0/g;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v12, v3, [Ljava/lang/String;

    const-string v14, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v14, v12, v13

    :goto_0
    invoke-direct {v11, v12}, Lz0/g;-><init>([Ljava/lang/String;)V

    new-array v7, v7, [Lr0/b;

    aput-object v2, v7, v13

    aput-object v8, v7, v3

    aput-object v9, v7, v4

    aput-object v10, v7, v5

    aput-object v11, v7, v6

    invoke-direct {v1, v7}, Lz0/v;-><init>([Lr0/b;)V

    iput-object v1, v0, Lz0/q;->c:Lz0/v;

    return-void
.end method


# virtual methods
.method public a(Lr0/c;Lr0/f;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lr0/c;->c()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lr0/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz0/q;->a:Lz0/F;

    invoke-virtual {v0, p1, p2}, Lz0/F;->a(Lr0/c;Lr0/f;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lz0/q;->b:Lz0/y;

    invoke-virtual {v0, p1, p2}, Lz0/p;->a(Lr0/c;Lr0/f;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lz0/q;->c:Lz0/v;

    invoke-virtual {v0, p1, p2}, Lz0/p;->a(Lr0/c;Lr0/f;)Z

    move-result p1

    return p1
.end method

.method public b(Lr0/c;Lr0/f;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lr0/c;->c()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lr0/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz0/q;->a:Lz0/F;

    invoke-virtual {v0, p1, p2}, Lz0/F;->b(Lr0/c;Lr0/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz0/q;->b:Lz0/y;

    invoke-virtual {v0, p1, p2}, Lz0/y;->b(Lr0/c;Lr0/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz0/q;->c:Lz0/v;

    invoke-virtual {v0, p1, p2}, Lz0/p;->b(Lr0/c;Lr0/f;)V

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lz0/q;->a:Lz0/F;

    invoke-virtual {v0}, Lz0/F;->c()I

    move-result v0

    return v0
.end method

.method public d()La0/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(La0/e;Lr0/f;)Ljava/util/List;
    .locals 9

    const/4 v0, 0x1

    const-string v1, "Header"

    invoke-static {p1, v1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Cookie origin"

    invoke-static {p2, v1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/e;->a()[La0/f;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    const-string v8, "version"

    invoke-interface {v7, v8}, La0/f;->d(Ljava/lang/String;)La0/y;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    const-string v8, "expires"

    invoke-interface {v7, v8}, La0/f;->d(Ljava/lang/String;)La0/y;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    if-nez v5, :cond_5

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Set-Cookie2"

    invoke-interface {p1}, La0/e;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lz0/q;->a:Lz0/F;

    invoke-virtual {p1, v1, p2}, Lz0/F;->k([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lz0/q;->b:Lz0/y;

    invoke-virtual {p1, v1, p2}, Lz0/p;->k([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    sget-object v1, Lz0/u;->b:Lz0/u;

    instance-of v2, p1, La0/d;

    if-eqz v2, :cond_6

    check-cast p1, La0/d;

    invoke-interface {p1}, La0/d;->c()LH0/d;

    move-result-object v2

    new-instance v4, LD0/v;

    invoke-interface {p1}, La0/d;->b()I

    move-result p1

    invoke-virtual {v2}, LH0/d;->length()I

    move-result v5

    invoke-direct {v4, p1, v5}, LD0/v;-><init>(II)V

    goto :goto_2

    :cond_6
    invoke-interface {p1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v2, LH0/d;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, LH0/d;-><init>(I)V

    invoke-virtual {v2, p1}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v4, LD0/v;

    invoke-virtual {v2}, LH0/d;->length()I

    move-result p1

    invoke-direct {v4, v3, p1}, LD0/v;-><init>(II)V

    :goto_2
    invoke-virtual {v1, v2, v4}, Lz0/u;->a(LH0/d;LD0/v;)La0/f;

    move-result-object p1

    new-array v0, v0, [La0/f;

    aput-object p1, v0, v3

    iget-object p1, p0, Lz0/q;->c:Lz0/v;

    invoke-virtual {p1, v0, p2}, Lz0/p;->k([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lr0/m;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public f(Ljava/util/List;)Ljava/util/List;
    .locals 5

    const-string v0, "List of cookies"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/c;

    instance-of v4, v3, Lr0/n;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-interface {v3}, Lr0/c;->c()I

    move-result v4

    if-ge v4, v1, :cond_0

    invoke-interface {v3}, Lr0/c;->c()I

    move-result v1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_4

    if-eqz v2, :cond_3

    iget-object v0, p0, Lz0/q;->a:Lz0/F;

    invoke-virtual {v0, p1}, Lz0/y;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lz0/q;->b:Lz0/y;

    invoke-virtual {v0, p1}, Lz0/y;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lz0/q;->c:Lz0/v;

    invoke-virtual {v0, p1}, Lz0/v;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
