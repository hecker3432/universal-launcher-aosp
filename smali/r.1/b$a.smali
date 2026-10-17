.class Lr/b$a;
.super Lr/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr/b;->d()Lr/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lr/b;


# direct methods
.method constructor <init>(Lr/b;)V
    .locals 0

    iput-object p1, p0, Lr/b$a;->d:Lr/b;

    invoke-direct {p0}, Lr/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lr/b$a;->d:Lr/b;

    invoke-virtual {v0}, Lr/b;->clear()V

    return-void
.end method

.method protected b(II)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lr/b$a;->d:Lr/b;

    iget-object p2, p2, Lr/b;->b:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected c()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d()I
    .locals 1

    iget-object v0, p0, Lr/b$a;->d:Lr/b;

    iget v0, v0, Lr/b;->c:I

    return v0
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lr/b$a;->d:Lr/b;

    invoke-virtual {v0, p1}, Lr/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lr/b$a;->d:Lr/b;

    invoke-virtual {v0, p1}, Lr/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lr/b$a;->d:Lr/b;

    invoke-virtual {p2, p1}, Lr/b;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(I)V
    .locals 1

    iget-object v0, p0, Lr/b$a;->d:Lr/b;

    invoke-virtual {v0, p1}, Lr/b;->g(I)Ljava/lang/Object;

    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
