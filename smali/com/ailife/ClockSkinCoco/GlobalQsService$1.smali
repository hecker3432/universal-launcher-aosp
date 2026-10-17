.class Lcom/ailife/ClockSkinCoco/GlobalQsService$1;
.super Ljava/lang/Object;
.source "GlobalQsService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 156
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$1;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$1;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    # invokes: Lcom/ailife/ClockSkinCoco/GlobalQsService;->handleTouch(Landroid/view/MotionEvent;)Z
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$000(Lcom/ailife/ClockSkinCoco/GlobalQsService;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
