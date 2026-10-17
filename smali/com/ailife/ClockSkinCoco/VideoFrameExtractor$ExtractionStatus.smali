.class Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;
.super Ljava/lang/Object;
.source "VideoFrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/VideoFrameExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractionStatus"
.end annotation


# static fields
.field static final COMPLETED:I = 0x2

.field static final FAILED:I = 0x3

.field static final IN_PROGRESS:I = 0x1

.field static final NOT_STARTED:I


# instance fields
.field cachePath:Ljava/lang/String;

.field currentFrame:I

.field status:I

.field totalFrames:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/VideoFrameExtractor$ExtractionStatus;->status:I

    .line 49
    return-void
.end method
