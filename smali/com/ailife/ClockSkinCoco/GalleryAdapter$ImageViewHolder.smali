.class Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 110
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;->imageView:Landroid/widget/ImageView;

    .line 112
    return-void
.end method
