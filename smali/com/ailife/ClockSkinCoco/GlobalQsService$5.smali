.class Lcom/ailife/ClockSkinCoco/GlobalQsService$5;
.super Ljava/lang/Object;
.source "GlobalQsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/GlobalQsService;->collapsePanel()V
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

    .line 287
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    const/4 v1, 0x0

    # setter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$502(Lcom/ailife/ClockSkinCoco/GlobalQsService;Z)Z

    .line 291
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$600(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    # Read pulldown_sensitivity preference for window height after collapse
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pulldown_sensitivity"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 295
    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 296
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$700(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 297
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$700(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x308

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 300
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$900(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$800(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # getter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$700(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-void
.end method
