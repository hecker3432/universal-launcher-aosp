.class Lcom/ailife/ClockSkinCoco/AodManager$1$1;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AodManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ailife/ClockSkinCoco/AodManager$1;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/AodManager$1;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager$1$1;->this$1:Lcom/ailife/ClockSkinCoco/AodManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AodManager$1$1;->this$1:Lcom/ailife/ClockSkinCoco/AodManager$1;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/AodManager$1;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->enterAodMode()V

    .line 199
    return-void
.end method
