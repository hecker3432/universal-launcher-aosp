.class public Lr0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr0/c;Lr0/c;)I
    .locals 6

    invoke-interface {p1}, Lr0/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lr0/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lr0/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".local"

    const/4 v2, -0x1

    const/16 v3, 0x2e

    const-string v4, ""

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Lr0/c;->d()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_4
    if-nez v0, :cond_7

    invoke-interface {p1}, Lr0/c;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    invoke-interface {p2}, Lr0/c;->q()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, p2

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_7
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr0/c;

    check-cast p2, Lr0/c;

    invoke-virtual {p0, p1, p2}, Lr0/e;->a(Lr0/c;Lr0/c;)I

    move-result p1

    return p1
.end method
