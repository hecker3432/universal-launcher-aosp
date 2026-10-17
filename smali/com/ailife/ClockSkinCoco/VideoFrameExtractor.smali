.class public Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;
.super Ljava/lang/Object;
.source "VideoFrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;
    }
.end annotation


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "video_frames_cache"

.field private static final TAG:Ljava/lang/String; = "VideoFrameExtractor"

.field private static appContext:Landroid/content/Context;

.field private static final extractionStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 27
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    return-object v0
.end method

.method private static areBitmapsIdentical(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .registers 9

    .line 871
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_16

    goto :goto_38

    .line 876
    :cond_16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 877
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 878
    nop

    .line 880
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_36

    .line 881
    const/4 v4, 0x0

    :goto_23
    if-ge v4, v0, :cond_33

    .line 882
    invoke-virtual {p0, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eq v5, v6, :cond_30

    .line 883
    return v2

    .line 881
    :cond_30
    add-int/lit8 v4, v4, 0xa

    goto :goto_23

    .line 880
    :cond_33
    add-int/lit8 v3, v3, 0xa

    goto :goto_20

    .line 888
    :cond_36
    const/4 p0, 0x1

    return p0

    .line 872
    :cond_38
    :goto_38
    return v2
.end method

.method public static clearAllCache()Z
    .registers 1

    .line 850
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 852
    :cond_6
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getFramesCacheDir()Ljava/io/File;

    move-result-object v0

    .line 853
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static clearCache(Ljava/lang/String;)Z
    .registers 3

    .line 838
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 840
    :cond_6
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getFramesCacheDir()Ljava/io/File;

    move-result-object v0

    .line 841
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 843
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static deleteRecursive(Ljava/io/File;)Z
    .registers 5

    .line 893
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 895
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 896
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_20

    .line 898
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 899
    invoke-static {v3}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 903
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static extractFrames(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 608
    const/16 v0, 0x1e

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFrames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractFrames(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFrames(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractFrames(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 27

    .line 87
    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    const/4 v7, 0x0

    if-nez v2, :cond_13

    .line 88
    const-string v0, "VideoFrameExtractor"

    const-string v1, "VideoFrameExtractor not initialized! Call init() first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v7

    .line 93
    :cond_13
    nop

    .line 94
    nop

    .line 96
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 98
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFromZip(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 99
    if-nez v2, :cond_3c

    .line 100
    const-string v1, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to extract video from ZIP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v7

    .line 103
    :cond_3c
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "VideoFrameExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracted video from ZIP to: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v2

    move-object v2, v3

    goto :goto_5d

    .line 96
    :cond_5b
    move-object v2, v0

    move-object v8, v7

    .line 107
    :goto_5d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_86

    .line 109
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video file not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v8, :cond_85

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 111
    :cond_85
    return-object v7

    .line 117
    :cond_86
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_aa

    .line 119
    const-string v3, ":"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 120
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\.[^.]+$"

    const-string v9, ""

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_bb

    .line 123
    :cond_aa
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\.[^.]+$"

    const-string v9, ""

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_bb
    if-eqz v1, :cond_db

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_db

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_dc

    .line 131
    :cond_db
    move-object v1, v0

    .line 133
    :goto_dc
    const-string v3, "VideoFrameExtractor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Using cache name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getFramesCacheDir()Ljava/io/File;

    move-result-object v3

    .line 136
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1bc

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1bc

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1bc

    .line 141
    new-instance v3, Ljava/io/File;

    const-string v10, ".complete"

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15b

    .line 143
    const-string v3, "VideoFrameExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incomplete extraction detected (no completion marker), clearing cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v9}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    .line 146
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 147
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to recreate cache directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v7

    .line 152
    :cond_15b
    invoke-static {v9, v2, v6}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->validateCache(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 153
    const-string v1, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using cached frames for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_17e
    const-string v3, "VideoFrameExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cache validation failed, clearing and re-extracting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v9}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    .line 159
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 160
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to recreate cache directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v7

    .line 168
    :cond_1bc
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 169
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 170
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create cache directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v7

    .line 177
    :cond_1e5
    :try_start_1e5
    invoke-static {v2, v9, v1, v6}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFramesWithMediaCodec(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1e9} :catch_1ea

    return-object v0

    .line 178
    :catch_1ea
    move-exception v0

    .line 179
    const-string v1, "VideoFrameExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MediaCodec extraction failed, falling back to MediaMetadataRetriever: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 185
    :try_start_20c
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting data source (fallback): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v10, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 189
    const/16 v0, 0x9

    invoke-virtual {v10, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_22d} :catch_4e6
    .catchall {:try_start_20c .. :try_end_22d} :catchall_4e1

    .line 190
    if-nez v0, :cond_271

    .line 191
    :try_start_22f
    const-string v0, "VideoFrameExtractor"

    const-string v1, "Failed to get video duration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_236} :catch_4e6
    .catchall {:try_start_22f .. :try_end_236} :catchall_26b

    .line 192
    nop

    .line 300
    :try_start_237
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_23a} :catch_23b

    .line 303
    goto :goto_258

    .line 301
    :catch_23b
    move-exception v0

    .line 302
    const-string v1, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error releasing MediaMetadataRetriever: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_258
    if-eqz v8, :cond_26a

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 307
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 308
    const-string v0, "VideoFrameExtractor"

    const-string v1, "Cleaned up temporary video file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_26a
    return-object v7

    .line 299
    :catchall_26b
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v8

    goto/16 :goto_53e

    .line 194
    :cond_271
    :try_start_271
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 195
    const-wide/16 v0, 0x3e8

    mul-long v13, v11, v0

    .line 199
    if-gtz v6, :cond_280

    .line 201
    const-wide/32 v0, 0x8235

    move-wide v15, v0

    goto :goto_286

    .line 203
    :cond_280
    const v0, 0xf4240

    div-int/2addr v0, v6

    int-to-long v0, v0

    move-wide v15, v0

    .line 206
    :goto_286
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting frames from: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", duration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms, fps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b2
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_2b2} :catch_4e6
    .catchall {:try_start_271 .. :try_end_2b2} :catchall_4e1

    .line 208
    nop

    .line 209
    nop

    .line 212
    long-to-double v0, v11

    const-wide v17, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v17

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    double-to-int v0, v0

    .line 213
    :try_start_2ca
    const-string v1, "VideoFrameExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Will extract approximately "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " frames"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v1
    :try_end_2eb
    .catch Ljava/lang/Exception; {:try_start_2ca .. :try_end_2eb} :catch_4df
    .catchall {:try_start_2ca .. :try_end_2eb} :catchall_53c

    .line 217
    :try_start_2eb
    sget-object v3, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 218
    iget-object v8, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    if-eqz v8, :cond_316

    iget-object v8, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    const/16 v19, 0x1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_318

    .line 219
    iput v0, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->totalFrames:I

    .line 220
    goto :goto_31c

    .line 218
    :cond_316
    const/16 v19, 0x1

    .line 222
    :cond_318
    const/4 v5, 0x1

    goto :goto_2f5

    .line 217
    :cond_31a
    const/16 v19, 0x1

    .line 223
    :goto_31c
    monitor-exit v1
    :try_end_31d
    .catchall {:try_start_2eb .. :try_end_31d} :catchall_4dc

    .line 227
    nop

    .line 228
    const-wide/16 v7, 0x0

    move-object/from16 v0, v18

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 230
    :goto_324
    cmp-long v20, v7, v13

    if-gez v20, :cond_460

    .line 233
    const/16 p0, 0x0

    const/4 v1, 0x3

    :try_start_32b
    invoke-virtual {v10, v7, v8, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    if-nez v1, :cond_356

    .line 236
    const-string v1, "VideoFrameExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    const-string v2, "Failed to extract frame at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "us, skipping"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    add-long/2addr v7, v15

    .line 238
    move-object/from16 v2, v21

    const/4 v4, 0x2

    goto :goto_324

    .line 242
    :cond_356
    move-object/from16 v21, v2

    .line 243
    if-eqz v0, :cond_368

    invoke-static {v1, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->areBitmapsIdentical(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_368

    .line 244
    nop

    .line 245
    add-int/lit8 v3, v3, 0x1

    .line 246
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_45a

    .line 250
    :cond_368
    if-eqz v0, :cond_373

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_373

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_373
    nop

    .line 256
    const-string v0, "%s/frame_%03d.png"

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 p2, v2

    move-object/from16 v20, v4

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, p0

    aput-object v20, v4, v19

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_392
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_392} :catch_4df
    .catchall {:try_start_32b .. :try_end_392} :catchall_53c

    .line 259
    :try_start_392
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_397
    .catch Ljava/io/IOException; {:try_start_392 .. :try_end_397} :catch_42f
    .catch Ljava/lang/Exception; {:try_start_392 .. :try_end_397} :catch_4df
    .catchall {:try_start_392 .. :try_end_397} :catchall_53c

    .line 260
    :try_start_397
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 261
    add-int/lit8 v5, v5, 0x1

    .line 264
    rem-int/lit8 v0, v5, 0xa

    if-nez v0, :cond_414

    .line 265
    const-string v0, "VideoFrameExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3ab
    .catchall {:try_start_397 .. :try_end_3ab} :catchall_420

    move-object/from16 p2, v1

    :try_start_3ad
    const-string v1, "Extracted "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " unique frames (skipped "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " duplicates)..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v1
    :try_end_3d1
    .catchall {:try_start_3ad .. :try_end_3d1} :catchall_412

    .line 267
    :try_start_3d1
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3db
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_405

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 268
    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    if-eqz v0, :cond_3fe

    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;
    :try_end_3ef
    .catchall {:try_start_3d1 .. :try_end_3ef} :catchall_409

    move-object/from16 v23, v2

    :try_start_3f1
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_400

    .line 269
    iput v5, v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->currentFrame:I

    .line 270
    goto :goto_407

    .line 268
    :cond_3fe
    move-object/from16 v23, v2

    .line 272
    :cond_400
    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_3db

    .line 267
    :cond_405
    move-object/from16 v23, v2

    .line 273
    :goto_407
    monitor-exit v1

    goto :goto_418

    :catchall_409
    move-exception v0

    move-object/from16 v23, v2

    :goto_40c
    monitor-exit v1
    :try_end_40d
    .catchall {:try_start_3f1 .. :try_end_40d} :catchall_410

    :try_start_40d
    throw v0
    :try_end_40e
    .catchall {:try_start_40d .. :try_end_40e} :catchall_40e

    .line 259
    :catchall_40e
    move-exception v0

    goto :goto_425

    .line 273
    :catchall_410
    move-exception v0

    goto :goto_40c

    .line 259
    :catchall_412
    move-exception v0

    goto :goto_423

    .line 264
    :cond_414
    move-object/from16 p2, v1

    move-object/from16 v23, v2

    .line 275
    :goto_418
    :try_start_418
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_41b
    .catch Ljava/io/IOException; {:try_start_418 .. :try_end_41b} :catch_41e
    .catch Ljava/lang/Exception; {:try_start_418 .. :try_end_41b} :catch_4df
    .catchall {:try_start_418 .. :try_end_41b} :catchall_53c

    .line 277
    move-object/from16 v0, p2

    goto :goto_45a

    .line 275
    :catch_41e
    move-exception v0

    goto :goto_432

    .line 259
    :catchall_420
    move-exception v0

    move-object/from16 p2, v1

    :goto_423
    move-object/from16 v23, v2

    :goto_425
    move-object v1, v0

    :try_start_426
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_429
    .catchall {:try_start_426 .. :try_end_429} :catchall_42a

    goto :goto_42e

    :catchall_42a
    move-exception v0

    :try_start_42b
    invoke-static {v1, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_42e
    throw v1
    :try_end_42f
    .catch Ljava/io/IOException; {:try_start_42b .. :try_end_42f} :catch_41e
    .catch Ljava/lang/Exception; {:try_start_42b .. :try_end_42f} :catch_4df
    .catchall {:try_start_42b .. :try_end_42f} :catchall_53c

    .line 275
    :catch_42f
    move-exception v0

    move-object/from16 p2, v1

    .line 276
    :goto_432
    :try_start_432
    const-string v1, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save frame "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    .line 280
    :goto_45a
    add-long/2addr v7, v15

    .line 281
    move-object/from16 v2, v21

    const/4 v4, 0x2

    goto/16 :goto_324

    .line 284
    :cond_460
    move-object/from16 v21, v2

    if-eqz v0, :cond_46d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_46d

    .line 285
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    :cond_46d
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully extracted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frames ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duplicates skipped) to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object v1, v9

    move-wide v3, v11

    move-object/from16 v2, v21

    invoke-static/range {v1 .. v6}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->saveCacheMetadata(Ljava/io/File;Ljava/lang/String;JII)V

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_4a8
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_4a8} :catch_4df
    .catchall {:try_start_432 .. :try_end_4a8} :catchall_53c

    .line 300
    :try_start_4a8
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4ab
    .catch Ljava/lang/Exception; {:try_start_4a8 .. :try_end_4ab} :catch_4ac

    .line 303
    goto :goto_4c9

    .line 301
    :catch_4ac
    move-exception v0

    .line 302
    const-string v2, "VideoFrameExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error releasing MediaMetadataRetriever: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_4c9
    if-eqz v17, :cond_4db

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4db

    .line 307
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 308
    const-string v0, "VideoFrameExtractor"

    const-string v2, "Cleaned up temporary video file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_4db
    return-object v1

    .line 223
    :catchall_4dc
    move-exception v0

    :try_start_4dd
    monitor-exit v1
    :try_end_4de
    .catchall {:try_start_4dd .. :try_end_4de} :catchall_4dc

    :try_start_4de
    throw v0
    :try_end_4df
    .catch Ljava/lang/Exception; {:try_start_4de .. :try_end_4df} :catch_4df
    .catchall {:try_start_4de .. :try_end_4df} :catchall_53c

    .line 295
    :catch_4df
    move-exception v0

    goto :goto_4eb

    .line 299
    :catchall_4e1
    move-exception v0

    move-object/from16 v17, v8

    :goto_4e4
    move-object v1, v0

    goto :goto_53e

    .line 295
    :catch_4e6
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 296
    :goto_4eb
    :try_start_4eb
    const-string v1, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error extracting video frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_507
    .catchall {:try_start_4eb .. :try_end_507} :catchall_53c

    .line 297
    nop

    .line 300
    :try_start_508
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_50b
    .catch Ljava/lang/Exception; {:try_start_508 .. :try_end_50b} :catch_50c

    .line 303
    goto :goto_529

    .line 301
    :catch_50c
    move-exception v0

    .line 302
    const-string v1, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error releasing MediaMetadataRetriever: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_529
    if-eqz v17, :cond_53b

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_53b

    .line 307
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 308
    const-string v0, "VideoFrameExtractor"

    const-string v1, "Cleaned up temporary video file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_53b
    return-object v18

    .line 299
    :catchall_53c
    move-exception v0

    goto :goto_4e4

    .line 300
    :goto_53e
    :try_start_53e
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_541
    .catch Ljava/lang/Exception; {:try_start_53e .. :try_end_541} :catch_542

    .line 303
    goto :goto_55f

    .line 301
    :catch_542
    move-exception v0

    .line 302
    const-string v2, "VideoFrameExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error releasing MediaMetadataRetriever: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_55f
    if-eqz v17, :cond_571

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_571

    .line 307
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 308
    const-string v0, "VideoFrameExtractor"

    const-string v2, "Cleaned up temporary video file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_571
    goto :goto_573

    :goto_572
    throw v1

    :goto_573
    goto :goto_572
.end method

.method public static extractFramesAsync(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 621
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFramesAsync(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractFramesAsync(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 635
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 636
    const-string p0, "VideoFrameExtractor"

    const-string p1, "VideoFrameExtractor not initialized! Call init() first."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-object v1

    .line 642
    :cond_d
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_31

    .line 643
    const-string v0, ":"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    .line 644
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\.[^.]+$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    goto :goto_42

    .line 646
    :cond_31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\.[^.]+$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    :goto_42
    nop

    .line 651
    const/4 v4, 0x0

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_65

    :cond_4c
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 652
    const-string p2, ":"

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v4

    .line 653
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 658
    :cond_65
    if-eqz p2, :cond_85

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_85

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_86

    .line 661
    :cond_85
    nop

    .line 664
    :goto_86
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getFramesCacheDir()Ljava/io/File;

    move-result-object v5

    .line 665
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 668
    nop

    .line 669
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 675
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_169

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_169

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_169

    .line 677
    new-instance v5, Ljava/io/File;

    const-string v7, ".complete"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d2

    .line 679
    const-string v2, "VideoFrameExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incomplete extraction detected (no completion marker), clearing cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {v6}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    goto/16 :goto_169

    .line 683
    :cond_d2
    nop

    .line 684
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 685
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFromZip(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 686
    if-eqz v5, :cond_e6

    .line 687
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_ea

    .line 686
    :cond_e6
    move-object v7, p0

    goto :goto_ea

    .line 684
    :cond_e8
    move-object v7, p0

    move-object v5, v1

    .line 692
    :goto_ea
    if-nez v5, :cond_f4

    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_fb

    :cond_f4
    invoke-static {v6, v7, p1}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->validateCache(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_fb

    const/4 v4, 0x1

    .line 695
    :cond_fb
    if-eqz v5, :cond_106

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_106

    .line 696
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 699
    :cond_106
    if-eqz v4, :cond_148

    .line 700
    const-string p0, "VideoFrameExtractor"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Using cached frames for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v4

    .line 702
    :try_start_123
    sget-object p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 703
    if-nez p0, :cond_13f

    .line 704
    new-instance p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;-><init>()V

    .line 705
    iput v2, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 706
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    .line 707
    sget-object p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_13f
    monitor-exit v4
    :try_end_140
    .catchall {:try_start_123 .. :try_end_140} :catchall_145

    .line 710
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 709
    :catchall_145
    move-exception p0

    :try_start_146
    monitor-exit v4
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw p0

    .line 712
    :cond_148
    const-string v2, "VideoFrameExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache validation failed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", will re-extract"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {v6}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->deleteRecursive(Ljava/io/File;)Z

    .line 719
    :cond_169
    :goto_169
    sget-object v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v2

    .line 720
    :try_start_16c
    sget-object v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 721
    if-eqz v4, :cond_1c5

    iget v4, v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    if-ne v4, v3, :cond_1c5

    .line 724
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a8

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1a8

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_18e

    goto :goto_1a8

    .line 728
    :cond_18e
    const-string p0, "VideoFrameExtractor"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Extraction already in progress for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    monitor-exit v2

    return-object v1

    .line 725
    :cond_1a8
    :goto_1a8
    const-string v4, "VideoFrameExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clearing stale IN_PROGRESS status for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_1c5
    new-instance v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    invoke-direct {v4}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;-><init>()V

    .line 735
    iput v3, v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 736
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    .line 737
    sget-object v3, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    monitor-exit v2
    :try_end_1d8
    .catchall {:try_start_16c .. :try_end_1d8} :catchall_1fd

    .line 741
    nop

    .line 742
    nop

    .line 743
    nop

    .line 744
    nop

    .line 746
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;

    invoke-direct {v3, v0, p0, p1, p2}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "VideoFrameExtractor-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 768
    return-object v1

    .line 738
    :catchall_1fd
    move-exception p0

    :try_start_1fe
    monitor-exit v2
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    throw p0
.end method

.method private static extractFramesWithMediaCodec(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    move-object/from16 v1, p2

    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 319
    nop

    .line 322
    const/4 v3, 0x0

    move-object/from16 v5, p0

    :try_start_b
    invoke-virtual {v2, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 325
    nop

    .line 326
    nop

    .line 327
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_29c
    .catchall {:try_start_b .. :try_end_16} :catchall_297

    const/4 v7, -0x1

    if-ge v4, v6, :cond_37

    .line 328
    :try_start_19
    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 329
    const-string v8, "mime"

    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    const-string v9, "video/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_29c
    .catchall {:try_start_19 .. :try_end_29} :catchall_31

    if-eqz v8, :cond_2e

    .line 331
    nop

    .line 332
    nop

    .line 333
    goto :goto_39

    .line 327
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 469
    :catchall_31
    move-exception v0

    move-object v1, v0

    :goto_33
    move-object/from16 v18, v2

    goto/16 :goto_2b6

    .line 327
    :cond_37
    move-object v6, v3

    const/4 v4, -0x1

    .line 337
    :goto_39
    if-eq v4, v7, :cond_28b

    .line 341
    :try_start_3b
    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 344
    const-string v4, "width"

    invoke-virtual {v6, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 345
    const-string v7, "height"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 346
    const-string v8, "durationUs"

    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 347
    const-string v10, "mime"

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 349
    const-string v11, "VideoFrameExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "x"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", duration: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v12, 0x3e8

    div-long v14, v8, v12

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ms, mime: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const v4, 0xf4240

    div-int v4, v4, p3

    int-to-long v14, v4

    .line 353
    move-wide/from16 v16, v12

    div-long v12, v8, v14

    long-to-int v4, v12

    .line 356
    new-instance v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    invoke-direct {v7}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;-><init>()V

    .line 357
    const/4 v11, 0x1

    iput v11, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 358
    iput v4, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->totalFrames:I

    .line 359
    iput v0, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->currentFrame:I

    .line 360
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    .line 361
    sget-object v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v4
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_b0} :catch_29c
    .catchall {:try_start_3b .. :try_end_b0} :catchall_297

    .line 362
    :try_start_b0
    sget-object v12, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v12, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_b0 .. :try_end_b6} :catchall_284

    .line 366
    :try_start_b6
    invoke-static {v10}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ba} :catch_29c
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_297

    .line 367
    :try_start_ba
    invoke-virtual {v4, v6, v3, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 368
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 371
    nop

    .line 372
    nop

    .line 374
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c7} :catch_27e
    .catchall {:try_start_ba .. :try_end_c7} :catchall_277

    .line 375
    nop

    .line 376
    const-wide/16 v6, 0x0

    move-wide/from16 v25, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 378
    :goto_cf
    if-nez v10, :cond_203

    .line 380
    move/from16 v27, v12

    const/4 v13, 0x1

    const-wide/16 v11, 0x2710

    if-nez v27, :cond_136

    .line 381
    const/16 v28, 0x1

    :try_start_da
    invoke-virtual {v4, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    .line 382
    if-ltz v13, :cond_129

    .line 383
    invoke-virtual {v4, v13}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 384
    invoke-virtual {v2, v9, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v21
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e8} :catch_132
    .catchall {:try_start_da .. :try_end_e8} :catchall_12b

    .line 386
    if-gez v21, :cond_109

    .line 387
    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v4

    move/from16 v19, v13

    :try_start_f6
    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f9} :catch_104
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fe

    .line 388
    move-object/from16 v13, v18

    const/16 v27, 0x1

    goto :goto_139

    .line 469
    :catchall_fe
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v18

    goto/16 :goto_33

    .line 459
    :catch_104
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_29d

    .line 390
    :cond_109
    move-object/from16 v18, v4

    move/from16 v19, v13

    :try_start_10d
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    .line 391
    const/16 v20, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_118} :catch_124
    .catchall {:try_start_10d .. :try_end_118} :catchall_120

    move-object/from16 v13, v18

    .line 392
    :try_start_11a
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_1fe
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11e

    goto :goto_139

    .line 469
    :catchall_11e
    move-exception v0

    goto :goto_12d

    :catchall_120
    move-exception v0

    move-object/from16 v13, v18

    goto :goto_12d

    .line 459
    :catch_124
    move-exception v0

    move-object/from16 v13, v18

    goto/16 :goto_1ff

    .line 382
    :cond_129
    move-object v13, v4

    goto :goto_139

    .line 469
    :catchall_12b
    move-exception v0

    move-object v13, v4

    :goto_12d
    move-object v1, v0

    move-object/from16 v18, v2

    goto/16 :goto_27c

    .line 459
    :catch_132
    move-exception v0

    move-object v13, v4

    goto/16 :goto_1ff

    .line 380
    :cond_136
    move-object v13, v4

    const/16 v28, 0x1

    .line 398
    :goto_139
    :try_start_139
    invoke-virtual {v13, v3, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 399
    if-ltz v4, :cond_1e3

    .line 401
    iget-wide v11, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v9, v11, v6

    if-ltz v9, :cond_1d3

    .line 403
    invoke-virtual {v13, v4}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v9

    .line 404
    if-eqz v9, :cond_1cd

    .line 406
    invoke-static {v9}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->imageToBitmap(Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 407
    if-eqz v11, :cond_1c5

    .line 409
    const-string v12, "%s/frame_%03d.png"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_15b} :catch_1fe
    .catchall {:try_start_139 .. :try_end_15b} :catchall_1f9

    const/4 v0, 0x2

    const/16 v20, 0x0

    :try_start_15e
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v18, v0, v20

    aput-object v19, v0, v28
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_164} :catch_1c3
    .catchall {:try_start_15e .. :try_end_164} :catchall_1f9

    :try_start_164
    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_16d} :catch_1fe
    .catchall {:try_start_164 .. :try_end_16d} :catchall_1f9

    .line 411
    :try_start_16d
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_16f
    .catchall {:try_start_16d .. :try_end_16f} :catchall_1b6

    move-object/from16 v18, v2

    const/16 v2, 0x64

    :try_start_173
    invoke-virtual {v11, v0, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 412
    add-int/lit8 v8, v8, 0x1

    .line 415
    sget-object v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v2
    :try_end_17b
    .catchall {:try_start_173 .. :try_end_17b} :catchall_1b4

    .line 416
    :try_start_17b
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 417
    if-eqz v0, :cond_187

    .line 418
    iput v8, v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->currentFrame:I

    .line 420
    :cond_187
    monitor-exit v2
    :try_end_188
    .catchall {:try_start_17b .. :try_end_188} :catchall_1b1

    .line 422
    :try_start_188
    rem-int/lit8 v0, v8, 0xa

    if-nez v0, :cond_1aa

    .line 423
    const-string v0, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " frames..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1aa
    .catchall {:try_start_188 .. :try_end_1aa} :catchall_1b4

    .line 425
    :cond_1aa
    :try_start_1aa
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 426
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b0} :catch_275
    .catchall {:try_start_1aa .. :try_end_1b0} :catchall_273

    goto :goto_1c9

    .line 420
    :catchall_1b1
    move-exception v0

    :try_start_1b2
    monitor-exit v2
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1

    :try_start_1b3
    throw v0
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b4

    .line 410
    :catchall_1b4
    move-exception v0

    goto :goto_1b9

    :catchall_1b6
    move-exception v0

    move-object/from16 v18, v2

    :goto_1b9
    move-object v2, v0

    :try_start_1ba
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1be

    goto :goto_1c2

    :catchall_1be
    move-exception v0

    :try_start_1bf
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1c2
    throw v2

    .line 459
    :catch_1c3
    move-exception v0

    goto :goto_1ff

    .line 407
    :cond_1c5
    move-object/from16 v18, v2

    const/16 v20, 0x0

    .line 428
    :goto_1c9
    invoke-virtual {v9}, Landroid/media/Image;->close()V

    goto :goto_1d1

    .line 404
    :cond_1cd
    move-object/from16 v18, v2

    const/16 v20, 0x0

    .line 430
    :goto_1d1
    add-long/2addr v6, v14

    goto :goto_1d7

    .line 401
    :cond_1d3
    move-object/from16 v18, v2

    const/16 v20, 0x0

    .line 433
    :goto_1d7
    const/4 v0, 0x0

    invoke-virtual {v13, v4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 435
    iget v2, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1ef

    .line 436
    const/4 v10, 0x1

    goto :goto_1ef

    .line 438
    :cond_1e3
    move-object/from16 v18, v2

    const/4 v2, -0x2

    if-ne v4, v2, :cond_1ef

    .line 439
    const-string v2, "VideoFrameExtractor"

    const-string v4, "Output format changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1ef
    :goto_1ef
    move-object/from16 v5, p0

    move-object v4, v13

    move-object/from16 v2, v18

    move/from16 v12, v27

    const/4 v11, 0x1

    goto/16 :goto_cf

    .line 469
    :catchall_1f9
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_27b

    .line 459
    :catch_1fe
    move-exception v0

    :goto_1ff
    move-object/from16 v18, v2

    goto/16 :goto_282

    .line 443
    :cond_203
    move-object/from16 v18, v2

    move-object v13, v4

    const-string v0, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully decoded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frames using MediaCodec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v2
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_227} :catch_275
    .catchall {:try_start_1bf .. :try_end_227} :catchall_273

    .line 447
    :try_start_227
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 448
    if-eqz v0, :cond_236

    .line 449
    const/4 v3, 0x2

    iput v3, v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 450
    iput v8, v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->currentFrame:I

    .line 452
    :cond_236
    monitor-exit v2
    :try_end_237
    .catchall {:try_start_227 .. :try_end_237} :catchall_270

    .line 455
    :try_start_237
    div-long v6, v25, v16

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->saveCacheMetadata(Ljava/io/File;Ljava/lang/String;JII)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_246} :catch_275
    .catchall {:try_start_237 .. :try_end_246} :catchall_273

    .line 469
    if-eqz v13, :cond_26c

    .line 471
    :try_start_248
    invoke-virtual {v13}, Landroid/media/MediaCodec;->stop()V

    .line 472
    invoke-virtual {v13}, Landroid/media/MediaCodec;->release()V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_24e} :catch_24f

    .line 475
    goto :goto_26c

    .line 473
    :catch_24f
    move-exception v0

    .line 474
    const-string v2, "VideoFrameExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error releasing decoder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_26c
    :goto_26c
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaExtractor;->release()V

    .line 457
    return-object v1

    .line 452
    :catchall_270
    move-exception v0

    :try_start_271
    monitor-exit v2
    :try_end_272
    .catchall {:try_start_271 .. :try_end_272} :catchall_270

    :try_start_272
    throw v0
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_273} :catch_275
    .catchall {:try_start_272 .. :try_end_273} :catchall_273

    .line 469
    :catchall_273
    move-exception v0

    goto :goto_27b

    .line 459
    :catch_275
    move-exception v0

    goto :goto_282

    .line 469
    :catchall_277
    move-exception v0

    move-object/from16 v18, v2

    move-object v13, v4

    :goto_27b
    move-object v1, v0

    :goto_27c
    move-object v3, v13

    goto :goto_2b6

    .line 459
    :catch_27e
    move-exception v0

    move-object/from16 v18, v2

    move-object v13, v4

    :goto_282
    move-object v3, v13

    goto :goto_29f

    .line 363
    :catchall_284
    move-exception v0

    move-object/from16 v18, v2

    :goto_287
    :try_start_287
    monitor-exit v4
    :try_end_288
    .catchall {:try_start_287 .. :try_end_288} :catchall_289

    :try_start_288
    throw v0

    :catchall_289
    move-exception v0

    goto :goto_287

    .line 338
    :cond_28b
    move-object/from16 v18, v2

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "No video track found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_295} :catch_295
    .catchall {:try_start_288 .. :try_end_295} :catchall_2b4

    .line 459
    :catch_295
    move-exception v0

    goto :goto_29f

    .line 469
    :catchall_297
    move-exception v0

    move-object/from16 v18, v2

    :goto_29a
    move-object v1, v0

    goto :goto_2b6

    .line 459
    :catch_29c
    move-exception v0

    :goto_29d
    move-object/from16 v18, v2

    .line 461
    :goto_29f
    :try_start_29f
    sget-object v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter v2
    :try_end_2a2
    .catchall {:try_start_29f .. :try_end_2a2} :catchall_2b4

    .line 462
    :try_start_2a2
    sget-object v4, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 463
    if-eqz v1, :cond_2af

    .line 464
    const/4 v4, 0x3

    iput v4, v1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 466
    :cond_2af
    monitor-exit v2
    :try_end_2b0
    .catchall {:try_start_2a2 .. :try_end_2b0} :catchall_2b1

    .line 467
    :try_start_2b0
    throw v0
    :try_end_2b1
    .catchall {:try_start_2b0 .. :try_end_2b1} :catchall_2b4

    .line 466
    :catchall_2b1
    move-exception v0

    :try_start_2b2
    monitor-exit v2
    :try_end_2b3
    .catchall {:try_start_2b2 .. :try_end_2b3} :catchall_2b1

    :try_start_2b3
    throw v0
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_2b4

    .line 469
    :catchall_2b4
    move-exception v0

    goto :goto_29a

    :goto_2b6
    if-eqz v3, :cond_2dc

    .line 471
    :try_start_2b8
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 472
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_2be} :catch_2bf

    .line 475
    goto :goto_2dc

    .line 473
    :catch_2bf
    move-exception v0

    .line 474
    const-string v2, "VideoFrameExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error releasing decoder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_2dc
    :goto_2dc
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaExtractor;->release()V

    .line 478
    goto :goto_2e1

    :goto_2e0
    throw v1

    :goto_2e1
    goto :goto_2e0
.end method

.method private static extractFromZip(Ljava/lang/String;)Ljava/io/File;
    .registers 11

    .line 549
    const-string v0, "VideoFrameExtractor"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 550
    array-length v4, v2

    if-eq v4, v3, :cond_24

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ZIP path format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-object v1

    .line 555
    :cond_24
    const/4 p0, 0x0

    aget-object v3, v2, p0

    .line 556
    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 558
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP file not found: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-object v1

    .line 565
    :cond_4c
    const-string v3, ""

    .line 566
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 567
    if-lez v5, :cond_5a

    .line 568
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 572
    :cond_5a
    const-string v5, "video_temp_"

    sget-object v6, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v3, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 575
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_f7

    .line 576
    :try_start_6b
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 577
    if-nez v4, :cond_8f

    .line 578
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry not found in ZIP: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_ed

    .line 580
    nop

    .line 592
    :try_start_8b
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_f7

    .line 580
    return-object v1

    .line 583
    :cond_8f
    :try_start_8f
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_ed

    .line 584
    :try_start_93
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_e1

    .line 586
    const/16 v7, 0x2000

    :try_start_9a
    new-array v7, v7, [B

    .line 588
    :goto_9c
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a7

    .line 589
    invoke-virtual {v6, v7, p0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_d7

    goto :goto_9c

    .line 591
    :cond_a7
    :try_start_a7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_e1

    if-eqz v4, :cond_af

    :try_start_ac
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_ed

    .line 592
    :cond_af
    :try_start_af
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracted "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " from ZIP to: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d6} :catch_f7

    .line 595
    return-object v3

    .line 583
    :catchall_d7
    move-exception p0

    :try_start_d8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e0

    :catchall_dc
    move-exception v2

    :try_start_dd
    invoke-static {p0, v2}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_e0
    throw p0
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_e1

    :catchall_e1
    move-exception p0

    if-eqz v4, :cond_ec

    :try_start_e4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_ec

    :catchall_e8
    move-exception v2

    :try_start_e9
    invoke-static {p0, v2}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_ec
    :goto_ec
    throw p0
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_ed

    .line 575
    :catchall_ed
    move-exception p0

    :try_start_ee
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    goto :goto_f6

    :catchall_f2
    move-exception v2

    :try_start_f3
    invoke-static {p0, v2}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_f6
    throw p0
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f7} :catch_f7

    .line 597
    :catch_f7
    move-exception p0

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error extracting from ZIP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    return-object v1
.end method

.method public static getCacheSize()J
    .registers 2

    .line 860
    sget-object v0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 862
    :cond_7
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getFramesCacheDir()Ljava/io/File;

    move-result-object v0

    .line 863
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getDirSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDirSize(Ljava/io/File;)J
    .registers 7

    .line 908
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 909
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 911
    :cond_14
    nop

    .line 912
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 913
    if-eqz p0, :cond_29

    .line 914
    array-length v0, p0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v0, :cond_29

    aget-object v4, p0, v3

    .line 915
    invoke-static {v4}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getDirSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 918
    :cond_29
    return-wide v1
.end method

.method public static getExtractionStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 779
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->getExtractionStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtractionStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 793
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_24

    .line 794
    const-string v0, ":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 795
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\.[^.]+$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    goto :goto_35

    .line 797
    :cond_24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\.[^.]+$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    :goto_35
    nop

    .line 802
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_3e
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 803
    const-string p1, ":"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 804
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 809
    :cond_58
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_78

    .line 810
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 812
    :cond_78
    nop

    .line 815
    :goto_79
    sget-object p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    monitor-enter p0

    .line 816
    :try_start_7c
    sget-object p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 817
    if-nez p1, :cond_8a

    .line 818
    const-string p1, "not_started"

    monitor-exit p0

    return-object p1

    .line 821
    :cond_8a
    iget v0, p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    packed-switch v0, :pswitch_data_d6

    .line 829
    const-string p1, "not_started"

    goto :goto_d0

    .line 827
    :pswitch_92
    const-string p1, "failed"

    monitor-exit p0

    return-object p1

    .line 823
    :pswitch_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 825
    :pswitch_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in_progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->currentFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->totalFrames:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 829
    :goto_d0
    monitor-exit p0

    return-object p1

    .line 831
    :catchall_d2
    move-exception p1

    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_7c .. :try_end_d4} :catchall_d2

    throw p1

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_96
        :pswitch_92
    .end packed-switch
.end method

.method private static getFramesCacheDir()Ljava/io/File;
    .registers 3

    .line 54
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "video_frames_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static imageToBitmap(Landroid/media/Image;)Landroid/graphics/Bitmap;
    .registers 19

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 493
    const/4 v7, 0x0

    aget-object v1, v0, v7

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 494
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 495
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 497
    aget-object v8, v0, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 498
    aget-object v9, v0, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    .line 499
    aget-object v10, v0, v2

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 500
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    .line 503
    mul-int v2, v4, v5

    .line 504
    div-int/lit8 v11, v2, 0x2

    .line 505
    add-int/2addr v11, v2

    new-array v11, v11, [B

    .line 508
    nop

    .line 509
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_43
    if-ge v12, v5, :cond_5f

    .line 510
    const/4 v14, 0x0

    :goto_46
    if-ge v14, v4, :cond_5b

    .line 511
    add-int/lit8 v15, v13, 0x1

    mul-int v16, v12, v8

    mul-int v17, v14, v9

    add-int v7, v16, v17

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    aput-byte v7, v11, v13

    .line 510
    add-int/lit8 v14, v14, 0x1

    move v13, v15

    const/4 v7, 0x0

    goto :goto_46

    .line 509
    :cond_5b
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_43

    .line 517
    :cond_5f
    nop

    .line 518
    const/4 v1, 0x0

    :goto_61
    div-int/lit8 v7, v5, 0x2

    if-ge v1, v7, :cond_85

    .line 519
    const/4 v7, 0x0

    :goto_66
    div-int/lit8 v8, v4, 0x2

    if-ge v7, v8, :cond_82

    .line 520
    mul-int v8, v1, v10

    mul-int v9, v7, v0

    add-int/2addr v8, v9

    .line 522
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    aput-byte v12, v11, v2

    .line 523
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    aput-byte v8, v11, v9

    .line 519
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 518
    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 528
    :cond_85
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v2, v11

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 532
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 533
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 534
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 536
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->appContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private static saveCacheMetadata(Ljava/io/File;Ljava/lang/String;JII)V
    .registers 9

    .line 928
    const-string p1, "VideoFrameExtractor"

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, ".metadata"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 929
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_65

    .line 930
    :try_start_e
    const-string v0, "duration=%d\nframes=%d\nfps=%d\n"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, p5, v2

    const/4 p2, 0x1

    aput-object p3, p5, p2

    const/4 p2, 0x2

    aput-object p4, p5, p2

    invoke-static {v0, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 931
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_5b

    .line 932
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 935
    new-instance p2, Ljava/io/File;

    const-string p3, ".complete"

    invoke-direct {p2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 938
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Saved metadata and completion marker for cache: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_5a} :catch_65

    .line 941
    goto :goto_80

    .line 929
    :catchall_5b
    move-exception p0

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p2

    :try_start_61
    invoke-static {p0, p2}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_64
    throw p0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65

    .line 939
    :catch_65
    move-exception p0

    .line 940
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to save cache metadata: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_80
    return-void
.end method

.method private static validateCache(Ljava/io/File;Ljava/lang/String;I)Z
    .registers 20

    .line 956
    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "VideoFrameExtractor"

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/io/File;

    const-string v5, ".metadata"

    move-object/from16 v6, p0

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 957
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 958
    const-string v0, "No metadata file found in cache, assuming invalid"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return v3

    .line 963
    :cond_1c
    nop

    .line 964
    nop

    .line 965
    nop

    .line 967
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_1b0

    .line 968
    const/16 v7, 0x400

    :try_start_26
    new-array v7, v7, [B

    .line 969
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 971
    if-gtz v8, :cond_4d

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata file is empty or could not be read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_1a5

    .line 973
    nop

    .line 988
    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_1b0

    .line 973
    return v3

    .line 976
    :cond_4d
    :try_start_4d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7, v3, v8}, Ljava/lang/String;-><init>([BII)V

    .line 979
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5e
    const/16 v13, 0x9

    if-ge v10, v7, :cond_9b

    aget-object v14, v4, v10

    .line 980
    const-string v15, "duration="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_75

    .line 981
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_98

    .line 982
    :cond_75
    const-string v13, "frames="

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_87

    .line 983
    const/4 v12, 0x7

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_98

    .line 984
    :cond_87
    const-string v13, "fps="

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_98

    .line 985
    const/4 v11, 0x4

    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_98
    .catchall {:try_start_4d .. :try_end_98} :catchall_1a5

    .line 979
    :cond_98
    :goto_98
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 988
    :cond_9b
    :try_start_9b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_1b0

    .line 991
    const-string v4, ", cache invalid"

    if-eq v11, v1, :cond_c7

    .line 992
    :try_start_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FPS changed from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v3

    .line 997
    :cond_c7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e9

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video file no longer exists: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return v3

    .line 1003
    :cond_e9
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ee} :catch_1b0

    .line 1005
    :try_start_ee
    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v5, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    if-nez v0, :cond_101

    .line 1008
    const-string v0, "Failed to get video duration"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_ee .. :try_end_fc} :catchall_1a0

    .line 1009
    nop

    .line 1033
    :try_start_fd
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_1b0

    .line 1009
    return v3

    .line 1011
    :cond_101
    :try_start_101
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1014
    sub-long v13, v10, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x64

    cmp-long v0, v13, v15

    if-lez v0, :cond_13c

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video duration changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, cache invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_101 .. :try_end_137} :catchall_1a0

    .line 1016
    nop

    .line 1033
    :try_start_138
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13b} :catch_1b0

    .line 1016
    return v3

    .line 1020
    :cond_13c
    long-to-double v7, v10

    const-wide v9, 0x408f400000000000L    # 1000.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v0

    double-to-int v0, v7

    .line 1023
    sub-int v1, v12, v0

    :try_start_14f
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v7, 0xa

    if-le v1, v7, :cond_180

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frame count mismatch: cached="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", expected="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17b
    .catchall {:try_start_14f .. :try_end_17b} :catchall_1a0

    .line 1025
    nop

    .line 1033
    :try_start_17c
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_1b0

    .line 1025
    return v3

    .line 1029
    :cond_180
    :try_start_180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache validation passed for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catchall {:try_start_180 .. :try_end_19a} :catchall_1a0

    .line 1030
    nop

    .line 1033
    :try_start_19b
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1030
    const/4 v0, 0x1

    return v0

    .line 1033
    :catchall_1a0
    move-exception v0

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1034
    throw v0
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a5} :catch_1b0

    .line 967
    :catchall_1a5
    move-exception v0

    move-object v1, v0

    :try_start_1a7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1aa
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_1ab

    goto :goto_1af

    :catchall_1ab
    move-exception v0

    :try_start_1ac
    invoke-static {v1, v0}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1af
    throw v1
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1b0} :catch_1b0

    .line 1036
    :catch_1b0
    move-exception v0

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error validating cache: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return v3
.end method
