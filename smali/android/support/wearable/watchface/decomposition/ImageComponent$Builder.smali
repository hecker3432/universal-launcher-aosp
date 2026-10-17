.class public Landroid/support/wearable/watchface/decomposition/ImageComponent$Builder;
.super Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/decomposition/ImageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder<",
        "Landroid/support/wearable/watchface/decomposition/ImageComponent$Builder;",
        "Landroid/support/wearable/watchface/decomposition/ImageComponent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/watchface/decomposition/ImageComponent$Builder$1;

    invoke-direct {v0}, Landroid/support/wearable/watchface/decomposition/ImageComponent$Builder$1;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder;-><init>(Landroid/support/wearable/watchface/decomposition/BaseComponent$ComponentFactory;)V

    return-void
.end method
