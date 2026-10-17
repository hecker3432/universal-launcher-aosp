.class Lcom/ailife/ClockSkinCoco/QsViewManager$7;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$7;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 330
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$7;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$500(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    .line 331
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 335
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$7;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$500(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    .line 336
    return-void
.end method
