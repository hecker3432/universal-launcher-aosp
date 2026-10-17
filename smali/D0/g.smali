.class public LD0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/s;


# static fields
.field public static final b:LD0/g;

.field public static final c:LD0/g;

.field private static final d:Ljava/util/BitSet;

.field private static final e:Ljava/util/BitSet;


# instance fields
.field private final a:LD0/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LD0/g;

    invoke-direct {v0}, LD0/g;-><init>()V

    sput-object v0, LD0/g;->b:LD0/g;

    new-instance v0, LD0/g;

    invoke-direct {v0}, LD0/g;-><init>()V

    sput-object v0, LD0/g;->c:LD0/g;

    const/16 v0, 0x3d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, LD0/w;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, LD0/g;->d:Ljava/util/BitSet;

    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, LD0/w;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, LD0/g;->e:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LD0/w;->a:LD0/w;

    iput-object v0, p0, LD0/g;->a:LD0/w;

    return-void
.end method

.method public static e(Ljava/lang/String;LD0/s;)[La0/f;
    .locals 3

    const-string v0, "Value"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LH0/d;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    invoke-virtual {v0, p0}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v1, LD0/v;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, LD0/v;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LD0/g;->c:LD0/g;

    :goto_0
    invoke-interface {p1, v0, v1}, LD0/s;->b(LH0/d;LD0/v;)[La0/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(LH0/d;LD0/v;)La0/f;
    .locals 3

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, LD0/g;->f(LH0/d;LD0/v;)La0/y;

    move-result-object v0

    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, LH0/d;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, LD0/g;->g(LH0/d;LD0/v;)[La0/y;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, La0/y;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, LD0/g;->c(Ljava/lang/String;Ljava/lang/String;[La0/y;)La0/f;

    move-result-object p1

    return-object p1
.end method

.method public b(LH0/d;LD0/v;)[La0/f;
    .locals 3

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, LD0/g;->a(LH0/d;LD0/v;)La0/f;

    move-result-object v1

    invoke-interface {v1}, La0/f;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, La0/f;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [La0/f;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La0/f;

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;[La0/y;)La0/f;
    .locals 1

    new-instance v0, LD0/c;

    invoke-direct {v0, p1, p2, p3}, LD0/c;-><init>(Ljava/lang/String;Ljava/lang/String;[La0/y;)V

    return-object v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)La0/y;
    .locals 1

    new-instance v0, LD0/m;

    invoke-direct {v0, p1, p2}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public f(LH0/d;LD0/v;)La0/y;
    .locals 4

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LD0/g;->a:LD0/w;

    sget-object v1, LD0/g;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, LD0/w;->f(LH0/d;LD0/v;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, LD0/m;

    invoke-direct {p1, v0, v2}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p2}, LD0/v;->b()I

    move-result v1

    invoke-virtual {p1, v1}, LH0/d;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, LD0/v;->d(I)V

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v0, v2}, LD0/g;->d(Ljava/lang/String;Ljava/lang/String;)La0/y;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, LD0/g;->a:LD0/w;

    sget-object v2, LD0/g;->e:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, LD0/w;->g(LH0/d;LD0/v;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, LD0/v;->d(I)V

    :cond_2
    invoke-virtual {p0, v0, p1}, LD0/g;->d(Ljava/lang/String;Ljava/lang/String;)La0/y;

    move-result-object p1

    return-object p1
.end method

.method public g(LH0/d;LD0/v;)[La0/y;
    .locals 3

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LD0/g;->a:LD0/w;

    invoke-virtual {v0, p1, p2}, LD0/w;->h(LH0/d;LD0/v;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2}, LD0/g;->f(LH0/d;LD0/v;)La0/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, LH0/d;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [La0/y;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La0/y;

    return-object p1
.end method
