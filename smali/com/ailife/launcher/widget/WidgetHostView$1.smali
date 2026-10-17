.class Lcom/ailife/launcher/widget/WidgetHostView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/launcher/widget/WidgetHostView;->setupGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/launcher/widget/WidgetHostView;


# direct methods
.method constructor <init>(Lcom/ailife/launcher/widget/WidgetHostView;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView$1;->this$0:Lcom/ailife/launcher/widget/WidgetHostView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 37
    iget-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView$1;->this$0:Lcom/ailife/launcher/widget/WidgetHostView;

    # invokes: Lcom/ailife/launcher/widget/WidgetHostView;->handleLongPress()V
    invoke-static {p1}, Lcom/ailife/launcher/widget/WidgetHostView;->access$000(Lcom/ailife/launcher/widget/WidgetHostView;)V

    .line 38
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 42
    iget-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView$1;->this$0:Lcom/ailife/launcher/widget/WidgetHostView;

    # getter for: Lcom/ailife/launcher/widget/WidgetHostView;->doubleTapProtectionEnabled:Z
    invoke-static {p1}, Lcom/ailife/launcher/widget/WidgetHostView;->access$100(Lcom/ailife/launcher/widget/WidgetHostView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 44
    iget-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView$1;->this$0:Lcom/ailife/launcher/widget/WidgetHostView;

    # getter for: Lcom/ailife/launcher/widget/WidgetHostView;->lastTapTime:J
    invoke-static {p1}, Lcom/ailife/launcher/widget/WidgetHostView;->access$200(Lcom/ailife/launcher/widget/WidgetHostView;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gez p1, :cond_2a

    .line 46
    iget-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView$1;->this$0:Lcom/ailife/launcher/widget/WidgetHostView;

    invoke-virtual {p1}, Lcom/ailife/launcher/widget/WidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "Long press to remove widget"

    invoke-static {p1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_2a
    iget-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView$1;->this$0:Lcom/ailife/launcher/widget/WidgetHostView;

    # setter for: Lcom/ailife/launcher/widget/WidgetHostView;->lastTapTime:J
    invoke-static {p1, v1, v2}, Lcom/ailife/launcher/widget/WidgetHostView;->access$202(Lcom/ailife/launcher/widget/WidgetHostView;J)J

    .line 50
    :cond_2f
    return v0
.end method
