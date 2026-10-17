.class public Lcom/ricktop/ClockSkinCoco/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/e$d;
    }
.end annotation


# static fields
.field private static f0:Landroid/os/Parcelable;


# instance fields
.field private Y:Lcom/ricktop/ClockSkinCoco/CircleScroller;

.field private Z:Lcom/ricktop/ClockSkinCoco/e$d;

.field private a0:Landroid/widget/GridView;

.field private b0:Ljava/util/ArrayList;

.field private final c0:Landroid/widget/AdapterView$OnItemClickListener;

.field private final d0:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final e0:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->b0:Ljava/util/ArrayList;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/e$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/e$a;-><init>(Lcom/ricktop/ClockSkinCoco/e;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->c0:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/e$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/e$b;-><init>(Lcom/ricktop/ClockSkinCoco/e;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->d0:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/e$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/e$c;-><init>(Lcom/ricktop/ClockSkinCoco/e;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->e0:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/e;->b0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/e;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/e;)Lcom/ricktop/ClockSkinCoco/CircleScroller;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/e;->Y:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    return-object p0
.end method

.method private F1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/b;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->b0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    sget-object v0, Lcom/ricktop/ClockSkinCoco/e;->f0:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method

.method public G1()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/e;->F1()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->Z:Lcom/ricktop/ClockSkinCoco/e$d;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/e$d;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    # Check if we need to scroll to a specific position
    sget v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I
    const/4 v1, -0x1
    if-eq v0, v1, :cond_0

    # Scroll to the target position
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    # Reset scroll position to -1
    const/4 v1, -0x1
    sput v1, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    :cond_0
    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/e;->G1()V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0d0027

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/WatchApp;->f()I

    move-result p2

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ricktop/ClockSkinCoco/WatchApp;->g()I

    move-result p3

    const v0, 0x7f0a0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    # Read grid column count from preferences and set it dynamically
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sp_grid_columns"

    const-string v3, "3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    const v0, 0x7f0a00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/CircleScroller;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->Y:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    invoke-virtual {v0, p2, p3}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c(II)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/e$d;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-direct {p2, p0, p3}, Lcom/ricktop/ClockSkinCoco/e$d;-><init>(Lcom/ricktop/ClockSkinCoco/e;Landroid/widget/GridView;)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/e;->Z:Lcom/ricktop/ClockSkinCoco/e$d;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-virtual {p3, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e;->c0:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e;->d0:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e;->e0:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-object p1
.end method

.method public n0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    return-void
.end method

.method public y0()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e;->a0:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/e;->f0:Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
