.class abstract Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent;
.super Landroid/support/wearable/watchface/decomposition/BaseComponent;
.source "SourceFile"

# interfaces
.implements Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/decomposition/BaseComponent;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "zOrder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
