.class Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "WatchFaceSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public e(II)I
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->access$000(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    move-result-object v0

    # Safety check: if adapter is null, return 1
    if-nez v0, :check_position_e

    const/4 p1, 0x1

    return p1

    :check_position_e
    # Safety check: if position is negative or >= item count, return 1
    if-ltz p1, :safe_return_e

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->e()I

    move-result v1

    if-lt p1, v1, :get_view_type_e

    :safe_return_e
    const/4 p1, 0x1

    return p1

    :get_view_type_e
    invoke-virtual {v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->g(I)I

    move-result p1

    # Log the span calculation
    const-string v0, "SpanSizeLookup"

    if-nez p1, :cond_e

    const-string v1, "viewType=0 (FOLDER) -> span=2"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    # Clamp to span count
    if-le p1, p2, :goto_f

    move p1, p2

    goto :goto_f

    :cond_e

    const-string v1, "viewType=1 (WATCH) -> span=1"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    # Clamp to span count
    if-le p1, p2, :goto_f

    move p1, p2

    :goto_f
    return p1
.end method




.method public f(I)I
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->access$000(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    move-result-object v0

    # Safety check: if adapter is null, return 1
    if-nez v0, :check_position

    const/4 p1, 0x1

    return p1

    :check_position
    # Safety check: if position is negative or >= item count, return 1
    if-ltz p1, :safe_return

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->e()I

    move-result v1

    if-lt p1, v1, :get_view_type

    :safe_return
    const/4 p1, 0x1

    return p1

    :get_view_type
    invoke-virtual {v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->g(I)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x2

    goto :goto_f

    :cond_e
    const/4 p1, 0x1

    :goto_f
    return p1
.end method
