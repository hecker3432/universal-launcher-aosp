.class public Lz0/A;
.super Lz0/a;
.source "SourceFile"

# interfaces
.implements Lr0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr0/c;Lr0/f;)V
    .locals 0

    const-string p2, "Cookie"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lr0/c;->c()I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lr0/h;

    const-string p2, "Cookie version may not be negative"

    invoke-direct {p1, p2}, Lr0/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lr0/o;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lr0/o;->f(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lr0/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Lr0/m;

    const-string p2, "Blank value for version attribute"

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
