.class Lorg/cocos2dx/lib/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bytesReceived:J

.field data:[B

.field handle:Lcom/loopj/android/http/k;

.field handler:Lcom/loopj/android/http/c;

.field totalBytesExpected:J

.field totalBytesReceived:J


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/k;

    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->handler:Lcom/loopj/android/http/c;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/DownloadTask;->resetStatus()V

    return-void
.end method


# virtual methods
.method resetStatus()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->bytesReceived:J

    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->totalBytesReceived:J

    iput-wide v0, p0, Lorg/cocos2dx/lib/DownloadTask;->totalBytesExpected:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->data:[B

    return-void
.end method
