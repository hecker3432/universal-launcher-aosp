.class public Lv0/b;
.super Lv0/l;
.source "SourceFile"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, La0/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lv0/b;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0, p1}, Lv0/l;-><init>(Ljava/nio/charset/Charset;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv0/b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lb0/m;La0/q;LG0/e;)La0/e;
    .locals 1

    const-string p3, "Credentials"

    invoke-static {p1, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP request"

    invoke-static {p2, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lb0/m;->a()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lb0/m;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lb0/m;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lv0/l;->j(La0/q;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, LH0/f;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lt0/a;->a([BI)[B

    move-result-object p1

    new-instance p2, LH0/d;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, LH0/d;-><init>(I)V

    invoke-virtual {p0}, Lv0/a;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Proxy-Authorization"

    invoke-virtual {p2, p3}, LH0/d;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p3, "Authorization"

    invoke-virtual {p2, p3}, LH0/d;->d(Ljava/lang/String;)V

    :goto_1
    const-string p3, ": Basic "

    invoke-virtual {p2, p3}, LH0/d;->d(Ljava/lang/String;)V

    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, LH0/d;->e([BII)V

    new-instance p1, LD0/q;

    invoke-direct {p1, p2}, LD0/q;-><init>(LH0/d;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lb0/m;La0/q;)La0/e;
    .locals 1

    new-instance v0, LG0/a;

    invoke-direct {v0}, LG0/a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lv0/b;->a(Lb0/m;La0/q;LG0/e;)La0/e;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lv0/b;->d:Z

    return v0
.end method

.method public f(La0/e;)V
    .locals 0

    invoke-super {p0, p1}, Lv0/a;->f(La0/e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/b;->d:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "basic"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BASIC [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lv0/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
