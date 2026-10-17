.class final Landroid/support/wearable/view/WearableRecyclerView$c;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic I:Landroid/support/wearable/view/WearableRecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/wearable/view/WearableRecyclerView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/support/wearable/view/WearableRecyclerView$c;->I:Landroid/support/wearable/view/WearableRecyclerView;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method private N2()V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView$c;->I:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableRecyclerView;->A1(Landroid/support/wearable/view/WearableRecyclerView;)Landroid/support/wearable/view/WearableRecyclerView$b;

    return-void
.end method


# virtual methods
.method public X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->J()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/WearableRecyclerView$c;->N2()V

    return-void
.end method

.method public y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableRecyclerView$c;->N2()V

    return p1
.end method
