.class Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;
.super Ljava/lang/Object;
.source "OTAManager2Lite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    # getter for: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$400(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Available: V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    # getter for: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$700(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    .line 312
    # getter for: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$600(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$3;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$3;-><init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;)V

    .line 314
    const-string v2, "Download"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$2;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$2;-><init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;)V

    .line 320
    const-string v2, "Later"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$1;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$1;-><init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;)V

    .line 326
    const-string v2, "Do not remind"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    return-void
.end method
