.class Lcom/ailife/ClockSkinCoco/AodManager$4;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AodManager;->unlockViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/AodManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/AodManager;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AodManager$4;->this$0:Lcom/ailife/ClockSkinCoco/AodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 397
    # Toast removed - ViewPagerManager handles it

    .line 398
    return-void
.end method
