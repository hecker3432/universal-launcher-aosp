.class Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$C;
.source "WatchFaceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderHeaderViewHolder"
.end annotation


# instance fields
.field expandIcon:Landroid/widget/TextView;

.field folderCount:Landroid/widget/TextView;

.field folderName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 188
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$C;-><init>(Landroid/view/View;)V

    .line 189
    const v0, 0x7f0a029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->expandIcon:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0a029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->folderName:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0a029c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->folderCount:Landroid/widget/TextView;

    .line 192
    return-void
.end method
