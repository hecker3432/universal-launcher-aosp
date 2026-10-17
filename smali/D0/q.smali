.class public LD0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/d;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:LH0/d;

.field private final c:I


# direct methods
.method public constructor <init>(LH0/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, LH0/d;->k(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Invalid header: "

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, LD0/q;->b:LH0/d;

    iput-object v1, p0, LD0/q;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LD0/q;->c:I

    return-void

    :cond_0
    new-instance v0, La0/A;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LH0/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, La0/A;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, La0/A;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LH0/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, La0/A;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()[La0/f;
    .locals 3

    new-instance v0, LD0/v;

    iget-object v1, p0, LD0/q;->b:LH0/d;

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, LD0/v;-><init>(II)V

    iget v1, p0, LD0/q;->c:I

    invoke-virtual {v0, v1}, LD0/v;->d(I)V

    sget-object v1, LD0/g;->c:LD0/g;

    iget-object v2, p0, LD0/q;->b:LH0/d;

    invoke-virtual {v1, v2, v0}, LD0/g;->b(LH0/d;LD0/v;)[La0/f;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LD0/q;->c:I

    return v0
.end method

.method public c()LH0/d;
    .locals 1

    iget-object v0, p0, LD0/q;->b:LH0/d;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD0/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD0/q;->b:LH0/d;

    iget v1, p0, LD0/q;->c:I

    invoke-virtual {v0}, LH0/d;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD0/q;->b:LH0/d;

    invoke-virtual {v0}, LH0/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
