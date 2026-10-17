.class public Lb0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/m;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lb0/j;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Username:password string"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Lb0/j;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lb0/j;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lb0/p;->a:Lb0/j;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb0/p;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lb0/j;

    invoke-direct {v0, p1}, Lb0/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb0/p;->a:Lb0/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lb0/p;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lb0/p;->a:Lb0/j;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb0/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb0/p;

    if-eqz v1, :cond_1

    check-cast p1, Lb0/p;

    iget-object v1, p0, Lb0/p;->a:Lb0/j;

    iget-object p1, p1, Lb0/p;->a:Lb0/j;

    invoke-static {v1, p1}, LH0/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb0/p;->a:Lb0/j;

    invoke-virtual {v0}, Lb0/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb0/p;->a:Lb0/j;

    invoke-virtual {v0}, Lb0/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
