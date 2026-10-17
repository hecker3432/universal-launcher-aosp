.class public Lz0/m;
.super Lz0/p;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v12, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v13, "EEE, dd-MM-yyyy HH:mm:ss z"

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v1, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    const-string v3, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v4, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    const-string v6, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v7, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v8, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v9, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v10, "EEE dd MMM yy HH:mm:ss z"

    const-string v11, "EEE,dd-MMM-yy HH:mm:ss z"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz0/m;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lz0/n$a;)V
    .locals 7

    new-instance v0, Lz0/o;

    invoke-direct {v0}, Lz0/o;-><init>()V

    new-instance v1, Lz0/f;

    invoke-direct {v1}, Lz0/f;-><init>()V

    sget-object v2, Lz0/n$a;->b:Lz0/n$a;

    if-ne p2, v2, :cond_0

    new-instance p2, Lz0/m$a;

    invoke-direct {p2}, Lz0/m$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lz0/i;

    invoke-direct {p2}, Lz0/i;-><init>()V

    :goto_0
    new-instance v2, Lz0/h;

    invoke-direct {v2}, Lz0/h;-><init>()V

    new-instance v3, Lz0/j;

    invoke-direct {v3}, Lz0/j;-><init>()V

    new-instance v4, Lz0/e;

    invoke-direct {v4}, Lz0/e;-><init>()V

    new-instance v5, Lz0/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p1, Lz0/m;->b:[Ljava/lang/String;

    :goto_1
    invoke-direct {v5, p1}, Lz0/g;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x7

    new-array p1, p1, [Lr0/b;

    const/4 v6, 0x0

    aput-object v0, p1, v6

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const/4 p2, 0x3

    aput-object v2, p1, p2

    const/4 p2, 0x4

    aput-object v3, p1, p2

    const/4 p2, 0x5

    aput-object v4, p1, p2

    const/4 p2, 0x6

    aput-object v5, p1, p2

    invoke-direct {p0, p1}, Lz0/p;-><init>([Lr0/b;)V

    return-void
.end method

.method private static l(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    .locals 9

    const-string v0, "Header"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, La0/e;->a()[La0/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    const-string v8, "version"

    invoke-interface {v7, v8}, La0/f;->d(Ljava/lang/String;)La0/y;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    const-string v8, "expires"

    invoke-interface {v7, v8}, La0/f;->d(Ljava/lang/String;)La0/y;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, p2}, Lz0/p;->k([La0/f;Lr0/f;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    sget-object v0, Lz0/u;->b:Lz0/u;

    instance-of v1, p1, La0/d;

    if-eqz v1, :cond_5

    check-cast p1, La0/d;

    invoke-interface {p1}, La0/d;->c()LH0/d;

    move-result-object v1

    new-instance v3, LD0/v;

    invoke-interface {p1}, La0/d;->b()I

    move-result p1

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v5

    invoke-direct {v3, p1, v5}, LD0/v;-><init>(II)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v1, LH0/d;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, LH0/d;-><init>(I)V

    invoke-virtual {v1, p1}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v3, LD0/v;

    invoke-virtual {v1}, LH0/d;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, LD0/v;-><init>(II)V

    :goto_2
    invoke-virtual {v0, v1, v3}, Lz0/u;->a(LH0/d;LD0/v;)La0/f;

    move-result-object p1

    invoke-interface {p1}, La0/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La0/f;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lz0/d;

    invoke-direct {v3, v0, v1}, Lz0/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lz0/p;->j(Lr0/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lz0/d;->k(Ljava/lang/String;)V

    invoke-static {p2}, Lz0/p;->i(Lr0/f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lz0/d;->e(Ljava/lang/String;)V

    invoke-interface {p1}, La0/f;->b()[La0/y;

    move-result-object p1

    array-length p2, p1

    sub-int/2addr p2, v6

    :goto_3
    if-ltz p2, :cond_7

    aget-object v0, p1, p2

    invoke-interface {v0}, La0/y;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lz0/d;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lz0/b;->g(Ljava/lang/String;)Lr0/d;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lr0/d;->c(Lr0/o;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v3, v2}, Lz0/d;->f(I)V

    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Lr0/m;

    const-string p2, "Cookie name may not be empty"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lr0/m;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
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

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public f(Ljava/util/List;)Ljava/util/List;
    .locals 7

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

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/c;

    if-lez v2, :cond_0

    const-string v4, "; "

    invoke-virtual {v0, v4}, LH0/d;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lr0/c;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lr0/c;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lr0/c;->c()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v5}, Lz0/m;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, LD0/f;->b:LD0/f;

    new-instance v6, LD0/c;

    invoke-direct {v6, v4, v5}, LD0/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v6, v1}, LD0/f;->e(LH0/d;La0/f;Z)LH0/d;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, LH0/d;->d(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v0, v3}, LH0/d;->d(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, LH0/d;->d(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
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

    const-string v0, "compatibility"

    return-object v0
.end method
