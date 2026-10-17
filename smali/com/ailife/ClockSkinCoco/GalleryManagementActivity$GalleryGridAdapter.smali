.class Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;


# direct methods
.method private constructor <init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;)V
    .registers 3

    .line 278
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;-><init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 7

    .line 350
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 351
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 352
    nop

    .line 354
    const/4 v1, 0x1

    if-gt v0, p3, :cond_a

    if-le p1, p2, :cond_19

    .line 355
    :cond_a
    div-int/lit8 v0, v0, 0x2

    .line 356
    div-int/lit8 p1, p1, 0x2

    .line 358
    :goto_e
    div-int v2, v0, v1

    if-lt v2, p3, :cond_19

    div-int v2, p1, v1

    if-lt v2, p2, :cond_19

    .line 360
    mul-int/lit8 v1, v1, 0x2

    goto :goto_e

    .line 364
    :cond_19
    return v1
.end method

.method private decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9

    .line 320
    const-string v0, "GalleryManagement"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x0

    :try_start_8
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 328
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_1d

    goto :goto_2b

    .line 333
    :cond_1d
    invoke-direct {p0, v2, p2, p3}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 334
    const/4 p2, 0x0

    iput-boolean p2, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 336
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 338
    return-object p1

    .line 329
    :cond_2b
    :goto_2b
    const-string p1, "Cannot decode image - unsupported format or corrupted file"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_30} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31

    .line 330
    return-object v1

    .line 342
    :catch_31
    move-exception p1

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception decoding bitmap: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    return-object v1

    .line 339
    :catch_4d
    move-exception p1

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OutOfMemoryError decoding bitmap: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$100(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$100(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 292
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 299
    if-nez p2, :cond_28

    .line 300
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageSize:I
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$500(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageSize:I
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$500(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 303
    const/16 p3, 0x8

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_2a

    .line 305
    :cond_28
    check-cast p2, Landroid/widget/ImageView;

    .line 308
    :goto_2a
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;
    invoke-static {p3}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$100(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x12c

    invoke-direct {p0, p1, p3, p3}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->decodeSampledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 310
    if-eqz p1, :cond_45

    .line 311
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    :cond_45
    return-object p2
.end method
