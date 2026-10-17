.class public Lv0/j;
.super Lv0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/j$a;
    }
.end annotation


# instance fields
.field private final b:Lv0/h;

.field private c:Lv0/j$a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lv0/i;

    invoke-direct {v0}, Lv0/i;-><init>()V

    invoke-direct {p0, v0}, Lv0/j;-><init>(Lv0/h;)V

    return-void
.end method

.method public constructor <init>(Lv0/h;)V
    .locals 1

    invoke-direct {p0}, Lv0/a;-><init>()V

    const-string v0, "NTLM engine"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lv0/j;->b:Lv0/h;

    sget-object p1, Lv0/j$a;->a:Lv0/j$a;

    iput-object p1, p0, Lv0/j;->c:Lv0/j$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lv0/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Lb0/m;La0/q;)La0/e;
    .locals 2

    :try_start_0
    invoke-static {p1}, Li/r;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lv0/j;->c:Lv0/j$a;

    sget-object p2, Lv0/j$a;->f:Lv0/j$a;

    if-eq p1, p2, :cond_2

    sget-object p2, Lv0/j$a;->b:Lv0/j$a;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    sget-object p2, Lv0/j$a;->d:Lv0/j$a;

    if-ne p1, p2, :cond_0

    throw v0

    :cond_0
    new-instance p1, Lb0/i;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv0/j;->c:Lv0/j$a;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb0/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Lb0/i;

    const-string p2, "NTLM authentication failed"

    invoke-direct {p1, p2}, Lb0/i;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p2, Lb0/n;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lb0/n;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lv0/j;->c:Lv0/j$a;

    sget-object v1, Lv0/j$a;->e:Lv0/j$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lv0/j$a;->f:Lv0/j$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "ntlm"

    return-object v0
.end method

.method protected i(LH0/d;II)V
    .locals 0

    invoke-virtual {p1, p2, p3}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv0/j;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv0/j;->c:Lv0/j$a;

    sget-object p2, Lv0/j$a;->a:Lv0/j$a;

    if-ne p1, p2, :cond_0

    sget-object p1, Lv0/j$a;->b:Lv0/j$a;

    iput-object p1, p0, Lv0/j;->c:Lv0/j$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lv0/j$a;->f:Lv0/j$a;

    iput-object p1, p0, Lv0/j;->c:Lv0/j$a;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv0/j;->c:Lv0/j$a;

    sget-object p2, Lv0/j$a;->c:Lv0/j$a;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object p1, p0, Lv0/j;->c:Lv0/j$a;

    if-ne p1, p2, :cond_2

    sget-object p1, Lv0/j$a;->d:Lv0/j$a;

    iput-object p1, p0, Lv0/j;->c:Lv0/j$a;

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object p1, Lv0/j$a;->f:Lv0/j$a;

    iput-object p1, p0, Lv0/j;->c:Lv0/j$a;

    new-instance p1, Lb0/o;

    const-string p2, "Out of sequence NTLM response message"

    invoke-direct {p1, p2}, Lb0/o;-><init>(Ljava/lang/String;)V

    throw p1
.end method
