.class public Lz0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lz0/u;

.field private static final c:Ljava/util/BitSet;

.field private static final d:Ljava/util/BitSet;


# instance fields
.field private final a:LD0/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/u;

    invoke-direct {v0}, Lz0/u;-><init>()V

    sput-object v0, Lz0/u;->b:Lz0/u;

    const/16 v0, 0x3d

    const/16 v1, 0x3b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, LD0/w;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lz0/u;->c:Ljava/util/BitSet;

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-static {v0}, LD0/w;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lz0/u;->d:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LD0/w;->a:LD0/w;

    iput-object v0, p0, Lz0/u;->a:LD0/w;

    return-void
.end method

.method private b(LH0/d;LD0/v;)La0/y;
    .locals 4

    iget-object v0, p0, Lz0/u;->a:LD0/w;

    sget-object v1, Lz0/u;->c:Ljava/util/BitSet;

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

    new-instance p1, LD0/m;

    invoke-direct {p1, v0, v2}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lz0/u;->a:LD0/w;

    sget-object v2, Lz0/u;->d:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, LD0/w;->f(LH0/d;LD0/v;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, LD0/v;->d(I)V

    :cond_2
    new-instance p2, LD0/m;

    invoke-direct {p2, v0, p1}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a(LH0/d;LD0/v;)La0/f;
    .locals 3

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lz0/u;->b(LH0/d;LD0/v;)La0/y;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p2}, LD0/v;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lz0/u;->b(LH0/d;LD0/v;)La0/y;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, LD0/c;

    invoke-interface {v0}, La0/y;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [La0/y;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [La0/y;

    invoke-direct {p1, p2, v0, v1}, LD0/c;-><init>(Ljava/lang/String;Ljava/lang/String;[La0/y;)V

    return-object p1
.end method
