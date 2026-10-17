.class Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;
.super Ljava/lang/Object;
.source "WidgetContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;


# direct methods
.method constructor <init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;->this$0:Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;->this$0:Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;

    # invokes: Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->loadWidgetViews()V
    invoke-static {v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->access$000(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    .line 116
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;->this$0:Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;

    # invokes: Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->setupAddWidgetListener()V
    invoke-static {v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->access$100(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    .line 117
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;->this$0:Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;

    # invokes: Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->forceWidgetUpdates()V
    invoke-static {v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->access$200(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    .line 118
    return-void
.end method
