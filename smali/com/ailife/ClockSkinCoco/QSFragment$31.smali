.class Lcom/ailife/ClockSkinCoco/QSFragment$31;
.super Landroid/content/BroadcastReceiver;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QSFragment;->registerAllListener2()V
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

    .line 692
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$31;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 695
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$31;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateWifi()V

    .line 696
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$31;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateBt()V

    .line 697
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$31;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateData()V

    .line 698
    return-void
.end method
