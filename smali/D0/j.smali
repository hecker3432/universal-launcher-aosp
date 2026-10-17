.class public LD0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/t;


# static fields
.field public static final a:LD0/j;

.field public static final b:LD0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD0/j;

    invoke-direct {v0}, LD0/j;-><init>()V

    sput-object v0, LD0/j;->a:LD0/j;

    new-instance v0, LD0/j;

    invoke-direct {v0}, LD0/j;-><init>()V

    sput-object v0, LD0/j;->b:LD0/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LH0/d;La0/e;)LH0/d;
    .locals 1

    const-string v0, "Header"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, La0/d;

    if-eqz v0, :cond_0

    check-cast p2, La0/d;

    invoke-interface {p2}, La0/d;->c()LH0/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LD0/j;->i(LH0/d;)LH0/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LD0/j;->d(LH0/d;La0/e;)V

    :goto_0
    return-object p1
.end method

.method public b(LH0/d;La0/E;)LH0/d;
    .locals 1

    const-string v0, "Request line"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LD0/j;->i(LH0/d;)LH0/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LD0/j;->e(LH0/d;La0/E;)V

    return-object p1
.end method

.method public c(LH0/d;La0/C;)LH0/d;
    .locals 1

    const-string v0, "Protocol version"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, LD0/j;->g(La0/C;)I

    move-result v0

    if-nez p1, :cond_0

    new-instance p1, LH0/d;

    invoke-direct {p1, v0}, LH0/d;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, LH0/d;->i(I)V

    :goto_0
    invoke-virtual {p2}, La0/C;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, LH0/d;->a(C)V

    invoke-virtual {p2}, La0/C;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, LH0/d;->a(C)V

    invoke-virtual {p2}, La0/C;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LH0/d;->d(Ljava/lang/String;)V

    return-object p1
.end method

.method protected d(LH0/d;La0/e;)V
    .locals 3

    invoke-interface {p2}, La0/e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La0/e;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    invoke-virtual {p1, v1}, LH0/d;->i(I)V

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, LH0/d;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected e(LH0/d;La0/E;)V
    .locals 4

    invoke-interface {p2}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La0/E;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, La0/E;->getProtocolVersion()La0/C;

    move-result-object v3

    invoke-virtual {p0, v3}, LD0/j;->g(La0/C;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, LH0/d;->i(I)V

    invoke-virtual {p1, v0}, LH0/d;->d(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, LH0/d;->a(C)V

    invoke-virtual {p1, v1}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LH0/d;->a(C)V

    invoke-interface {p2}, La0/E;->getProtocolVersion()La0/C;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LD0/j;->c(LH0/d;La0/C;)LH0/d;

    return-void
.end method

.method protected f(LH0/d;La0/F;)V
    .locals 3

    invoke-interface {p2}, La0/F;->getProtocolVersion()La0/C;

    move-result-object v0

    invoke-virtual {p0, v0}, LD0/j;->g(La0/C;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-interface {p2}, La0/F;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-virtual {p1, v0}, LH0/d;->i(I)V

    invoke-interface {p2}, La0/F;->getProtocolVersion()La0/C;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LD0/j;->c(LH0/d;La0/C;)LH0/d;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, LH0/d;->a(C)V

    invoke-interface {p2}, La0/F;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LH0/d;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LH0/d;->a(C)V

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, LH0/d;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected g(La0/C;)I
    .locals 0

    invoke-virtual {p1}, La0/C;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public h(LH0/d;La0/F;)LH0/d;
    .locals 1

    const-string v0, "Status line"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LD0/j;->i(LH0/d;)LH0/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LD0/j;->f(LH0/d;La0/F;)V

    return-object p1
.end method

.method protected i(LH0/d;)LH0/d;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LH0/d;->h()V

    goto :goto_0

    :cond_0
    new-instance p1, LH0/d;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, LH0/d;-><init>(I)V

    :goto_0
    return-object p1
.end method
