.class public Lz0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/j;
.implements Lr0/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/n$a;
    }
.end annotation


# instance fields
.field private final a:Lz0/n$a;

.field private final b:Lr0/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lz0/n$a;->a:Lz0/n$a;

    invoke-direct {p0, v0, v1}, Lz0/n;-><init>([Ljava/lang/String;Lz0/n$a;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lz0/n$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz0/n;->a:Lz0/n$a;

    new-instance v0, Lz0/m;

    invoke-direct {v0, p1, p2}, Lz0/m;-><init>([Ljava/lang/String;Lz0/n$a;)V

    iput-object v0, p0, Lz0/n;->b:Lr0/i;

    return-void
.end method


# virtual methods
.method public a(LE0/e;)Lr0/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    :cond_0
    new-instance p1, Lz0/m;

    iget-object v1, p0, Lz0/n;->a:Lz0/n$a;

    invoke-direct {p1, v0, v1}, Lz0/m;-><init>([Ljava/lang/String;Lz0/n$a;)V

    return-object p1

    :cond_1
    new-instance p1, Lz0/m;

    iget-object v1, p0, Lz0/n;->a:Lz0/n$a;

    invoke-direct {p1, v0, v1}, Lz0/m;-><init>([Ljava/lang/String;Lz0/n$a;)V

    return-object p1
.end method

.method public b(LG0/e;)Lr0/i;
    .locals 0

    iget-object p1, p0, Lz0/n;->b:Lr0/i;

    return-object p1
.end method
