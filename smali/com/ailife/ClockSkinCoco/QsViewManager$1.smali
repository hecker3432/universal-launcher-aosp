.class Lcom/ailife/ClockSkinCoco/QsViewManager$1;
.super Ljava/lang/Object;
.source "QsViewManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QsViewManager;->init(Landroid/view/View;)V
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

    .line 177
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$1;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 180
    if-eqz p3, :cond_b

    .line 181
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager$1;->this$0:Lcom/ailife/ClockSkinCoco/QsViewManager;

    # getter for: Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->access$000(Lcom/ailife/ClockSkinCoco/QsViewManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/SettingController;->setBrightness(Landroid/content/Context;I)V

    .line 183
    :cond_b
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 186
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 189
    return-void
.end method
