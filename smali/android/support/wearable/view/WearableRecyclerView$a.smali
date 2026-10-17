.class Landroid/support/wearable/view/WearableRecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/wearable/view/WearableRecyclerView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableRecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/WearableRecyclerView$a;->b:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView$a;->b:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableRecyclerView;->x1(Landroid/support/wearable/view/WearableRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView$a;->b:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView$a;->b:Landroid/support/wearable/view/WearableRecyclerView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableRecyclerView;->z1(Landroid/support/wearable/view/WearableRecyclerView;)V

    iget-object v0, p0, Landroid/support/wearable/view/WearableRecyclerView$a;->b:Landroid/support/wearable/view/WearableRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableRecyclerView;->y1(Landroid/support/wearable/view/WearableRecyclerView;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
