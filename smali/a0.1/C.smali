.class public abstract La0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I

.field protected final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Protocol name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, La0/C;->a:Ljava/lang/String;

    const-string p1, "Protocol minor version"

    invoke-static {p2, p1}, LH0/a;->g(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, La0/C;->b:I

    invoke-static {p3, p1}, LH0/a;->g(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, La0/C;->c:I

    return-void
.end method


# virtual methods
.method public a(La0/C;)I
    .locals 4

    const-string v0, "Protocol version"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, La0/C;->a:Ljava/lang/String;

    iget-object v1, p1, La0/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Versions for different protocols cannot be compared: %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, LH0/a;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, La0/C;->c()I

    move-result v0

    invoke-virtual {p1}, La0/C;->c()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, La0/C;->d()I

    move-result v0

    invoke-virtual {p1}, La0/C;->d()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public abstract b(II)La0/C;
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La0/C;->b:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, La0/C;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La0/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La0/C;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La0/C;

    iget-object v1, p0, La0/C;->a:Ljava/lang/String;

    iget-object v3, p1, La0/C;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, La0/C;->b:I

    iget v3, p1, La0/C;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, La0/C;->c:I

    iget p1, p1, La0/C;->c:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(La0/C;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, La0/C;->a:Ljava/lang/String;

    iget-object p1, p1, La0/C;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(La0/C;)Z
    .locals 1

    invoke-virtual {p0, p1}, La0/C;->f(La0/C;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La0/C;->a(La0/C;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, La0/C;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, La0/C;->b:I

    const v2, 0x186a0

    mul-int v1, v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, La0/C;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La0/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, La0/C;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, La0/C;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
