.class Lcom/ailife/ClockSkinCoco/QsViewManager$13;
.super Landroid/database/ContentObserver;
.source "QsViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QsViewManager;->registerAllListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QsViewManager;Landroid/os/Handler;)V
    .registers 3

    .line 414
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$13;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 417
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$13;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBrightness()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$1000(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    .line 418
    return-void
.end method
