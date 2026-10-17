.class public Lcom/ricktop/ClockSkinCoco/ClickableViewPager;
.super Lcom/ricktop/ClockSkinCoco/H;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;,
        Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;
    }
.end annotation


# instance fields
.field private h0:Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;->V()V

    return-void
.end method

.method static synthetic U(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;)Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;->h0:Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;

    return-object p0
.end method

.method private V()V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$c;-><init>(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;Lcom/ricktop/ClockSkinCoco/ClickableViewPager$a;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$a;

    invoke-direct {v1, p0, v0}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager$a;-><init>(Lcom/ricktop/ClockSkinCoco/ClickableViewPager;Landroid/view/GestureDetector;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;->h0:Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;

    return-void
.end method
