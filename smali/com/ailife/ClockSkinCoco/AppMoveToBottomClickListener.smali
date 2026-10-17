.class public Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;
.super Ljava/lang/Object;
.source "AppMoveToBottomClickListener.java"

.implements Landroid/view/View$OnClickListener;

# instance fields
.field private context:Landroid/content/Context;
.field private app:Lcom/ricktop/ClockSkinCoco/b$b;

# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;->app:Lcom/ricktop/ClockSkinCoco/b$b;
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    # Get context
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;->context:Landroid/content/Context;

    # Get app info
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;->app:Lcom/ricktop/ClockSkinCoco/b$b;

    # Create AppOrderManager and move to bottom
    new-instance v2, Lcom/ailife/ClockSkinCoco/AppOrderManager;
    invoke-direct {v2, v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;-><init>(Landroid/content/Context;)V
    invoke-virtual {v2, v1}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->moveToBottom(Lcom/ricktop/ClockSkinCoco/b$b;)V

    # Refresh app list
    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;
    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;
    move-result-object v3
    if-eqz v3, :skip_refresh
    invoke-virtual {v3}, Lcom/ricktop/ClockSkinCoco/o;->N1()V
    :skip_refresh

    return-void
.end method

