.class Lcom/ailife/ClockSkinCoco/QsViewManager$6$2;
.super Ljava/lang/Object;
.source "QsViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QsViewManager$6;->onLost(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ailife/ClockSkinCoco/QsViewManager$6;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QsViewManager$6;)V
    .registers 2

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$6$2;->this$1:Lcom/ailife/ClockSkinCoco/QsViewManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$6$2;->this$1:Lcom/ailife/ClockSkinCoco/QsViewManager$6;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/QsViewManager$6;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->updateWifi()V
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$400(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    return-void
.end method
