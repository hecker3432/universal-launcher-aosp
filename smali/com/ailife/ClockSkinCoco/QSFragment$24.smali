.class Lcom/ailife/ClockSkinCoco/QSFragment$24;
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

    .line 590
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$24;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 593
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$24;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateData()V

    .line 594
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 598
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$24;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateData()V

    .line 599
    return-void
.end method
