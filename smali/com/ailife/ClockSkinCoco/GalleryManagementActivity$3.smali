.class Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;
.super Ljava/lang/Object;
.source "GalleryManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->showDeleteDialog(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

.field final synthetic val$imageFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;->val$imageFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 257
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;->val$imageFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1a

    .line 258
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    const-string v0, "Image deleted"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    # invokes: Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->loadGalleryImages()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;->access$400(Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;)V

    goto :goto_25

    .line 262
    :cond_1a
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryManagementActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/GalleryManagementActivity;

    const-string v0, "Failed to delete image"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 265
    :goto_25
    return-void
.end method
