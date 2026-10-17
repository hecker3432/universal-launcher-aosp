.class Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$C;
.source "WatchFaceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WatchFaceViewHolder"
.end annotation


# instance fields
.field pinIndicator:Landroid/widget/TextView;

.field watchFaceName:Landroid/widget/TextView;

.field watchFacePreview:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 201
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$C;-><init>(Landroid/view/View;)V

    .line 202
    const v0, 0x7f0a02a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->watchFacePreview:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0a02a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->watchFaceName:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0a029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->pinIndicator:Landroid/widget/TextView;

    .line 205
    return-void
.end method
