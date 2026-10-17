.class Lcom/ricktop/ClockSkinCoco/NotificationScrollView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/NotificationScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$a;->a:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$a;->a:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->g(Lcom/ricktop/ClockSkinCoco/NotificationScrollView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/NotificationScrollView$a;->a:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->h(Lcom/ricktop/ClockSkinCoco/NotificationScrollView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method
