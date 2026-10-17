.class public Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppWaterfallFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;,
        Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallSpanSizeLookup;
    }
.end annotation


# static fields
.field private static savedState:Landroid/os/Parcelable;


# instance fields
.field private adapter:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ricktop/ClockSkinCoco/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->adapter:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ricktop/ClockSkinCoco/CircleScroller;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    return-object p0
.end method

.method private loadAppList()V
    .registers 2

    .line 125
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/b;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:Ljava/util/ArrayList;

    .line 126
    return-void
.end method


# virtual methods
.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .line 154
    const p3, 0x7f0d007a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 156
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/WatchApp;->f()I

    move-result p2

    .line 157
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ricktop/ClockSkinCoco/WatchApp;->g()I

    move-result p3

    .line 159

    const v0, 0x7f0a0283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    const v0, 0x7f0a0284

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/CircleScroller;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    .line 161
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    if-eqz v0, :cond_a
    
    invoke-virtual {v0, p2, p3}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c(II)V

    :cond_a

    .line 164
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->h1()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->d3(I)V

    .line 165
    new-instance p3, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallSpanSizeLookup;

    invoke-direct {p3, p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallSpanSizeLookup;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)V

    #invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    iput-object p3, p2, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 167
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 169
    new-instance p2, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    invoke-direct {p2, p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)V

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->adapter:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    .line 170
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->adapter:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 172
    # Calculate screen width percentages for layout
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->h1()Landroid/content/Context;
    move-result-object v0
    const-string v1, "window"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v0
    new-instance v1, Landroid/graphics/Point;
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    iget v0, v1, Landroid/graphics/Point;->x:I

    # Calculate 12% for even row offset
    int-to-float v1, v0
    const v2, 0x3df5c28f    # 0.12f
    mul-float/2addr v1, v2
    float-to-int v1, v1

    # Calculate 1% for horizontal padding
    int-to-float v2, v0
    const v3, 0x3c23d70a    # 0.01f
    mul-float/2addr v2, v3
    float-to-int v2, v2

    # Calculate 1.25% for item spacing (creates 2.5% gaps)
    int-to-float v4, v0
    const v5, 0x3ca3d70a    # 0.0125f
    mul-float/2addr v4, v5
    float-to-int v4, v4

    # Set horizontal padding on RecyclerView
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I
    move-result v3
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I
    move-result v5
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v0, v2, v3, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    new-instance v2, Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;
    invoke-direct {v2, v1, v4}, Lcom/ailife/ClockSkinCoco/AppWaterfallItemDecoration;-><init>(II)V
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 173
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;

    invoke-direct {p3, p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 200
    return-object p1
.end method

.method public n0()V
    .registers 2

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    .line 207
    return-void
.end method

.method public y0()V
    .registers 2

    .line 211
    # Disabled savedState saving to prevent layout corruption
    # iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    #
    # if-eqz v0, :cond_18
    #
    # iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    #
    # invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;
    #
    # move-result-object v0
    #
    # if-eqz v0, :cond_18
    #
    # .line 212
    # iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    #
    # invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;
    #
    # move-result-object v0
    #
    # invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->d1()Landroid/os/Parcelable;
    #
    # move-result-object v0
    #
    # sput-object v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->savedState:Landroid/os/Parcelable;

    .line 214
    :cond_18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    .line 216
    return-void
.end method

.method public D0()V
    .registers 3

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    .line 131
    # Disabled savedState restoration to prevent layout corruption
    # sget-object v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->savedState:Landroid/os/Parcelable;
    #
    # if-eqz v0, :cond_12
    #
    # .line 132
    # iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    #
    # invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;
    #
    # move-result-object v0
    #
    # sget-object v1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->savedState:Landroid/os/Parcelable;
    #
    # invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->c1(Landroid/os/Parcelable;)V

    .line 134
    :cond_12
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    .line 149
    # Moved app loading to i0() (onCreate) to match e fragment behavior
    # invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->C1()V

    .line 136
    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .registers 2

    .line 145
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    .line 146
    # Load app list early in onCreate, before views are created
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->loadAppList()V

    .line 147
    return-void
.end method

.method public C1()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_11

    .line 140
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->loadAppList()V

    .line 141
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->adapter:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->j()V

    .line 142
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    # Check if we need to scroll to a specific position
    sget v1, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I
    const/4 v2, -0x1
    if-eq v1, v2, :cond_11

    # Convert app position to adapter position (compensate for empty slots)
    # adapterPosition = appPosition + (appPosition + 4) / 7
    add-int/lit8 v2, v1, 0x4      # v2 = appPosition + 4
    div-int/lit8 v2, v2, 0x7      # v2 = (appPosition + 4) / 7
    add-int/2addr v1, v2          # v1 = appPosition + (appPosition + 4) / 7

    # Scroll to the target adapter position
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->p1(I)V

    # Reset scroll position to -1
    const/4 v2, -0x1
    sput v2, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    .line 144
    :cond_11
    return-void
.end method
