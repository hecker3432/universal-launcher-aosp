.class Lcom/ailife/ClockSkinCoco/GlobalQsService$3;
.super Ljava/lang/Object;
.source "GlobalQsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/GlobalQsService;->createOverlayView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$400(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$302(Lcom/ailife/ClockSkinCoco/GlobalQsService;I)I

    .line 192
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$300(Lcom/ailife/ClockSkinCoco/GlobalQsService;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 193
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    const/16 v1, 0x320

    # setter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$302(Lcom/ailife/ClockSkinCoco/GlobalQsService;I)I

    .line 195
    :cond_1e
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$400(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$300(Lcom/ailife/ClockSkinCoco/GlobalQsService;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 196
    return-void
.end method
