.class Lcom/ailife/ClockSkinCoco/QsViewManager$8;
.super Landroid/telephony/PhoneStateListener;
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

    .line 342
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$8;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 3

    .line 345
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$8;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # invokes: Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$500(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    .line 346
    return-void
.end method
