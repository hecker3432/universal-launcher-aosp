.class Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;
.super Ljava/lang/Object;
.source "WatchFaceSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->showCreateFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    # Get text from EditText
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    # Check if empty
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_call_create

    # Show toast for empty name
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    const-string p2, "Folder name cannot be empty"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_call_create
    # Call createFolder method
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-static {p2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->access$200(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;Ljava/lang/String;)V

    return-void
.end method
