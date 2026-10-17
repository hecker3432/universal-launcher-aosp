.class public Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;
.super Landroid/app/Activity;
.source "GalleryManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;
    }
.end annotation


# static fields
.field private static final PICK_IMAGE_REQUEST:I = 0x3e9


# instance fields
.field private adapter:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;

.field private galleryDir:Ljava/io/File;

.field private gridView:Landroid/widget/GridView;

.field private imageFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private imageSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageSize:I

    return-void
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;Ljava/io/File;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->showDeleteDialog(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->openImagePicker()V

    return-void
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->loadGalleryImages()V

    return-void
.end method

.method static synthetic access$500(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageSize:I

    return p0
.end method

.method private copyImageToGallery(Landroid/net/Uri;)V
    .registers 10

    .line 183
    nop

    .line 184
    nop

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying image from URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_1c
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_fc
    .catchall {:try_start_1c .. :try_end_2c} :catchall_f9

    if-eqz v3, :cond_51

    .line 191
    :try_start_2e
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36
    .catchall {:try_start_2e .. :try_end_35} :catchall_f9

    .line 196
    goto :goto_51

    .line 193
    :catch_36
    move-exception v3

    .line 195
    :try_start_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not take persistable permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_59} :catch_fc
    .catchall {:try_start_37 .. :try_end_59} :catchall_f9

    .line 200
    const/4 v3, 0x0

    if-nez p1, :cond_75

    .line 201
    :try_start_5c
    const-string v4, "Failed to open input stream"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v4, "Failed to open image"

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6a} :catch_f3
    .catchall {:try_start_5c .. :try_end_6a} :catchall_ee

    .line 242
    if-eqz p1, :cond_72

    :try_start_6c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_72

    .line 244
    :catch_70
    move-exception p1

    goto :goto_74

    .line 243
    :cond_72
    :goto_72
    nop

    .line 246
    nop

    .line 203
    :goto_74
    return-void

    .line 207
    :cond_75
    :try_start_75
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 208
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_f3
    .catchall {:try_start_75 .. :try_end_7c} :catchall_ee

    .line 209
    nop

    .line 211
    if-nez v4, :cond_91

    .line 212
    :try_start_7f
    const-string p1, "Failed to decode image from input stream"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string p1, "Unsupported image format"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 242
    nop

    .line 243
    nop

    .line 246
    nop

    .line 214
    return-void

    .line 218
    :cond_91
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 219
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 222
    :cond_9e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gallery_"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ".jpg"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    invoke-direct {v5, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_c7} :catch_fc
    .catchall {:try_start_7f .. :try_end_c7} :catchall_f9

    .line 227
    :try_start_c7
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 230
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    const-string v4, "Image added to gallery"

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 233
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->loadGalleryImages()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e0} :catch_e9
    .catchall {:try_start_c7 .. :try_end_e0} :catchall_e6

    .line 242
    nop

    .line 243
    :try_start_e1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_13f

    goto/16 :goto_148

    .line 241
    :catchall_e6
    move-exception v0

    move-object v3, p1

    goto :goto_f1

    .line 235
    :catch_e9
    move-exception v3

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_fe

    .line 241
    :catchall_ee
    move-exception v0

    move-object v3, v2

    move-object v2, p1

    :goto_f1
    move-object p1, v0

    goto :goto_14b

    .line 235
    :catch_f3
    move-exception v3

    move-object v7, v2

    move-object v2, p1

    move-object p1, v3

    move-object v3, v7

    goto :goto_fe

    .line 241
    :catchall_f9
    move-exception p1

    move-object v3, v2

    goto :goto_14b

    .line 235
    :catch_fc
    move-exception p1

    move-object v3, v2

    .line 236
    :goto_fe
    :try_start_fe
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_139
    .catchall {:try_start_fe .. :try_end_139} :catchall_14a

    .line 242
    if-eqz v2, :cond_141

    :try_start_13b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_141

    .line 244
    :catch_13f
    move-exception p1

    goto :goto_147

    .line 243
    :cond_141
    :goto_141
    if-eqz v3, :cond_148

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_146} :catch_13f

    goto :goto_148

    .line 247
    :goto_147
    goto :goto_149

    .line 246
    :cond_148
    :goto_148
    nop

    .line 248
    :goto_149
    return-void

    .line 241
    :catchall_14a
    move-exception p1

    .line 242
    :goto_14b
    if-eqz v2, :cond_153

    :try_start_14d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_153

    .line 244
    :catch_151
    move-exception v0

    goto :goto_159

    .line 243
    :cond_153
    :goto_153
    if-eqz v3, :cond_158

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_158} :catch_151

    .line 246
    :cond_158
    nop

    .line 247
    :goto_159
    throw p1
.end method

.method private isImageFile(Ljava/io/File;)Z
    .registers 3

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 151
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 152
    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, ".webp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    .line 151
    :goto_2c
    return p1
.end method

.method private loadGalleryImages()V
    .registers 7

    .line 132
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 134
    const-string v1, "GalleryManagement"

    if-eqz v0, :cond_23

    .line 135
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_28

    aget-object v4, v0, v3

    .line 136
    invoke-direct {p0, v4}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->isImageFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 137
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 141
    :cond_23
    const-string v0, "No files found (listFiles returned null)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total images loaded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->adapter:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;

    if-eqz v0, :cond_4d

    .line 145
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->adapter:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;->notifyDataSetChanged()V

    .line 147
    :cond_4d
    return-void
.end method

.method private openImagePicker()V
    .registers 4

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_e

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.PICK_IMAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_30

    .line 159
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "image/*"

    if-lt v0, v1, :cond_26

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30

    .line 164
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :goto_30
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method

.method private setupUI()V
    .registers 7

    .line 69
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    add-int/lit8 v0, v0, -0x40

    const/4 v1, 0x3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageSize:I

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    .line 83
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 84
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 85
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 86
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 87
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 94
    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v1, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;-><init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->adapter:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;

    .line 97
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->adapter:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$GalleryGridAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    new-instance v4, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 109
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v4, "+ Add Photos"

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v4, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$2;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$2;-><init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->setContentView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method private showDeleteDialog(Ljava/io/File;)V
    .registers 4

    .line 251
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    const-string v1, "Delete Image"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    const-string v1, "Are you sure you want to delete this image?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;-><init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;Ljava/io/File;)V

    .line 254
    const-string p1, "Delete"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 267
    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 269
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_15

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    if-eqz p3, :cond_15

    .line 175
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 176
    if-eqz p1, :cond_15

    .line 177
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->copyImageToGallery(Landroid/net/Uri;)V

    .line 180
    :cond_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/gallery"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    .line 51
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_33

    .line 52
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->galleryDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;

    .line 57
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->setupUI()V

    .line 58
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->loadGalleryImages()V

    .line 61
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 62
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const-string v0, "Gallery Photos"

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    :cond_57
    return-void
.end method

.method public onNavigateUp()Z
    .registers 2

    .line 273
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->finish()V

    .line 274
    const/4 v0, 0x1

    return v0
.end method
