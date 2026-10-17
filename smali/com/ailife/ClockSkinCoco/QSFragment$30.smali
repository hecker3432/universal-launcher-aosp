.class Lcom/ailife/ClockSkinCoco/QSFragment$30;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QSFragment;Landroid/os/Handler;)V
    .registers 3

    .line 683
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$30;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 686
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$30;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateBrightness()V

    .line 687
    return-void
.end method
