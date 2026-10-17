.class public Lx0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/f;
.implements LC0/b;


# instance fields
.field private final a:LC0/f;

.field private final b:LC0/b;

.field private final c:Lx0/r;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LC0/f;Lx0/r;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/m;->a:LC0/f;

    instance-of v0, p1, LC0/b;

    if-eqz v0, :cond_0

    check-cast p1, LC0/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lx0/m;->b:LC0/b;

    iput-object p2, p0, Lx0/m;->c:Lx0/r;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, La0/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lx0/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LC0/e;
    .locals 1

    iget-object v0, p0, Lx0/m;->a:LC0/f;

    invoke-interface {v0}, LC0/f;->a()LC0/e;

    move-result-object v0

    return-object v0
.end method

.method public b(LH0/d;)I
    .locals 3

    iget-object v0, p0, Lx0/m;->a:LC0/f;

    invoke-interface {v0, p1}, LC0/f;->b(LH0/d;)I

    move-result v0

    iget-object v1, p0, Lx0/m;->c:Lx0/r;

    invoke-virtual {v1}, Lx0/r;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, LH0/d;->length()I

    move-result v1

    sub-int/2addr v1, v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, LH0/d;->g()[C

    move-result-object p1

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lx0/m;->c:Lx0/r;

    iget-object v2, p0, Lx0/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lx0/r;->c([B)V

    :cond_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lx0/m;->b:LC0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LC0/b;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)Z
    .locals 1

    iget-object v0, p0, Lx0/m;->a:LC0/f;

    invoke-interface {v0, p1}, LC0/f;->d(I)Z

    move-result p1

    return p1
.end method

.method public e([BII)I
    .locals 1

    iget-object v0, p0, Lx0/m;->a:LC0/f;

    invoke-interface {v0, p1, p2, p3}, LC0/f;->e([BII)I

    move-result p3

    iget-object v0, p0, Lx0/m;->c:Lx0/r;

    invoke-virtual {v0}, Lx0/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    iget-object v0, p0, Lx0/m;->c:Lx0/r;

    invoke-virtual {v0, p1, p2, p3}, Lx0/r;->d([BII)V

    :cond_0
    return p3
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lx0/m;->a:LC0/f;

    invoke-interface {v0}, LC0/f;->f()I

    move-result v0

    iget-object v1, p0, Lx0/m;->c:Lx0/r;

    invoke-virtual {v1}, Lx0/r;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lx0/m;->c:Lx0/r;

    invoke-virtual {v1, v0}, Lx0/r;->b(I)V

    :cond_0
    return v0
.end method
