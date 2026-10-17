.class public Lz0/y;
.super Lz0/p;
.source "SourceFile"


# static fields
.field static final c:[Ljava/lang/String;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz0/y;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lz0/y;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method protected varargs constructor <init>(Z[Lr0/b;)V
    .locals 0

    invoke-direct {p0, p2}, Lz0/p;-><init>([Lr0/b;)V

    iput-boolean p1, p0, Lz0/y;->b:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 8

    new-instance v0, Lz0/A;

    invoke-direct {v0}, Lz0/A;-><init>()V

    new-instance v1, Lz0/i;

    invoke-direct {v1}, Lz0/i;-><init>()V

    new-instance v2, Lz0/x;

    invoke-direct {v2}, Lz0/x;-><init>()V

    new-instance v3, Lz0/h;

    invoke-direct {v3}, Lz0/h;-><init>()V

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
    sget-object p1, Lz0/y;->c:[Ljava/lang/String;

    :goto_0
    invoke-direct {v6, p1}, Lz0/g;-><init>([Ljava/lang/String;)V

    const/4 p1, 0x7

    new-array p1, p1, [Lr0/b;

    const/4 v7, 0x0

    aput-object v0, p1, v7

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    aput-object v3, p1, v0

    const/4 v0, 0x4

    aput-object v4, p1, v0

    const/4 v0, 0x5

    aput-object v5, p1, v0

    const/4 v0, 0x6

    aput-object v6, p1, v0

    invoke-direct {p0, p1}, Lz0/p;-><init>([Lr0/b;)V

    iput-boolean p2, p0, Lz0/y;->b:Z

    return-void
.end method

.method private l(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/c;

    invoke-interface {v1}, Lr0/c;->c()I

    move-result v2

    new-instance v3, LH0/d;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, LH0/d;-><init>(I)V

    const-string v4, "Cookie: "

    invoke-virtual {v3, v4}, LH0/d;->d(Ljava/lang/String;)V

    const-string v4, "$Version="

    invoke-virtual {v3, v4}, LH0/d;->d(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LH0/d;->d(Ljava/lang/String;)V

    const-string v4, "; "

    invoke-virtual {v3, v4}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1, v2}, Lz0/y;->n(LH0/d;Lr0/c;I)V

    new-instance v1, LD0/q;

    invoke-direct {v1, v3}, LD0/q;-><init>(LH0/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private m(Ljava/util/List;)Ljava/util/List;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/c;

    invoke-interface {v2}, Lr0/c;->c()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-interface {v2}, Lr0/c;->c()I

    move-result v1

    goto :goto_0

    :cond_1
    new-instance v0, LH0/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-direct {v0, v2}, LH0/d;-><init>(I)V

    const-string v2, "Cookie"

    invoke-virtual {v0, v2}, LH0/d;->d(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v0, v2}, LH0/d;->d(Ljava/lang/String;)V

    const-string v2, "$Version="

    invoke-virtual {v0, v2}, LH0/d;->d(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LH0/d;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/c;

    const-string v3, "; "

    invoke-virtual {v0, v3}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v1}, Lz0/y;->n(LH0/d;Lr0/c;I)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, LD0/q;

    invoke-direct {v1, v0}, LD0/q;-><init>(LH0/d;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public b(Lr0/c;Lr0/f;)V
    .locals 3

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lr0/c;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lz0/p;->b(Lr0/c;Lr0/f;)V

    return-void

    :cond_0
    new-instance p1, Lr0/h;

    const-string p2, "Cookie name may not start with $"

    invoke-direct {p1, p2}, Lr0/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lr0/h;

    const-string p2, "Cookie name may not contain blanks"

    invoke-direct {p1, p2}, Lr0/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()La0/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(La0/e;Lr0/f;)Ljava/util/List;
    .locals 2

    const-string v0, "Header"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, La0/e;->a()[La0/f;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lz0/p;->k([La0/f;Lr0/f;)Ljava/util/List;

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

.method public f(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "List of cookies"

    invoke-static {p1, v0}, LH0/a;->f(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lr0/g;->a:Lr0/g;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    :cond_0
    iget-boolean v0, p0, Lz0/y;->b:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lz0/y;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lz0/y;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected n(LH0/d;Lr0/c;I)V
    .locals 3

    invoke-interface {p2}, Lr0/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lr0/c;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lz0/y;->o(LH0/d;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2}, Lr0/c;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "; "

    if-eqz v0, :cond_0

    instance-of v0, p2, Lr0/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr0/a;

    const-string v2, "path"

    invoke-interface {v0, v2}, Lr0/a;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, LH0/d;->d(Ljava/lang/String;)V

    const-string v0, "$Path"

    invoke-interface {p2}, Lr0/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2, p3}, Lz0/y;->o(LH0/d;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-interface {p2}, Lr0/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lr0/a;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lr0/a;

    const-string v2, "domain"

    invoke-interface {v0, v2}, Lr0/a;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, LH0/d;->d(Ljava/lang/String;)V

    const-string v0, "$Domain"

    invoke-interface {p2}, Lr0/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lz0/y;->o(LH0/d;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected o(LH0/d;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1, p2}, LH0/d;->d(Ljava/lang/String;)V

    const-string p2, "="

    invoke-virtual {p1, p2}, LH0/d;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    if-lez p4, :cond_0

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, LH0/d;->a(C)V

    invoke-virtual {p1, p3}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, LH0/d;->a(C)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, LH0/d;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc2109"

    return-object v0
.end method
