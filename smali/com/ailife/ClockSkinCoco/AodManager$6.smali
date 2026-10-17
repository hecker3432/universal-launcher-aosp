.class Lcom/ailife/ClockSkinCoco/AodManager$6;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AodManager;->handleScreenOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/AodManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/AodManager;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager$6;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$6;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->enterAodMode()V

    .line 517
    return-void
.end method
