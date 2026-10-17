.class public LD0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/E;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:La0/C;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LD0/n;->b:Ljava/lang/String;

    const-string p1, "URI"

    invoke-static {p2, p1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LD0/n;->c:Ljava/lang/String;

    const-string p1, "Version"

    invoke-static {p3, p1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/C;

    iput-object p1, p0, LD0/n;->a:La0/C;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD0/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD0/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()La0/C;
    .locals 1

    iget-object v0, p0, LD0/n;->a:La0/C;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LD0/j;->b:LD0/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, LD0/j;->b(LH0/d;La0/E;)LH0/d;

    move-result-object v0

    invoke-virtual {v0}, LH0/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
