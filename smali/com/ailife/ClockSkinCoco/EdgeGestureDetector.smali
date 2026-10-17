.class public Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# static fields
.field public static final GESTURE_NONE:I = 0x0

.field public static final GESTURE_SWIPE_DOWN:I = 0x1

.field public static final GESTURE_SWIPE_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EdgeGestureDetector"


# instance fields
.field private context:Landroid/content/Context;

.field private currentX:F

.field private currentY:F

.field private edgeSize:F

.field private gestureAction:I

.field private isEdgeSwipe:Z

.field private isInEdgeArea:Z

.field private startX:F

.field private startY:F

.field private swipeThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    .line 25
    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 28
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 33
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    const/high16 p1, 0x42c80000    # 100.0f

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p1

    iput v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->edgeSize:F

    .line 36
    const/high16 p1, 0x42480000    # 50.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->swipeThreshold:F

    .line 37
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 4

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startX:F

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    .line 71
    iget p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startX:F

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentX:F

    .line 72
    iget p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentY:F

    .line 75
    iget p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->edgeSize:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3d

    .line 76
    # Set isInEdgeArea to track potential swipe, but don't consume touch yet
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isInEdgeArea:Z

    .line 77
    iput v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Edge touch detected at Y: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeGestureDetector"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 80
    :cond_3d
    iput-boolean v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    .line 82
    :goto_3f
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 9

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentX:F

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentY:F

    .line 88
    iget p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentY:F

    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    sub-float/2addr p1, v0

    .line 89
    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentX:F

    iget v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 92
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->swipeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_41

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpl-double v0, v1, v3

    if-lez v0, :cond_41

    .line 93
    # Real swipe movement detected - set isEdgeSwipe to start consuming events
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3e

    .line 94
    const/4 p1, 0x1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    goto :goto_41

    .line 96
    :cond_3e
    const/4 p1, 0x2

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 99
    :cond_41
    :goto_41
    return-void
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 9

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentX:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentY:F

    .line 105
    iget p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentY:F

    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    sub-float/2addr p1, v0

    .line 106
    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentX:F

    iget v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->swipeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpl-double v0, v1, v3

    if-lez v0, :cond_4e

    .line 110
    const/4 v0, 0x0

    const-string v1, "EdgeGestureDetector"

    cmpl-float p1, p1, v0

    if-lez p1, :cond_45

    .line 111
    const/4 p1, 0x1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 112
    const-string p1, "Swipe DOWN gesture detected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 114
    :cond_45
    const/4 p1, 0x2

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 115
    const-string p1, "Swipe UP gesture detected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 118
    :cond_4e
    const/4 p1, 0x0

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 120
    :goto_51
    return-void
.end method

.method private reset()V
    .registers 2

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isInEdgeArea:Z

    .line 124
    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startX:F

    .line 126
    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->startY:F

    .line 127
    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentX:F

    .line 128
    iput v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->currentY:F

    .line 129
    return-void
.end method


# virtual methods
.method public getGestureAction()I
    .registers 2

    .line 132
    iget v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->gestureAction:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2a

    .line 64
    return v1

    .line 46
    :pswitch_9
    # Check if touch started in edge area (not if swipe detected yet)
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isInEdgeArea:Z

    if-eqz v0, :cond_12

    .line 47
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->handleMove(Landroid/view/MotionEvent;)V

    .line 48
    # Return true only if real swipe detected (set by handleMove)
    iget-boolean p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    # Log ACTION_MOVE result
    if-eqz p1, :log_move_false

    const-string v0, "EdgeGestureDetector"

    const-string v2, "ACTION_MOVE: swipe detected, returning true (consuming)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :return_move

    :log_move_false
    const-string v0, "EdgeGestureDetector"

    const-string v2, "ACTION_MOVE: no swipe yet, returning false (not consuming)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :return_move
    return p1

    .line 50
    :cond_12
    return v1

    .line 54
    :pswitch_13
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    if-eqz v0, :cond_20

    .line 55
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->handleUp(Landroid/view/MotionEvent;)V

    .line 56
    iget-boolean p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isEdgeSwipe:Z

    .line 57
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->reset()V

    .line 58
    return p1

    .line 60
    :cond_20
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->reset()V

    .line 61
    return v1

    .line 42
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->handleDown(Landroid/view/MotionEvent;)V

    .line 43
    # Must return true to receive ACTION_MOVE events
    # Otherwise Android won't deliver MOVE/UP if we return false
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->isInEdgeArea:Z

    if-eqz v0, :not_edge

    const-string v0, "EdgeGestureDetector"

    const-string v2, "ACTION_DOWN: in edge area, returning true to get MOVE events"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :not_edge
    return v1

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_13
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method public setEdgeSize(F)V
    .registers 5

    .line 136
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 138
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->edgeSize:F

    .line 140
    return-void
.end method

.method public setSwipeThreshold(F)V
    .registers 5

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 145
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->swipeThreshold:F

    .line 147
    return-void
.end method
