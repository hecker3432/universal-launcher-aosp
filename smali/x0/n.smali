.class public Lx0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/g;


# instance fields
.field private final a:LC0/g;

.field private final b:Lx0/r;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LC0/g;Lx0/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/n;->a:LC0/g;

    iput-object p2, p0, Lx0/n;->b:Lx0/r;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, La0/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lx0/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LC0/e;
    .locals 1

    iget-object v0, p0, Lx0/n;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->a()LC0/e;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)V
    .locals 1

    iget-object v0, p0, Lx0/n;->a:LC0/g;

    invoke-interface {v0, p1, p2, p3}, LC0/g;->b([BII)V

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    invoke-virtual {v0}, Lx0/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    invoke-virtual {v0, p1, p2, p3}, Lx0/r;->g([BII)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lx0/n;->a:LC0/g;

    invoke-interface {v0, p1}, LC0/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    invoke-virtual {v0}, Lx0/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    iget-object v1, p0, Lx0/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lx0/r;->f([B)V

    :cond_0
    return-void
.end method

.method public d(LH0/d;)V
    .locals 3

    iget-object v0, p0, Lx0/n;->a:LC0/g;

    invoke-interface {v0, p1}, LC0/g;->d(LH0/d;)V

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    invoke-virtual {v0}, Lx0/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, LH0/d;->g()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, LH0/d;->length()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    iget-object v1, p0, Lx0/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lx0/r;->f([B)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lx0/n;->a:LC0/g;

    invoke-interface {v0, p1}, LC0/g;->e(I)V

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    invoke-virtual {v0}, Lx0/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx0/n;->b:Lx0/r;

    invoke-virtual {v0, p1}, Lx0/r;->e(I)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lx0/n;->a:LC0/g;

    invoke-interface {v0}, LC0/g;->flush()V

    return-void
.end method
