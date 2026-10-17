.class Lr/a$a;
.super Lr/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr/a;->m()Lr/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lr/a;


# direct methods
.method constructor <init>(Lr/a;)V
    .locals 0

    iput-object p1, p0, Lr/a$a;->d:Lr/a;

    invoke-direct {p0}, Lr/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    invoke-virtual {v0}, Lr/g;->clear()V

    return-void
.end method

.method protected b(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    iget-object v0, v0, Lr/g;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    return-object v0
.end method

.method protected d()I
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    iget v0, v0, Lr/g;->c:I

    return v0
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    invoke-virtual {v0, p1}, Lr/g;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    invoke-virtual {v0, p1}, Lr/g;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    invoke-virtual {v0, p1, p2}, Lr/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected h(I)V
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    invoke-virtual {v0, p1}, Lr/g;->j(I)Ljava/lang/Object;

    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr/a$a;->d:Lr/a;

    invoke-virtual {v0, p1, p2}, Lr/g;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
