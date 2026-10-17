.class public Lcom/ailife/ClockSkinCoco/GalleryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;,
        Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private deleteListener:Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;

.field private imageFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;)V
    .locals 0
    .param p2, "deleteListener"    # Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;",
            ")V"
        }
    .end annotation

    .line 25
    .local p1, "imageFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->imageFiles:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->deleteListener:Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;

    .line 28
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 89
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 90
    .local v0, "height":I
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 91
    .local v1, "width":I
    const/4 v2, 0x1

    .line 93
    .local v2, "inSampleSize":I
    if-gt v0, p3, :cond_0

    if-le v1, p2, :cond_1

    .line 94
    :cond_0
    div-int/lit8 v3, v0, 0x2

    .line 95
    .local v3, "halfHeight":I
    div-int/lit8 v4, v1, 0x2

    .line 97
    .local v4, "halfWidth":I
    :goto_0
    div-int v5, v3, v2

    if-lt v5, p3, :cond_1

    div-int v5, v4, v2

    if-lt v5, p2, :cond_1

    .line 99
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 103
    .end local v3    # "halfHeight":I
    .end local v4    # "halfWidth":I
    :cond_1
    return v2
.end method

.method private decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 76
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 81
    invoke-direct {p0, v0, p2, p3}, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->imageFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-ailife-ClockSkinCoco-GalleryAdapter(Ljava/io/File;Landroid/view/View;)Z
    .locals 1
    .param p1, "imageFile"    # Ljava/io/File;
    .param p2, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->deleteListener:Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->deleteListener:Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;

    invoke-interface {v0, p1}, Lcom/ailife/ClockSkinCoco/GalleryAdapter$OnImageDeleteListener;->onDelete(Ljava/io/File;)V

    .line 62
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->onBindViewHolder(Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;
    .param p2, "position"    # I

    .line 51
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->imageFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 54
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-direct {p0, v1, v2, v2}, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v2, p1, Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/ClockSkinCoco/GalleryAdapter;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 38
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x20

    .line 41
    .local v1, "size":I
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 42
    .local v2, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v3, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    new-instance v3, Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;

    invoke-direct {v3, v0}, Lcom/ailife/ClockSkinCoco/GalleryAdapter$ImageViewHolder;-><init>(Landroid/view/View;)V

    return-object v3
.end method

.method public updateImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "newImageFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->imageFiles:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
