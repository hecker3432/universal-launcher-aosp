.class public Lcom/ailife/launcher/widget/WidgetHostView;
.super Lcom/ricktop/ClockSkinCoco/M;
.source "WidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "WidgetHostView"


# instance fields
.field private doubleTapProtectionEnabled:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private lastTapTime:J

.field private removalListener:Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/M;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ailife/launcher/widget/WidgetHostView;->doubleTapProtectionEnabled:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ailife/launcher/widget/WidgetHostView;->lastTapTime:J

    .line 30
    invoke-direct {p0}, Lcom/ailife/launcher/widget/WidgetHostView;->setupGestureDetector()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/ailife/launcher/widget/WidgetHostView;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/ailife/launcher/widget/WidgetHostView;->handleLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/ailife/launcher/widget/WidgetHostView;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/ailife/launcher/widget/WidgetHostView;->doubleTapProtectionEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ailife/launcher/widget/WidgetHostView;)J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/ailife/launcher/widget/WidgetHostView;->lastTapTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/ailife/launcher/widget/WidgetHostView;J)J
    .registers 3

    .line 15
    iput-wide p1, p0, Lcom/ailife/launcher/widget/WidgetHostView;->lastTapTime:J

    return-wide p1
.end method

.method private handleLongPress()V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetHostView;->removalListener:Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;

    if-eqz v0, :cond_25

    .line 65
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/WidgetHostView;->getAppWidgetId()I

    move-result v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long press detected on widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetHostView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/ailife/launcher/widget/WidgetHostView;->removalListener:Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;

    invoke-interface {v1, v0}, Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;->onRemovalRequested(I)V

    .line 69
    :cond_25
    return-void
.end method

.method private setupGestureDetector()V
    .registers 4

    .line 34
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/ailife/launcher/widget/WidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ailife/launcher/widget/WidgetHostView$1;

    invoke-direct {v2, p0}, Lcom/ailife/launcher/widget/WidgetHostView$1;-><init>(Lcom/ailife/launcher/widget/WidgetHostView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ailife/launcher/widget/WidgetHostView;->gestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method


# virtual methods
.method public enableDoubleTapProtection(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/ailife/launcher/widget/WidgetHostView;->doubleTapProtectionEnabled:Z

    .line 61
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetHostView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    invoke-super {p0, p1}, Lcom/ricktop/ClockSkinCoco/M;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRemovalListener(Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/ailife/launcher/widget/WidgetHostView;->removalListener:Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;

    .line 57
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widget error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/WidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 88
    return-void
.end method
