.class public Lcom/ailife/ClockSkinCoco/GlobalQsService;
.super Landroid/app/Service;
.source "GlobalQsService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "GlobalQsChannel"

.field private static final NOTIFICATION_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "GlobalQsService"


# instance fields
.field private gestureDetector:Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;

.field private isAnimating:Z

.field private isExpanded:Z

.field private overlayView:Landroid/widget/FrameLayout;

.field private panelHeight:I

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private qsPanel:Landroid/view/View;

.field private qsViewManager:Lcom/ailife/ClockSkinCoco/QsViewManager;

.field private scrim:Landroid/view/View;

.field private triggerReceiver:Landroid/content/BroadcastReceiver;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    .line 36
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z

    .line 37
    iput v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/GlobalQsService;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->collapsePanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/GlobalQsService;)I
    .registers 1

    .line 24
    iget p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/ailife/ClockSkinCoco/GlobalQsService;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/View;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ailife/ClockSkinCoco/GlobalQsService;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/View;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/widget/FrameLayout;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ailife/ClockSkinCoco/GlobalQsService;)Landroid/view/WindowManager;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->expandPanel()V

    return-void
.end method

.method private collapsePanel()V
    .registers 5

    .line 275
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    if-nez v0, :cond_9

    goto :goto_52

    .line 277
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    # Broadcast that global QS collapsed
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.GLOBAL_QS_COLLAPSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    const-string v0, "GlobalQsService"

    const-string v1, "Collapsing panel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->panelHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 285
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 286
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;

    invoke-direct {v3, p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService$5;-><init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    .line 287
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 306
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 307
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 310
    return-void

    .line 275
    :cond_52
    :goto_52
    return-void
.end method

.method private createNotification()Landroid/app/Notification;
    .registers 3

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    .line 83
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "GlobalQsChannel"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 85
    :cond_e
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    :goto_13
    nop

    .line 89
    const-string v1, "Global QS Active"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 90
    const-string v1, "Swipe down from top edge for Quick Settings"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 91
    const v1, 0x1080049

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method private createNotificationChannel()V
    .registers 5

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    .line 65
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Global Quick Settings"

    const/4 v2, 0x2

    const-string v3, "GlobalQsChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 70
    const-string v1, "Provides quick settings overlay"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 73
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 74
    if-eqz v1, :cond_26

    .line 75
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 78
    :cond_26
    return-void
.end method

.method private createOverlayView()V
    .registers 8

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 111
    const/16 v0, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_f

    .line 113
    :cond_b
    const/16 v0, 0x7d6

    const/16 v4, 0x7d6

    .line 117
    :goto_f
    # Read pulldown_sensitivity preference for initial window height
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pulldown_sensitivity"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 118
    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v3, v0

    .line 120
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x328

    const/4 v6, -0x3

    const/4 v2, -0x1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 130
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zzzzi_global_qs_overlay"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    .line 142
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    .line 143
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zzzzi_qs_panel_container"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    # Inflate correct QS layout based on screen shape
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v2, :cond_round_check

    const-string v2, "zzzz_fragment_qs_round"

    goto :goto_after_round_check

    :cond_round_check
    const-string v2, "fragment_qs"

    :goto_after_round_check
    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    .line 146
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zzzzi_qs_scrim"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    .line 149
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zzzzi_edge_gesture_zone"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    # Set edge gesture zone height from preference
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pulldown_sensitivity"

    const/16 v4, 0x64    # 100 (default value)

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v2, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->gestureDetector:Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;

    # Apply pulldown_sensitivity preference to EdgeGestureDetector
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pulldown_sensitivity"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->gestureDetector:Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->setEdgeSize(F)V

    .line 156
    # Make overlay view not clickable so it doesn't consume touches by default
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    new-instance v2, Lcom/ailife/ClockSkinCoco/GlobalQsService$1;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService$1;-><init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    new-instance v2, Lcom/ailife/ClockSkinCoco/GlobalQsService$2;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService$2;-><init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    .line 176
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c7

    .line 177
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c7

    .line 179
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    :cond_c7
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-direct {v1, p0, v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsViewManager:Lcom/ailife/ClockSkinCoco/QsViewManager;

    .line 184
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsViewManager:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->registerAllListeners()V

    .line 185
    const-string v0, "QsViewManager initialized with full functionality"

    const-string v1, "GlobalQsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    new-instance v2, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService$3;-><init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 201
    :try_start_e4
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const-string v0, "Overlay view added to WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f2} :catch_f3

    .line 205
    goto :goto_f9

    .line 203
    :catch_f3
    move-exception v0

    .line 204
    const-string v2, "Failed to add overlay view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    :goto_f9
    return-void
.end method

.method private expandPanel()V
    .registers 5

    # Check if ViewPager is locked via ViewPagerManager - block expansion if locked
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v0

    if-eqz v0, :skip_lock_check

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->isLocked()Z

    move-result v0

    if-eqz v0, :skip_lock_check

    # ViewPager is locked, block expansion
    const-string v0, "GlobalQsService"

    const-string v1, "Blocked QS expansion - ViewPager is locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :skip_lock_check

    .line 236
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z

    if-nez v0, :cond_6e

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    if-eqz v0, :cond_9

    goto :goto_6e

    .line 238
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z

    .line 239
    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    # Broadcast that global QS expanded
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.GLOBAL_QS_EXPANDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    const-string v0, "GlobalQsService"

    const-string v1, "Expanding panel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Refresh all QS data before showing the panel to ensure fresh information
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsViewManager:Lcom/ailife/ClockSkinCoco/QsViewManager;

    if-eqz v0, :skip_refresh

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->refreshAllData()V

    :skip_refresh

    .line 244
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 245
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 248
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 255
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 257
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 258
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/ailife/ClockSkinCoco/GlobalQsService$4;

    invoke-direct {v3, p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService$4;-><init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    .line 259
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 268
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->scrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 269
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 272
    return-void

    .line 236
    :cond_6e
    :goto_6e
    return-void
.end method

.method private handleTouch(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 210
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isInLauncher()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    const/4 p1, 0x0

    return p1

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->gestureDetector:Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;

    invoke-virtual {v0, p1}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 216
    if-eqz p1, :cond_2b

    .line 217
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->gestureDetector:Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/EdgeGestureDetector;->getGestureAction()I

    move-result v0

    .line 218
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-boolean v1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    if-nez v1, :cond_21

    .line 219
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->expandPanel()V

    goto :goto_2b

    .line 220
    :cond_21
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->isExpanded:Z

    if-eqz v0, :cond_2b

    .line 221
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->collapsePanel()V

    .line 225
    :cond_2b
    :goto_2b
    return p1
.end method

.method private isInLauncher()Z
    .registers 2

    .line 232
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 104
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 5

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    const-string v0, "GlobalQsService created"

    const-string v1, "GlobalQsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->createNotificationChannel()V

    .line 47
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    .line 48
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->startForeground(ILandroid/app/Notification;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2b

    .line 52
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 53
    const-string v0, "No overlay permission, stopping service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->stopSelf()V

    .line 55
    return-void

    .line 59
    :cond_2b
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;

    .line 60
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->createOverlayView()V

    .line 62
    # Register broadcast receiver for TRIGGER_GLOBAL_QS
    new-instance v0, Lcom/ailife/ClockSkinCoco/GlobalQsService$6;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/GlobalQsService$6;-><init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->triggerReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.ailife.ClockSkinCoco.TRIGGER_GLOBAL_QS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # Add COLLAPSE_GLOBAL_QS action to the filter
    const-string v2, "com.ailife.ClockSkinCoco.COLLAPSE_GLOBAL_QS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    # Android version check for registerReceiver compatibility
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :old_api_register

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with RECEIVER_NOT_EXPORTED flag
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->triggerReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v0, v3}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :register_done

    :old_api_register
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->triggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :register_done

    .line 65
    const-string v0, "Registered TRIGGER_GLOBAL_QS receiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 314
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 315
    const-string v0, "GlobalQsService destroyed"

    const-string v1, "GlobalQsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    # Unregister broadcast receiver
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->triggerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :skip_unregister

    .line 317
    :try_start_unregister
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->triggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_unregister

    .catch Ljava/lang/Exception; {:try_start_unregister .. :try_end_unregister} :catch_unregister

    goto :skip_unregister

    :catch_unregister
    move-exception v0

    const-string v2, "Error unregistering receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :skip_unregister

    .line 318
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsViewManager:Lcom/ailife/ClockSkinCoco/QsViewManager;

    if-eqz v0, :cond_13

    .line 319
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->qsViewManager:Lcom/ailife/ClockSkinCoco/QsViewManager;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->unregisterAllListeners()V

    .line 322
    :cond_13
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_29

    .line 324
    :try_start_1b
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService;->overlayView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    .line 327
    goto :goto_29

    .line 325
    :catch_23
    move-exception v0

    .line 326
    const-string v2, "Error removing overlay view"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :cond_29
    :goto_29
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 98
    const-string p1, "GlobalQsService"

    const-string p2, "GlobalQsService started"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p1, 0x1

    return p1
.end method
