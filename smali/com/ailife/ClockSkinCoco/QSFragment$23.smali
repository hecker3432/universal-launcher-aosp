.class Lcom/ailife/ClockSkinCoco/QSFragment$23;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QSFragment;->registerAllListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QSFragment;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 569
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 570
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$34;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment$34;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 575
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 576
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$34;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment$34;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public onUnavailable()V
    .registers 4

    .line 581
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 582
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$34;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment$23;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment$34;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 583
    return-void
.end method
