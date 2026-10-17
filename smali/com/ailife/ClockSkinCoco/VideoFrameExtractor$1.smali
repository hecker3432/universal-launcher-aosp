.class Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;
.super Ljava/lang/Object;
.source "VideoFrameExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFramesAsync(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCacheName:Ljava/lang/String;

.field final synthetic val$finalTargetFps:I

.field final synthetic val$finalVideoPath:Ljava/lang/String;

.field final synthetic val$finalWatchFaceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalCacheName:Ljava/lang/String;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalVideoPath:Ljava/lang/String;

    iput p3, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalTargetFps:I

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalWatchFaceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 749
    const-string v0, "VideoFrameExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async extraction for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalVideoPath:Ljava/lang/String;

    iget v1, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalTargetFps:I

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalWatchFaceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractFrames(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    # getter for: Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->access$000()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 753
    :try_start_29
    # getter for: Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->extractionStatus:Ljava/util/Map;
    invoke-static {}, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalCacheName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;

    .line 754
    if-eqz v2, :cond_76

    .line 755
    if-eqz v0, :cond_59

    .line 756
    const/4 v3, 0x2

    iput v3, v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 757
    iput-object v0, v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->cachePath:Ljava/lang/String;

    .line 758
    const-string v0, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async extraction completed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalCacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 760
    :cond_59
    const/4 v0, 0x3

    iput v0, v2, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 761
    const-string v0, "VideoFrameExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Async extraction failed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$1;->val$finalCacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_76
    :goto_76
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_78
    move-exception v0

    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_29 .. :try_end_7a} :catchall_78

    throw v0
.end method
