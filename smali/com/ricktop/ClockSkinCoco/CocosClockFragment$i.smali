.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

.field private b:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;->b:Landroid/view/GestureDetector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Landroid/view/GestureDetector;Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Landroid/view/GestureDetector;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$i;->b:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    # Return false to let the view still receive touch events
    const/4 p1, 0x0

    return p1
.end method
