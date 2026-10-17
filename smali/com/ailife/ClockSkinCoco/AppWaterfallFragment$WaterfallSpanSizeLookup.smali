.class Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "AppWaterfallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaterfallSpanSizeLookup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;


# direct methods
.method public constructor <init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallSpanSizeLookup;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method




# virtual methods
.method public f(I)I
    .registers 5

    .line 96

        const/4 p1, 0x1


        return p1
.end method

.method public e(II)I
    .registers 3
    .param p1    # I
    .param p2    # I

    .line 96
    rem-int v0, p1, p2
    return v0
.end method
