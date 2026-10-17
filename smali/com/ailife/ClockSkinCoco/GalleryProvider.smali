.class public Lcom/ailife/ClockSkinCoco/GalleryProvider;
.super Ljava/lang/Object;
.source "GalleryProvider.java"


# static fields
.field private static final CACHE_DURATION:J = 0x1388L

.field private static cachedImagePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static lastRefreshTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    .line 18
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->lastRefreshTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllImagePaths()Ljava/lang/String;
    .registers 3

    .line 58
    invoke-static {}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->refreshCacheIfNeeded()V

    .line 59
    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    const-string v0, ""

    return-object v0

    .line 62
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const/4 v1, 0x0

    :goto_14
    sget-object v2, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 64
    if-lez v1, :cond_23

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_23
    sget-object v2, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 67
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageCount()I
    .registers 1

    .line 34
    invoke-static {}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->refreshCacheIfNeeded()V

    .line 35
    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getImagePath(I)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-static {}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->refreshCacheIfNeeded()V

    .line 46
    if-ltz p0, :cond_16

    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_16

    .line 47
    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 49
    :cond_16
    const-string p0, ""

    return-object p0
.end method

.method public static hasImages()Z
    .registers 1

    .line 82
    invoke-static {}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->refreshCacheIfNeeded()V

    .line 83
    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private static isImageFile(Ljava/io/File;)Z
    .registers 3

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 142
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 143
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 144
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    :cond_30
    const/4 v1, 0x1

    .line 143
    :cond_31
    return v1
.end method

.method static synthetic lambda$loadImagePaths$0(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static loadImagePaths()V
    .registers 6

    .line 100
    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    sget-object v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 103
    return-void

    .line 106
    :cond_a
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ailife/ClockSkinCoco/GalleryProvider;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "gallery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_72

    .line 112
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 113
    if-nez v0, :cond_32

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->lastRefreshTime:J

    .line 115
    return-void

    .line 119
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    array-length v2, v0

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_49

    aget-object v4, v0, v3

    .line 121
    invoke-static {v4}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->isImageFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 127
    :cond_49
    new-instance v0, Lcom/ailife/ClockSkinCoco/GalleryProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/GalleryProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 131
    sget-object v2, Lcom/ailife/ClockSkinCoco/GalleryProvider;->cachedImagePaths:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_55

    .line 134
    :cond_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->lastRefreshTime:J

    .line 135
    return-void

    .line 108
    :cond_72
    :goto_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ailife/ClockSkinCoco/GalleryProvider;->lastRefreshTime:J

    .line 109
    return-void
.end method

.method public static refreshCache()V
    .registers 0

    .line 75
    invoke-static {}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->loadImagePaths()V

    .line 76
    return-void
.end method

.method private static refreshCacheIfNeeded()V
    .registers 5

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    sget-wide v2, Lcom/ailife/ClockSkinCoco/GalleryProvider;->lastRefreshTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 92
    invoke-static {}, Lcom/ailife/ClockSkinCoco/GalleryProvider;->loadImagePaths()V

    .line 94
    :cond_10
    return-void
.end method
