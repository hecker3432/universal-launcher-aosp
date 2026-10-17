.class Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;
.super Ljava/lang/Object;
.source "GalleryManagementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->imageFiles:Ljava/util/List;
    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$100(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    # invokes: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->showDeleteDialog(Ljava/io/File;)V
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$200(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;Ljava/io/File;)V

    .line 104
    const/4 p1, 0x1

    return p1
.end method
