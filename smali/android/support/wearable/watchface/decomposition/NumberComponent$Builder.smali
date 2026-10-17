.class public Landroid/support/wearable/watchface/decomposition/NumberComponent$Builder;
.super Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/decomposition/NumberComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder<",
        "Landroid/support/wearable/watchface/decomposition/NumberComponent$Builder;",
        "Landroid/support/wearable/watchface/decomposition/NumberComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/watchface/decomposition/NumberComponent$Builder$1;

    invoke-direct {v0}, Landroid/support/wearable/watchface/decomposition/NumberComponent$Builder$1;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent$BaseDrawnBuilder;-><init>(Landroid/support/wearable/watchface/decomposition/BaseComponent$ComponentFactory;)V

    const/16 v0, 0xa

    iput v0, p0, Landroid/support/wearable/watchface/decomposition/NumberComponent$Builder;->c:I

    return-void
.end method
