.class Lcom/ricktop/ClockSkinCoco/I$a;
.super Landroidx/fragment/app/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic j:Lcom/ricktop/ClockSkinCoco/I;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/I;Landroidx/fragment/app/m;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I$a;->j:Lcom/ricktop/ClockSkinCoco/I;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/m;I)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I$a;->j:Lcom/ricktop/ClockSkinCoco/I;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/I;->C1(Lcom/ricktop/ClockSkinCoco/I;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method

.method public s(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I$a;->j:Lcom/ricktop/ClockSkinCoco/I;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/I;->C1(Lcom/ricktop/ClockSkinCoco/I;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I$a;->j:Lcom/ricktop/ClockSkinCoco/I;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/I;->C1(Lcom/ricktop/ClockSkinCoco/I;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
