.class final Lcom/ailife/ClockSkinTransfer/MainActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinTransfer/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/MainActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinTransfer/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$c;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$c;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    iget-object v2, p1, Lcom/ailife/ClockSkinTransfer/MainActivity;->ip:Ljava/lang/String;

    if-eqz v2, :cond_0

    # Assuming p0 is the current Activity (Context)
    sget-object v0, Landroid/content/Context;->CLIPBOARD_SERVICE:Ljava/lang/String;

    # Get ClipboardManager instance
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/ClipboardManager;

    # Prepare the label and text to copy
    const-string v3, "ip"  # Label for the clip (can be null)

    # Create ClipData object
    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    move-result-object v3

    # Set the clipboard data
    invoke-virtual {v1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 v1, 0x1

    const-string v3, "copied to clipboard"

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
