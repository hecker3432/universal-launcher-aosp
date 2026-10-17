.class Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;
.super Ljava/lang/Object;
.source "FolderHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/FolderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchFaceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field fullPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;->displayName:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;->fullPath:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;)I
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 243
    check-cast p1, Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;->compareTo(Lcom/ailife/ClockSkinTransfer/FolderHelper$WatchFaceInfo;)I

    move-result p1

    return p1
.end method
