.class public Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;
.super Ljava/lang/Object;
.source "AppMoveDownClickListener.java"

.implements Landroid/view/View$OnClickListener;

# instance fields
.field private context:Landroid/content/Context;
.field private app:Lcom/ricktop/ClockSkinCoco/b$b;

# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;->app:Lcom/ricktop/ClockSkinCoco/b$b;
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    # Get context
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;->context:Landroid/content/Context;

    # Get app info from dialog (used for identification only)
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;->app:Lcom/ricktop/ClockSkinCoco/b$b;
    iget-object v10, v1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;  # package name
    iget-object v11, v1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;  # activity name

    # Get the current app list
    sget-object v3, Lcom/ailife/ClockSkinCoco/AppOrderManager;->currentAppList:Ljava/util/ArrayList;
    if-eqz v3, :skip_refresh

    # Find the TARGET app in currentAppList by package/class name
    const/4 v4, 0x0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/4 v12, 0x0  # v12 will hold the target app from list

    :find_target_loop
    if-ge v4, v5, :target_not_found
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lcom/ricktop/ClockSkinCoco/b$b;

    # Check if this is our target app
    iget-object v8, v7, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :next_target

    iget-object v8, v7, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :next_target

    # Found target app in list
    move-object v12, v7
    goto :target_found

    :next_target
    add-int/lit8 v4, v4, 0x1
    goto :find_target_loop

    :target_not_found
    goto :skip_refresh

    :target_found
    # Now v12 is the target app from the current list
    # Get its current position
    iget v2, v12, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Check if already at bottom
    add-int/lit8 v6, v5, -0x1
    if-ge v2, v6, :skip_refresh

    # Find the app at position v2+1 and swap
    const/4 v4, 0x0
    add-int/lit8 v6, v2, 0x1

    :find_swap_loop
    if-ge v4, v5, :not_found
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Lcom/ricktop/ClockSkinCoco/b$b;
    iget v8, v7, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Check if this app is at position v6 (one below target)
    if-ne v8, v6, :next_swap_iter

    # Found! Swap positions (using v12 from the list, not v1 from dialog)
    iput v6, v12, Lcom/ricktop/ClockSkinCoco/b$b;->h:I
    add-int/lit8 v9, v6, -0x1
    iput v9, v7, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Also update dialog's reference to stay in sync
    iput v6, v1, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Set scroll position to new position
    sput v6, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    # Save to SharedPreferences
    new-instance v4, Lcom/ailife/ClockSkinCoco/AppOrderManager;
    invoke-direct {v4, v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;-><init>(Landroid/content/Context;)V
    invoke-virtual {v4, v3}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->saveOrderFromList(Ljava/util/ArrayList;)V

    goto :do_refresh

    :next_swap_iter
    add-int/lit8 v4, v4, 0x1
    goto :find_swap_loop

    :not_found
    goto :skip_refresh

    :do_refresh
    # Refresh app list
    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;
    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;
    move-result-object v5
    if-eqz v5, :skip_refresh
    invoke-virtual {v5}, Lcom/ricktop/ClockSkinCoco/o;->N1()V
    :skip_refresh

    return-void
.end method

