.class public abstract Lv/k;
.super Lv/e;
.source "SourceFile"


# instance fields
.field public E0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Z0()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lv/e;)V
    .locals 1

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lv/e;->I()Lv/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/e;->I()Lv/e;

    move-result-object v0

    check-cast v0, Lv/k;

    invoke-virtual {v0, p1}, Lv/k;->b1(Lv/e;)V

    :cond_0
    invoke-virtual {p1, p0}, Lv/e;->L0(Lv/e;)V

    return-void
.end method

.method public abstract a1()V
.end method

.method public b1(Lv/e;)V
    .locals 1

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lv/e;->L0(Lv/e;)V

    return-void
.end method

.method public c1()V
    .locals 1

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public h0()V
    .locals 1

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lv/e;->h0()V

    return-void
.end method

.method public j0(Lu/c;)V
    .locals 3

    invoke-super {p0, p1}, Lv/e;->j0(Lu/c;)V

    iget-object v0, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv/k;->E0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/e;

    invoke-virtual {v2, p1}, Lv/e;->j0(Lu/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
