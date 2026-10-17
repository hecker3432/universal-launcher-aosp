.class Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->setDecomposition(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/wearable/watchface/decomposition/ComplicationComponent;Landroid/support/wearable/watchface/decomposition/ComplicationComponent;)I
    .locals 0

    invoke-virtual {p2}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->a()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->a()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    check-cast p2, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$b;->a(Landroid/support/wearable/watchface/decomposition/ComplicationComponent;Landroid/support/wearable/watchface/decomposition/ComplicationComponent;)I

    move-result p1

    return p1
.end method
