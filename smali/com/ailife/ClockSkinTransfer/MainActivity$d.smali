.class final Lcom/ailife/ClockSkinTransfer/MainActivity$d;
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

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$d;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$d;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    iget-object v0, p1, Lcom/ailife/ClockSkinTransfer/MainActivity;->ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    # Assuming p0 is the Activity (Context)
    # Prepare the string to share

    # Create an Intent with ACTION_SEND
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    # Set the Intent action and type
    sget-object v2, Landroid/content/Intent;->ACTION_SEND:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    # Add the text to the Intent
    sget-object v2, Landroid/content/Intent;->EXTRA_TEXT:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # Set the MIME type to plain text
    const-string v0, "text/plain"
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    # Create a chooser dialog (optional but recommended)
    const-string v0, "Share via"
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    move-result-object v0

    # Launch the share dialog
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :cond_0
    return-void
.end method
