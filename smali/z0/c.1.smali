.class public Lz0/c;
.super Lz0/d;
.source "SourceFile"

# interfaces
.implements Lr0/n;


# instance fields
.field private j:Ljava/lang/String;

.field private k:[I

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz0/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lz0/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/c;

    iget-object v1, p0, Lz0/c;->k:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lz0/c;->k:[I

    :cond_0
    return-object v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lz0/c;->l:Z

    return-void
.end method

.method public i()[I
    .locals 1

    iget-object v0, p0, Lz0/c;->k:[I

    return-object v0
.end method

.method public m(Ljava/util/Date;)Z
    .locals 1

    iget-boolean v0, p0, Lz0/c;->l:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lz0/d;->m(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz0/c;->j:Ljava/lang/String;

    return-void
.end method

.method public r([I)V
    .locals 0

    iput-object p1, p0, Lz0/c;->k:[I

    return-void
.end method
