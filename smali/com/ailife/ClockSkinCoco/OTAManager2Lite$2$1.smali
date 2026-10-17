.class Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$1;
.super Ljava/lang/Object;
.source "OTAManager2Lite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$1;->this$1:Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 329
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$1;->this$1:Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;

    iget-object p2, p2, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->setUpdateCheckEnabled(Z)V

    .line 330
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$1;->this$1:Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;

    iget-object p2, p2, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    const-string v0, "Update checks disabled"

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V
    invoke-static {p2, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$200(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V

    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 332
    return-void
.end method
