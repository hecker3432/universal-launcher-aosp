.class Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;
.super Ljava/lang/Object;
.source "MapTileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/MapTileDownloader;->getTile(DDI)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCachedTile:Ljava/io/File;

.field final synthetic val$tileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;->val$tileUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;->val$finalCachedTile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;->val$tileUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/MapTileDownloader$1;->val$finalCachedTile:Ljava/io/File;

    # invokes: Lcom/ailife/ClockSkinCoco/MapTileDownloader;->downloadTile(Ljava/lang/String;Ljava/io/File;)Z
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/MapTileDownloader;->access$000(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    const-string v1, "MapTileDownloader"

    if-eqz v0, :cond_12

    .line 193
    const-string v0, "Tile downloaded successfully in background"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 195
    :cond_12
    const-string v0, "Failed to download tile in background"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_17
    return-void
.end method
