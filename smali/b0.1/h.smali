.class public Lb0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lb0/b;

.field private b:Lb0/c;

.field private c:Lb0/g;

.field private d:Lb0/m;

.field private e:Ljava/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb0/b;->a:Lb0/b;

    iput-object v0, p0, Lb0/h;->a:Lb0/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lb0/h;->e:Ljava/util/Queue;

    return-object v0
.end method

.method public b()Lb0/c;
    .locals 1

    iget-object v0, p0, Lb0/h;->b:Lb0/c;

    return-object v0
.end method

.method public c()Lb0/m;
    .locals 1

    iget-object v0, p0, Lb0/h;->d:Lb0/m;

    return-object v0
.end method

.method public d()Lb0/b;
    .locals 1

    iget-object v0, p0, Lb0/h;->a:Lb0/b;

    return-object v0
.end method

.method public e()V
    .locals 1

    sget-object v0, Lb0/b;->a:Lb0/b;

    iput-object v0, p0, Lb0/h;->a:Lb0/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lb0/h;->e:Ljava/util/Queue;

    iput-object v0, p0, Lb0/h;->b:Lb0/c;

    iput-object v0, p0, Lb0/h;->c:Lb0/g;

    iput-object v0, p0, Lb0/h;->d:Lb0/m;

    return-void
.end method

.method public f(Lb0/c;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lb0/h;->e()V

    return-void

    :cond_0
    iput-object p1, p0, Lb0/h;->b:Lb0/c;

    return-void
.end method

.method public g(Lb0/m;)V
    .locals 0

    iput-object p1, p0, Lb0/h;->d:Lb0/m;

    return-void
.end method

.method public h(Lb0/b;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lb0/b;->a:Lb0/b;

    :goto_0
    iput-object p1, p0, Lb0/h;->a:Lb0/b;

    return-void
.end method

.method public i(Lb0/c;Lb0/m;)V
    .locals 1

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Credentials"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb0/h;->b:Lb0/c;

    iput-object p2, p0, Lb0/h;->d:Lb0/m;

    const/4 p1, 0x0

    iput-object p1, p0, Lb0/h;->e:Ljava/util/Queue;

    return-void
.end method

.method public j(Ljava/util/Queue;)V
    .locals 1

    const-string v0, "Queue of auth options"

    invoke-static {p1, v0}, LH0/a;->f(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iput-object p1, p0, Lb0/h;->e:Ljava/util/Queue;

    const/4 p1, 0x0

    iput-object p1, p0, Lb0/h;->b:Lb0/c;

    iput-object p1, p0, Lb0/h;->d:Lb0/m;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb0/h;->a:Lb0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb0/h;->b:Lb0/c;

    if-eqz v2, :cond_0

    const-string v2, "auth scheme:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb0/h;->b:Lb0/c;

    invoke-interface {v2}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb0/h;->d:Lb0/m;

    if-eqz v1, :cond_1

    const-string v1, "credentials present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
