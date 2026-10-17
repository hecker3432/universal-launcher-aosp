.class public Lz0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/j;
.implements Lr0/k;


# instance fields
.field private final a:Lr0/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz0/w;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/v;

    invoke-direct {v0, p1}, Lz0/v;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lz0/w;->a:Lr0/i;

    return-void
.end method


# virtual methods
.method public a(LE0/e;)Lr0/i;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lz0/v;

    invoke-direct {v0, p1}, Lz0/v;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p1, Lz0/v;

    invoke-direct {p1}, Lz0/v;-><init>()V

    return-object p1
.end method

.method public b(LG0/e;)Lr0/i;
    .locals 0

    iget-object p1, p0, Lz0/w;->a:Lr0/i;

    return-object p1
.end method
