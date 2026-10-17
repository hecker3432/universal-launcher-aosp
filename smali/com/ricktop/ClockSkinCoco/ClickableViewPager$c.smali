.class Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/ClickableViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;Lcom/ricktop/ClockSkinCoco/ClickableViewPager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;-><init>(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;->U(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;)Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;->U(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;)Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/H;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;->a(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
