.class Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "AppWaterfallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaterfallAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

.field private cachedIconSize:I


# direct methods
.method public constructor <init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)V
    .registers 6

    .line 37
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    # Calculate icon size once during construction
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->h1()Landroid/content/Context;
    move-result-object p1
    const-string v0, "window"
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/WindowManager;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object p1
    new-instance v0, Landroid/graphics/Point;
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    iget p1, v0, Landroid/graphics/Point;->x:I
    int-to-float p1, p1
    const v0, 0x3e428f5c    # 0.22f
    mul-float p1, p1, v0
    float-to-int p1, p1
    iput p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->cachedIconSize:I

    return-void
.end method




# virtual methods
.method public e()I
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$000(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    # Calculate total positions including empty slots
    # totalPositions = appCount + (appCount + 4) / 7
    # Every 7 apps needs 1 empty slot
    add-int/lit8 v1, v0, 0x4    # v1 = appCount + 4
    div-int/lit8 v1, v1, 0x7    # v1 = (appCount + 4) / 7
    add-int/2addr v0, v1         # v0 = appCount + ((appCount + 4) / 7)

    return v0
.end method

.method public g(I)I
    .registers 5
    .param p1, "position"    # I

    #const/4 v0, 0x4 # spanCount = 4
    #div-int v1, p1, v0 # v1 = row = position / spanCount
    #const/4 v3, 0x2
    #rem-int v2, v1, v3 # v2 = isOddRow = row % 2

    #if-eqz v2, :not_empty_slot # if v2 == 0 (even row), not an empty slot

    #rem-int v2, p1, v0 # v2 = col = position % spanCount
    #const/4 v3, 0x3 # v3 = last column index (0-indexed)
    #if-eq v2, v3, :empty_slot # if col == 3, it's an empty slot

    #:not_empty_slot
    #const/4 p1, 0x0 # Default view type
    #return p1

    #:empty_slot
    const v0, 0x8

    rem-int v1, p1, v0

    const v0, 0x3

    if-eq v0, v1, :empty
    const/4 p1, 0x0 # Return 0 for normal items
    return p1
    :empty
    const/16 p1, 0x63 # Special view type for empty slot (99)
    return p1
.end method

.method synthetic lambda$onBindViewHolder$0$com-ricktop-ClockSkinCoco-AppWaterfallFragment$WaterfallAdapter(ILandroid/view/View;)V
    .registers 4

    .line 64
    # Convert position to app index: appIndex = position - (position + 5) / 8
    add-int/lit8 p2, p1, 0x5      # p2 = position + 5
    div-int/lit8 p2, p2, 0x8      # p2 = (position + 5) / 8
    sub-int/2addr p1, p2          # p1 = position - (position + 5) / 8 = appIndex

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$000(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    .line 65
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const-string v0, "AppListUtil"

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_32
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-virtual {p2, p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->x1(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_32 .. :try_end_37} :catch_38

    .line 75
    goto :goto_55

    .line 73
    :catch_38
    move-exception p1

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity not found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppWaterfallFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_55
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-ricktop-ClockSkinCoco-AppWaterfallFragment$WaterfallAdapter(ILandroid/view/View;)Z
    .registers 5

    .line 79
    # Convert position to app index: appIndex = position - (position + 5) / 8
    add-int/lit8 p2, p1, 0x5      # p2 = position + 5
    div-int/lit8 p2, p2, 0x8      # p2 = (position + 5) / 8
    sub-int/2addr p1, p2          # p1 = position - (position + 5) / 8 = appIndex

    new-instance p2, Lcom/ricktop/ClockSkinCoco/a;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->h1()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->n()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/ricktop/ClockSkinCoco/a;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$000(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-virtual {p2, p1}, Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V

    .line 80
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$100(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 81
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic m(Landroidx/recyclerview/widget/RecyclerView$C;I)V
    .registers 3

    .line 37
    check-cast p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->m(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;I)V

    return-void
.end method

.method public m(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 59
    # Get view type using adapter's g(I)I method
    invoke-virtual {p0, p2}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->g(I)I
    move-result v0
    const/16 v1, 0x63 # Special view type for empty slot (99)
    if-ne v0, v1, :continue_binding # If viewType is not 99, continue binding

    # If viewType is 99, just return
    return-void

    :continue_binding
    # Original binding logic starts here
    # Convert position to app index: appIndex = position - (position + 5) / 8
    add-int/lit8 v0, p2, 0x5      # v0 = position + 5
    div-int/lit8 v0, v0, 0x8      # v0 = (position + 5) / 8
    sub-int v0, p2, v0            # v0 = position - (position + 5) / 8 = appIndex

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    # getter for: Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->appList:
    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->access$000(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/b$b;

    .line 60
    # Get the original drawable
    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/b$b;->b:Landroid/graphics/drawable/Drawable;

    # Get cached icon size
    iget v1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->cachedIconSize:I

    # Convert drawable to circular bitmap
    invoke-static {v2, v1}, Lcom/ailife/ClockSkinCoco/IconHelper;->getCircularBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    move-result-object v2

    # Set circular bitmap to imageView
    iget-object v3, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    # Set layout params for icon size
    iget-object v2, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
    iget-object v3, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    # Set fixed width for the root RelativeLayout to prevent GridLayoutManager from shrinking it
    iget-object v2, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->b:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
    const/4 v3, -0x2  # height = wrap_content
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
    iget-object v3, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->b:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v1, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->b:Landroid/view/View;

    new-instance v1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->b:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    .registers 3

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->o(Landroid/view/ViewGroup;I)Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$C;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 53
    const/16 v0, 0x63 # Special view type for empty slot (99)
    if-ne p2, v0, :normal_item # If viewType is not 99, go to normal_item

    # Empty slot logic
    new-instance v0, Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    # Set layout params with width = 1px and height = match_parent
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x1  # width = 1px (minimal)
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    invoke-direct {v1, p0, v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;Landroid/view/View;)V
    check-cast v1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    return-object v1

    :normal_item
    # Original logic
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->this$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->A()Landroid/view/LayoutInflater;
    move-result-object v0
    const v1, 0x7f0d007b
    const/4 v2, 0x0
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1

    new-instance v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;-><init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;Landroid/view/View;)V
    check-cast v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
    return-object v0
.end method
