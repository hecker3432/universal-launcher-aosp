.class public Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;
.super Ljava/lang/Object;
.source "WatchFaceFolderItem.java"


# instance fields
.field private collapsed:Z

.field private final folderName:Ljava/lang/String;

.field private final watchFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->collapsed:Z

    .line 12
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->folderName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->watchFiles:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->watchFiles:Ljava/util/List;

    return-object v0
.end method

.method public isCollapsed()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->collapsed:Z

    return v0
.end method

.method public setCollapsed(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->collapsed:Z

    .line 30
    return-void
.end method

.method public toggleCollapsed()V
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->collapsed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->collapsed:Z

    .line 34
    return-void
.end method
