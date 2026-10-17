.class public LD0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/F;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:La0/C;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(La0/C;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Version"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/C;

    iput-object p1, p0, LD0/o;->a:La0/C;

    const-string p1, "Status code"

    invoke-static {p2, p1}, LH0/a;->g(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LD0/o;->b:I

    iput-object p3, p0, LD0/o;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD0/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LD0/o;->b:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()La0/C;
    .locals 1

    iget-object v0, p0, LD0/o;->a:La0/C;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LD0/j;->b:LD0/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, LD0/j;->h(LH0/d;La0/F;)LH0/d;

    move-result-object v0

    invoke-virtual {v0}, LH0/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
