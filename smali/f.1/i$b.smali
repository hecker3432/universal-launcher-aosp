.class Lf/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i;->o(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lf/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;)I
    .locals 0

    invoke-interface {p1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;->a()I

    move-result p1

    invoke-interface {p2}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;

    check-cast p2, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;

    invoke-virtual {p0, p1, p2}, Lf/i$b;->a(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$DrawnComponent;)I

    move-result p1

    return p1
.end method
