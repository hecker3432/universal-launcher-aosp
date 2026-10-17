.class public Lz0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr0/c;Lr0/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lr0/c;Lr0/f;)V
    .locals 0

    const-string p2, "Cookie"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of p2, p1, Lr0/n;

    if-eqz p2, :cond_1

    instance-of p2, p1, Lr0/a;

    if-eqz p2, :cond_1

    check-cast p1, Lr0/a;

    const-string p2, "version"

    invoke-interface {p1, p2}, Lr0/a;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lr0/h;

    const-string p2, "Violates RFC 2965. Version attribute is required."

    invoke-direct {p1, p2}, Lr0/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lr0/o;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    invoke-interface {p1, p2}, Lr0/o;->f(I)V

    return-void

    :cond_0
    new-instance p1, Lr0/m;

    const-string p2, "Invalid cookie version."

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lr0/m;

    const-string p2, "Missing value for version attribute"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "version"

    return-object v0
.end method
