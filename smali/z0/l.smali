.class public Lz0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/j;
.implements Lr0/k;


# instance fields
.field private final a:Lr0/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lz0/l;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/k;

    invoke-direct {v0, p1, p2}, Lz0/k;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lz0/l;->a:Lr0/i;

    return-void
.end method


# virtual methods
.method public a(LE0/e;)Lr0/i;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "http.protocol.single-cookie-header"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, LE0/e;->f(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v1, Lz0/k;

    invoke-direct {v1, v0, p1}, Lz0/k;-><init>([Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    new-instance p1, Lz0/k;

    invoke-direct {p1}, Lz0/k;-><init>()V

    return-object p1
.end method

.method public b(LG0/e;)Lr0/i;
    .locals 0

    iget-object p1, p0, Lz0/l;->a:Lr0/i;

    return-object p1
.end method
