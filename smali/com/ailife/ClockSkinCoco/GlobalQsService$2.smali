.class Lcom/ailife/ClockSkinCoco/GlobalQsService$2;
.super Ljava/lang/Object;
.source "GlobalQsService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 164
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$2;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 167
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$2;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$100(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 168
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$2;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # invokes: Lcom/ailife/ClockSkinCoco/GlobalQsService;->collapsePanel()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$200(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    .line 170
    :cond_d
    return-void
.end method
