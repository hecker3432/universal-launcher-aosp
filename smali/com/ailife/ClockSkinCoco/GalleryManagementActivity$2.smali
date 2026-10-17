.class Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$2;
.super Ljava/lang/Object;
.source "GalleryManagementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 111
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 114
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # invokes: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->openImagePicker()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$300(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V

    .line 115
    return-void
.end method
