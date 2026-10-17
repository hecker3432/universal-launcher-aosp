.class Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "AppWaterfallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;
.field private firstLastVisibleItemPosition:I  # Add new field to store the first lastVisibleItemPosition


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)V
    .registers 3

    .line 173
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 174
    const/4 v0, -0x1  # Initialize with -1 to indicate not set yet
    iput v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->firstLastVisibleItemPosition:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 190
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 191
    if-nez p2, :cond_11

    .line 192
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$500(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->setVisibility(I)V

    goto :goto_1b

    .line 194
    :cond_11
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$500(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->setVisibility(I)V

    .line 196
    :goto_1b
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$500(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->invalidate()V

    .line 197
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 21

    .line 177
    move-object/from16 v0, p0

    const-string v1, "AppWaterfallScroll"

    const-string v2, "scroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 180
    .local v3, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v4

    .line 181
    .local v4, "adapter":Landroidx/recyclerview/widget/RecyclerView$g;
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$g;->e()I

    move-result v5

    .line 182
    .local v5, "totalItemCount":I
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->c2()I

    move-result v6

    .line 183
    .local v6, "lastVisibleItemPosition":I

    iget v8, v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->firstLastVisibleItemPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_29

    .line 186
    iput v6, v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->firstLastVisibleItemPosition:I

    .line 189
    :cond_29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "items:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",pos:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",firstLastVisible:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->firstLastVisibleItemPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I


    sub-int v6,v6,v9

    const/4 v8, 0x1

    sub-int v5,v5,v8

    .line 200
    :cond_72
    iget-object v11, v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;
    invoke-static {v11}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$500(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object v11

    invoke-virtual {v11, v6, v9, v5}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->b(III)V

    .line 201
    iget-object v11, v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$1;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->circleScroller:Lcom/ricktop/ClockSkinCoco/CircleScroller;
    invoke-static {v11}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$500(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Lcom/ricktop/ClockSkinCoco/CircleScroller;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->invalidate()V

    .line 202
    return-void
.end method