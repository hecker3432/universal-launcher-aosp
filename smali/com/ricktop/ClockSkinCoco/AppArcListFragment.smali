.class public Lcom/ricktop/ClockSkinCoco/AppArcListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/AppArcListFragment$MyLauncherChildLayoutManager;
    }
.end annotation


# instance fields
.field public Y:Landroid/support/wearable/view/WearableRecyclerView;

.field public Z:Lcom/ricktop/ClockSkinCoco/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppListFragment.this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppListFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public C1()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshApplist.mApplistUtil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Z:Lcom/ricktop/ClockSkinCoco/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mAppListView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppListFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Z:Lcom/ricktop/ClockSkinCoco/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/d;->c()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Z:Lcom/ricktop/ClockSkinCoco/d;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/d;->d()LT/a$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->j()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    # Check if we need to scroll to a specific position
    sget v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0

    # Scroll to the target position
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;
    invoke-virtual {v1, v0}, Landroid/support/wearable/view/WearableRecyclerView;->p1(I)V

    # Reset scroll position to -1
    const/4 v1, -0x1
    sput v1, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    :cond_0
    return-void
.end method

.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView.this:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AppListFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0d002a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ricktop/ClockSkinCoco/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Z:Lcom/ricktop/ClockSkinCoco/d;

    const p2, 0x7f0a0191

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/wearable/view/WearableRecyclerView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/wearable/view/WearableRecyclerView;->setCenterEdgeItems(Z)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/AppArcListFragment$MyLauncherChildLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ricktop/ClockSkinCoco/AppArcListFragment$MyLauncherChildLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Z:Lcom/ricktop/ClockSkinCoco/d;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/d;->d()LT/a$a;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    new-instance p2, Landroidx/recyclerview/widget/h;

    invoke-direct {p2}, Landroidx/recyclerview/widget/h;-><init>()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/o;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->p1(I)V

    return-object p1
.end method

.method public n0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppListFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Y:Landroid/support/wearable/view/WearableRecyclerView;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->Z:Lcom/ricktop/ClockSkinCoco/d;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    return-void
.end method

.method public y0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
