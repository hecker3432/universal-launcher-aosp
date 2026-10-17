.class Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$3;
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

    .line 314
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$3;->this$1:Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 317
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2$3;->this$1:Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;

    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->openInBrowser()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$500(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)V

    .line 318
    return-void
.end method
