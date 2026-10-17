.class public Lcom/ailife/ClockSkinCoco/MapTileDownloader;
.super Ljava/lang/Object;
.source "MapTileDownloader.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "map_tiles_cache"

.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final OSM_TILE_URL:Ljava/lang/String; = "https://tile.openstreetmap.org/{z}/{x}/{y}.png"

.field private static final READ_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MapTileDownloader"

.field private static final USER_AGENT:Ljava/lang/String; = "UniversalLauncher/4.0"

.field private static appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/io/File;)Z
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->downloadTile(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static clearCache()V
    .registers 5

    .line 209
    invoke-static {}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->getTilesCacheDir()Ljava/io/File;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_46

    .line 214
    :cond_d
    nop

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 217
    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v1, v2, :cond_26

    aget-object v4, v0, v1

    .line 218
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 217
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_26
    move v1, v3

    .line 223
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cached map tiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapTileDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 211
    :cond_46
    :goto_46
    return-void
.end method

.method private static downloadTile(Ljava/lang/String;Ljava/io/File;)Z
    .registers 11

    .line 77
    const-string v0, "Error closing streams: "

    const-string v1, "MapTileDownloader"

    .line 78
    nop

    .line 79
    nop

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downloading tile from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_fa
    .catchall {:try_start_8 .. :try_end_29} :catchall_f6

    .line 85
    :try_start_29
    const-string v4, "User-Agent"

    const-string v5, "UniversalLauncher/4.0"

    invoke-virtual {p0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/16 v4, 0x1388

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 87
    const/16 v4, 0x2710

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    const-string v4, "GET"

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 92
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_85

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_60} :catch_f2
    .catchall {:try_start_29 .. :try_end_60} :catchall_ee

    .line 94
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    if-eqz p0, :cond_83

    :try_start_65
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_83

    .line 121
    :catch_69
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 123
    :cond_83
    :goto_83
    nop

    .line 94
    :goto_84
    return v2

    .line 97
    :cond_85
    :try_start_85
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_f2
    .catchall {:try_start_85 .. :try_end_89} :catchall_ee

    .line 98
    :try_start_89
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_ec
    .catchall {:try_start_89 .. :try_end_8e} :catchall_150

    .line 100
    const/16 v3, 0x1000

    :try_start_90
    new-array v3, v3, [B

    .line 102
    :goto_92
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9d

    .line 103
    invoke-virtual {v5, v3, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_92

    .line 106
    :cond_9d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tile downloaded successfully to: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_ba} :catch_e7
    .catchall {:try_start_90 .. :try_end_ba} :catchall_e3

    .line 108
    const/4 p1, 0x1

    .line 118
    :try_start_bb
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 119
    if-eqz v4, :cond_c3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_c3
    if-eqz p0, :cond_c8

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c8} :catch_c9

    .line 123
    :cond_c8
    goto :goto_e2

    .line 121
    :catch_c9
    move-exception p0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_e2
    return p1

    .line 117
    :catchall_e3
    move-exception p1

    move-object v3, v5

    goto/16 :goto_151

    .line 110
    :catch_e7
    move-exception v3

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_fe

    :catch_ec
    move-exception v5

    goto :goto_fe

    .line 117
    :catchall_ee
    move-exception p1

    move-object v4, v3

    goto/16 :goto_151

    .line 110
    :catch_f2
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    goto :goto_fe

    .line 117
    :catchall_f6
    move-exception p1

    move-object p0, v3

    move-object v4, p0

    goto :goto_151

    .line 110
    :catch_fa
    move-exception v4

    move-object p0, v3

    move-object v5, v4

    move-object v4, p0

    .line 111
    :goto_fe
    :try_start_fe
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading tile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_121

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_121
    .catchall {:try_start_fe .. :try_end_121} :catchall_150

    .line 115
    :cond_121
    nop

    .line 118
    if-eqz v3, :cond_12a

    :try_start_124
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_12a

    .line 121
    :catch_128
    move-exception p0

    goto :goto_135

    .line 119
    :cond_12a
    :goto_12a
    if-eqz v4, :cond_12f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_12f
    if-eqz p0, :cond_14e

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_134} :catch_128

    goto :goto_14e

    .line 122
    :goto_135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    .line 123
    :cond_14e
    :goto_14e
    nop

    .line 115
    :goto_14f
    return v2

    .line 117
    :catchall_150
    move-exception p1

    .line 118
    :goto_151
    if-eqz v3, :cond_159

    :try_start_153
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_159

    .line 121
    :catch_157
    move-exception p0

    goto :goto_164

    .line 119
    :cond_159
    :goto_159
    if-eqz v4, :cond_15e

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_15e
    if-eqz p0, :cond_17d

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_163} :catch_157

    goto :goto_17d

    .line 122
    :goto_164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    .line 123
    :cond_17d
    :goto_17d
    nop

    .line 124
    :goto_17e
    goto :goto_180

    :goto_17f
    throw p1

    :goto_180
    goto :goto_17f
.end method

.method private static getCacheKey(III)Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".png"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCachePath()Ljava/lang/String;
    .registers 1

    .line 231
    invoke-static {}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->getTilesCacheDir()Ljava/io/File;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public static getTile(DDI)Ljava/lang/String;
    .registers 12

    .line 138
    sget-object v0, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->appContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "MapTileDownloader"

    if-nez v0, :cond_e

    .line 139
    const-string p0, "MapTileDownloader not initialized!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v1

    .line 144
    :cond_e
    const-wide v3, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v3

    if-ltz v0, :cond_127

    const-wide v3, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v3

    if-lez v0, :cond_22

    goto/16 :goto_127

    .line 148
    :cond_22
    const-wide v3, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v3

    if-ltz v0, :cond_110

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpl-double v0, p2, v3

    if-lez v0, :cond_36

    goto/16 :goto_110

    .line 152
    :cond_36
    if-ltz p4, :cond_f9

    const/16 v0, 0x13

    if-le p4, v0, :cond_3e

    goto/16 :goto_f9

    .line 157
    :cond_3e
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v0, v6

    const-string v3, "Getting tile for lat=%.6f, lon=%.6f, zoom=%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->latLonToTile(DDI)[I

    move-result-object p0

    .line 161
    aget p1, p0, v4

    .line 162
    aget p0, p0, v5

    .line 164
    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v5

    const-string p3, "Tile coordinates: x=%d, y=%d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->getTilesCacheDir()Ljava/io/File;

    move-result-object p2

    .line 168
    if-nez p2, :cond_85

    .line 169
    return-object v1

    .line 172
    :cond_85
    invoke-static {p4, p1, p0}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->getCacheKey(III)Ljava/lang/String;

    move-result-object p3

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_b3

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Using cached tile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_b3
    nop

    .line 182
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "https://tile.openstreetmap.org/{z}/{x}/{y}.png"

    const-string p4, "{z}"

    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "{x}"

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "{y}"

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 186
    nop

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tile not cached, starting background download: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;

    invoke-direct {p2, p0, v0}, Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 201
    return-object v1

    .line 153
    :cond_f9
    :goto_f9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid zoom level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 149
    :cond_110
    :goto_110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid longitude: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v1

    .line 145
    :cond_127
    :goto_127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid latitude: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v1
.end method

.method public static getTileStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 254
    const-string v0, "MapTileDownloader"

    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 255
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 257
    const-string v6, "getTileStr() called: lat=%.6f, lon=%.6f, zoom=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v1, v2, v3, v4, v5}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->getTile(DDI)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_33} :catch_34

    return-object p0

    .line 259
    :catch_34
    move-exception v1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameters: lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", lon="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", zoom="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string p0, ""

    return-object p0
.end method

.method private static getTilesCacheDir()Ljava/io/File;
    .registers 4

    .line 42
    sget-object v0, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->appContext:Landroid/content/Context;

    const-string v1, "MapTileDownloader"

    if-nez v0, :cond_d

    .line 43
    const-string v0, "MapTileDownloader not initialized! Call init() first."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_d
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "map_tiles_cache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created map tiles cache directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3d
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->appContext:Landroid/content/Context;

    .line 35
    const-string p0, "MapTileDownloader"

    const-string v0, "MapTileDownloader initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method private static latLonToTile(DDI)[I
    .registers 10

    .line 59
    const/4 v0, 0x1

    shl-int p4, v0, p4

    .line 60
    const-wide v1, 0x4066800000000000L    # 180.0

    add-double/2addr p2, v1

    const-wide v1, 0x4076800000000000L    # 360.0

    div-double/2addr p2, v1

    int-to-double v1, p4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double p0, v3, p0

    add-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, p3

    sub-double/2addr v3, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v3, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 63
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 p3, 0x0

    aput p2, p1, p3

    aput p0, p1, v0

    return-object p1
.end method

.method public static testMethod()Ljava/lang/String;
    .registers 2

    .line 240
    const-string v0, "MapTileDownloader"

    const-string v1, "testMethod() called successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "MapTileDownloader test OK"

    return-object v0
.end method
