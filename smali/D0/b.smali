.class public LD0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/e;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LD0/b;->a:Ljava/lang/String;

    iput-object p2, p0, LD0/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[La0/f;
    .locals 2

    iget-object v0, p0, LD0/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LD0/g;->e(Ljava/lang/String;LD0/s;)[La0/f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [La0/f;

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

    iget-object v0, p0, LD0/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD0/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LD0/j;->b:LD0/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, LD0/j;->a(LH0/d;La0/e;)LH0/d;

    move-result-object v0

    invoke-virtual {v0}, LH0/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
