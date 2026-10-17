.class public abstract LE0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE0/e;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)LE0/e;
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p0, p1, p2}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-object p0
.end method

.method public b(Ljava/lang/String;I)LE0/e;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-object p0
.end method

.method public c(Ljava/lang/String;I)I
    .locals 0

    invoke-interface {p0, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;J)J
    .locals 0

    invoke-interface {p0, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public f(Ljava/lang/String;Z)Z
    .locals 0

    invoke-interface {p0, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LE0/a;->f(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public i(Ljava/lang/String;J)LE0/e;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LE0/a;->f(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
