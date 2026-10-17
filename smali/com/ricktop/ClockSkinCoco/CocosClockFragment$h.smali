.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$h;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "GestureDetector"

    const-string v1, "Long press detected by Android GestureDetector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Check ViewPagerManager state first
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->isLockedByUBS()Z

    move-result v1

    if-eqz v1, :check_aod_block

    # Locked by UBS - long press has no effect
    return-void

    :check_aod_block
    # Check if long press should be blocked (AOD manager)
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AodManager;->shouldBlockLongPress()Z

    move-result v0

    if-eqz v0, :continue_longpress

    # Long press blocked, return early
    const-string v0, "GestureDetector"

    const-string v1, "Long press blocked - disabled in AOD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :continue_longpress
    # Call the static runSetSkin method
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->runSetSkin()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    # Returning true cancels the long press automatically
    const/4 p1, 0x1

    return p1
.end method
