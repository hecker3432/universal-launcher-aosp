.class public abstract Lf0/h;
.super Lf0/b;
.source "SourceFile"

# interfaces
.implements Lf0/i;
.implements Lf0/d;


# instance fields
.field private e:La0/C;

.field private f:Ljava/net/URI;

.field private g:Ld0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Ld0/a;
    .locals 1

    iget-object v0, p0, Lf0/h;->g:Ld0/a;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()La0/C;
    .locals 1

    iget-object v0, p0, Lf0/h;->e:La0/C;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LD0/a;->getParams()LE0/e;

    move-result-object v0

    invoke-static {v0}, LE0/f;->b(LE0/e;)La0/C;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRequestLine()La0/E;
    .locals 4

    invoke-virtual {p0}, Lf0/h;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf0/h;->getProtocolVersion()La0/C;

    move-result-object v1

    invoke-virtual {p0}, Lf0/h;->getURI()Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v2, "/"

    :cond_2
    new-instance v3, LD0/n;

    invoke-direct {v3, v0, v2, v1}, LD0/n;-><init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lf0/h;->f:Ljava/net/URI;

    return-object v0
.end method

.method public k(Ld0/a;)V
    .locals 0

    iput-object p1, p0, Lf0/h;->g:Ld0/a;

    return-void
.end method

.method public l(La0/C;)V
    .locals 0

    iput-object p1, p0, Lf0/h;->e:La0/C;

    return-void
.end method

.method public m(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lf0/h;->f:Ljava/net/URI;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf0/h;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf0/h;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf0/h;->getProtocolVersion()La0/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
