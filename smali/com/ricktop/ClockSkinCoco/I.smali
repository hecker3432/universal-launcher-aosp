.class public Lcom/ricktop/ClockSkinCoco/I;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/I$a;
    }
.end annotation


# instance fields
.field private Y:Ljava/util/ArrayList;

.field private Z:Landroidx/viewpager/widget/ViewPager;

.field private a0:Landroid/content/Context;

.field private final b0:Ljava/lang/String;

.field private c0:I

.field private d0:Landroid/appwidget/AppWidgetProviderInfo;

.field private e0:Lcom/ricktop/ClockSkinCoco/J;

.field private f0:Z

.field private g0:Lcom/ricktop/ClockSkinCoco/L;

.field private h0:Landroid/appwidget/AppWidgetManager;

.field private i0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "watchapp_widget_"

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->b0:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->e0:Lcom/ricktop/ClockSkinCoco/J;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/I;->f0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/I;->i0:Z

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/I;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    return-object p0
.end method

.method private D1()V
    .locals 3

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/I;->c0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->d0:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ricktop/ClockSkinCoco/I;->E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public D0()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const-string v0, "WidgetFragment"

    const-string v1, "=== D0 (onResume) - Starting widget restore ==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    # NEW: Load widgets on resume to ensure they appear after app restart
    # But only restore ONCE to avoid permission dialog loops
    :try_start_restore
    # Check if we already restored widgets
    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/I;->i0:Z

    if-eqz v1, :not_restored_yet

    const-string v0, "WidgetFragment"

    const-string v1, "D0: Widgets already restored, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_restore

    :not_restored_yet
    # Mark as restored to prevent future attempts
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/I;->i0:Z

    # Check if widgets list is empty (means widgets weren't loaded)
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    if-nez v1, :check_size

    const-string v0, "WidgetFragment"

    const-string v1, "D0: Widget list is NULL, skipping restore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_restore

    :check_size
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "WidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D0: Widget list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Always try to restore widgets from WidgetManager
    # The old check (size <= 1) was wrong because list always has UI fragments
    const-string v1, "WidgetFragment"

    const-string v2, "D0: Attempting to restore widgets from WidgetManager storage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get WidgetManager
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->J()Lcom/ailife/launcher/widget/WidgetManager;

    move-result-object v1

    if-nez v1, :has_manager_d0

    const-string v0, "WidgetFragment"

    const-string v1, "D0: WidgetManager is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_restore

    :has_manager_d0
    # Get all widgets from storage
    invoke-virtual {v1}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :restore_loop_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :restore_done_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/launcher/widget/model/WidgetInfo;

    # Get widget ID
    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v3

    const-string v4, "WidgetFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "D0: Restoring widget ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get provider info
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/I;->h0:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    # Skip if provider not found
    if-nez v4, :restore_widget_d0

    const-string v4, "WidgetFragment"

    const-string v5, "D0: Provider not found, skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :restore_loop_d0

    :restore_widget_d0
    # Call E1 to create widget view
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/ricktop/ClockSkinCoco/I;->E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :restore_loop_d0

    :restore_done_d0
    const-string v1, "WidgetFragment"

    const-string v2, "D0: Widget restoration completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :skip_restore
    :try_end_restore
    .catch Ljava/lang/Exception; {:try_start_restore .. :try_end_restore} :catch_restore

    goto :after_restore

    :catch_restore
    move-exception v0

    const-string v1, "WidgetFragment"

    const-string v2, "D0: Failed to restore widgets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :after_restore
    return-void
.end method

.method public E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V
    .locals 4

    # BUGFIX: Save the actual appWidgetId before it gets overwritten
    move v3, p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->d0:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/I;->c0:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->F()Lcom/ricktop/ClockSkinCoco/L;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    :cond_0
    # CRITICAL: Skip binding for widget restoration (p3 = false)
    # User-created widgets are already bound, attempting to rebind shows permission dialog
    if-nez p3, :need_binding

    const-string v0, "WidgetFragment"

    const-string v1, "E1: Restoring existing widget, skipping bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Skip binding, assume widget is already bound (v0 = true = success)
    const/4 v0, 0x1

    goto :goto_0

    :need_binding
    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->h0:Landroid/appwidget/AppWidgetManager;

    if-eqz v0, :cond_1

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_4

    :cond_2
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==>> widgetInfo N."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    invoke-virtual {p3, v0, p1, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    check-cast p3, Lcom/ricktop/ClockSkinCoco/M;

    invoke-virtual {p3, p1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    # NEW: Save widget to new storage system (only if not already saved)
    :try_start_save
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->J()Lcom/ailife/launcher/widget/WidgetManager;

    move-result-object v0

    if-nez v0, :has_widget_manager

    const-string v0, "WidgetFragment"

    const-string v1, "E1: WidgetManager is null, cannot save"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :after_save

    :has_widget_manager
    # Check if widget already exists in storage
    invoke-virtual {v0, v3}, Lcom/ailife/launcher/widget/WidgetManager;->getWidget(I)Lcom/ailife/launcher/widget/model/WidgetInfo;

    move-result-object v1

    # Only save if widget doesn't already exist (v1 == null means not found)
    if-nez v1, :skip_save

    # Widget doesn't exist in storage, save it now
    const-string v1, "WidgetFragment"

    const-string v2, "E1: Saving new widget to storage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, p2}, Lcom/ailife/launcher/widget/WidgetManager;->addWidget(ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/ailife/launcher/widget/model/WidgetInfo;

    goto :after_save

    :skip_save
    const-string v1, "WidgetFragment"

    const-string v2, "E1: Widget already in storage, skipping save"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_save
    .catch Ljava/lang/Exception; {:try_start_save .. :try_end_save} :catch_save

    goto :after_save

    :catch_save
    move-exception v0

    const-string v1, "WidgetFragment"

    const-string v2, "Failed to save widget to new storage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :after_save

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    new-instance v1, Lcom/ricktop/ClockSkinCoco/J;

    invoke-direct {v1}, Lcom/ricktop/ClockSkinCoco/J;-><init>()V

    invoke-virtual {v1, p3}, Lcom/ricktop/ClockSkinCoco/J;->K1(Lcom/ricktop/ClockSkinCoco/M;)V

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/viewpager/widget/a;->i()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p3

    # DISABLED: Old storage save in E1 (lines 267-311)
    # Widget now saved by WidgetManager.addWidget() hook below

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    goto :goto_2

    :cond_4
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/I;->c0:I

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/I;->d0:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "appWidgetProvider"

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xb

    :try_start_1
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    return-void
.end method

.method public F1(Lcom/ricktop/ClockSkinCoco/J;)V
    .locals 8

    const-string v0, "WidgetFragment"

    const-string v1, "=== F1 called: Widget removal requested ==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # DISABLED: Old storage operations (lines 361-375)
    # Using new WidgetManager storage instead

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WidgetFragment"

    const-string v4, "F1: Found matching fragment in list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # NEW: Remove widget from WidgetManager storage
    :try_start_remove_widget
    # Get the widget ID from the J fragment using accessor method
    move-object v3, p1

    check-cast v3, Lcom/ricktop/ClockSkinCoco/J;

    const-string v4, "WidgetFragment"

    const-string v5, "F1: Cast to J fragment successful"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Call C1 static accessor to get a0 field (widget ID)
    invoke-static {v3}, Lcom/ricktop/ClockSkinCoco/J;->C1(Lcom/ricktop/ClockSkinCoco/J;)I

    move-result v4

    const-string v5, "WidgetFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "F1: Got widget ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Check if widget ID is valid (not -1 or 0)
    if-lez v4, :invalid_widget_id

    const-string v5, "WidgetFragment"

    const-string v6, "F1: Widget ID is valid, proceeding with removal"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :proceed_removal

    :invalid_widget_id
    const-string v5, "WidgetFragment"

    const-string v6, "F1: Widget ID is 0 or invalid, trying to get from widget view"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    # Try to get widget ID from the widget view instead
    invoke-static {v3}, Lcom/ricktop/ClockSkinCoco/J;->G1(Lcom/ricktop/ClockSkinCoco/J;)Lcom/ricktop/ClockSkinCoco/M;

    move-result-object v5

    if-nez v5, :has_view

    const-string v5, "WidgetFragment"

    const-string v6, "F1: Widget view is also null, cannot delete from storage"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_remove_storage

    :has_view
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v4

    const-string v5, "WidgetFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "F1: Got widget ID from view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v4, :proceed_removal

    const-string v5, "WidgetFragment"

    const-string v6, "F1: Widget ID from view is also invalid, skipping"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_remove_storage

    :proceed_removal

    const-string v5, "WidgetFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "F1: Removing widget ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from storage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get WidgetManager and remove
    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v5, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v5}, Lcom/ricktop/ClockSkinCoco/MainActivity;->J()Lcom/ailife/launcher/widget/WidgetManager;

    move-result-object v5

    if-eqz v5, :skip_remove_storage

    invoke-virtual {v5, v4}, Lcom/ailife/launcher/widget/WidgetManager;->removeWidget(I)Z

    :skip_remove_storage
    :try_end_remove_widget
    .catch Ljava/lang/Exception; {:try_start_remove_widget .. :try_end_remove_widget} :catch_remove_widget

    goto :after_remove_widget

    :catch_remove_widget
    move-exception v3

    const-string v4, "WidgetFragment"

    const-string v5, "F1: Failed to remove widget from storage"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :after_remove_widget

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->i()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "google_Widget"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/I;->f0:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ricktop/ClockSkinCoco/k;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/k;-><init>()V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/ricktop/ClockSkinCoco/I$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/m;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ricktop/ClockSkinCoco/I$a;-><init>(Lcom/ricktop/ClockSkinCoco/I;Landroidx/fragment/app/m;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/I;->e0:Lcom/ricktop/ClockSkinCoco/J;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->F()Lcom/ricktop/ClockSkinCoco/L;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->h0:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    # DISABLED: Widget restore in c0 (onCreate)
    # Widgets must be restored in y0 (onStart) AFTER ViewPager is initialized in m0 (onCreateView)
    # Otherwise notifyDataSetChanged() has no effect because adapter isn't attached yet
    const-string v1, "WidgetFragment"

    const-string v2, "c0: Skipping widget restore (will be done in y0 after view is created)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Jump over the disabled widget restore code
    goto :skip_disabled_restore

    # OLD CODE - Keep labels but make unreachable:
    :try_start_load
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->J()Lcom/ailife/launcher/widget/WidgetManager;

    move-result-object v1

    if-nez v1, :has_manager

    const-string v1, "WidgetFragment"

    const-string v2, "=== RESTORE: WidgetManager is NULL ==="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :cond_3

    :has_manager
    const-string v2, "WidgetFragment"

    const-string v3, "=== RESTORE: WidgetManager found ==="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :restore_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :restore_done

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/launcher/widget/model/WidgetInfo;

    # Get widget ID from WidgetInfo
    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v3

    const-string v4, "WidgetFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== RESTORE: Processing widget ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get provider info from AppWidgetManager
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/I;->h0:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    # CRITICAL: Save provider info immediately before ANY other operations
    move-object v8, v4

    # Skip if provider not found (app uninstalled)
    if-nez v8, :has_provider

    const-string v5, "WidgetFragment"

    const-string v6, "=== RESTORE: Provider NULL, skipping ==="

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :restore_loop

    :has_provider
    # Provider found, restore this widget
    const-string v5, "WidgetFragment"

    const-string v6, "=== RESTORE: Calling E1 to create widget view ==="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Call E1 to create widget view and add to list
    # E1(widgetId, providerInfo, showConfig)
    # Use v8 which has the saved provider info
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v8, v5}, Lcom/ricktop/ClockSkinCoco/I;->E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :restore_loop

    :restore_done
    :try_end_load
    .catch Ljava/lang/Exception; {:try_start_load .. :try_end_load} :catch_load

    goto :cond_3

    :catch_load
    move-exception v1

    const-string v2, "WidgetFragment"

    const-string v3, "Failed to load widgets from new storage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :cond_3

    :skip_disabled_restore
    # Continue after skipping disabled restore code

    # DISABLED: Old storage load loop (lines 631-719 - SharedPreferences based)
    # Skip directly to end of restore logic
    goto :cond_3

    # OLD CODE BELOW - Keep for reference but make unreachable

    # Initialize v1 before it's used in the old storage loop
    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "watchapp_widget_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/ricktop/ClockSkinCoco/K;->a(Ljava/lang/String;)Lcom/ricktop/ClockSkinCoco/K;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/ricktop/ClockSkinCoco/K;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/ricktop/ClockSkinCoco/K;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    invoke-virtual {p0, v3, v5, v1}, Lcom/ricktop/ClockSkinCoco/I;->E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->i()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public d0(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0xb

    if-ne v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/I;->D1()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    # NEW: Remove widget from new storage system
    :try_start_remove
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->J()Lcom/ailife/launcher/widget/WidgetManager;

    move-result-object v0

    if-eqz v0, :skip_remove

    invoke-virtual {v0, v1}, Lcom/ailife/launcher/widget/WidgetManager;->removeWidget(I)Z

    :skip_remove
    :try_end_remove
    .catch Ljava/lang/Exception; {:try_start_remove .. :try_end_remove} :catch_remove

    goto :after_remove

    :catch_remove
    move-exception v0

    const-string v2, "WidgetFragment"

    const-string v3, "Failed to remove widget from new storage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :after_remove

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->d0(IILandroid/content/Intent;)V

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->h0:Landroid/appwidget/AppWidgetManager;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->F()Lcom/ricktop/ClockSkinCoco/L;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->g0:Lcom/ricktop/ClockSkinCoco/L;

    :cond_0
    new-instance p1, Lcom/ricktop/ClockSkinCoco/J;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/J;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/I;->e0:Lcom/ricktop/ClockSkinCoco/J;

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "AppWidgetHost"

    const-string v0, "WidgetFragment:onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0d0072

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0214

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/I;->Z:Landroidx/viewpager/widget/ViewPager;

    return-object p1
.end method

.method public y0()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    const-string v0, "WidgetFragment"

    const-string v1, "=== y0 (onStart) CALLED ==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    # NEW: Load widgets on start to ensure they appear after app restart
    :try_start_restore
    # Check if widgets list is empty (means widgets weren't loaded)
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->Y:Ljava/util/ArrayList;

    if-nez v1, :check_size

    const-string v1, "WidgetFragment"

    const-string v2, "y0: Widget list is NULL, skipping restore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_restore

    :check_size
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "WidgetFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "y0: Widget list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # If we only have 1 item (the add widget fragment), restore widgets
    const/4 v1, 0x1

    if-gt v2, v1, :skip_restore

    const-string v1, "WidgetFragment"

    const-string v2, "y0: Restoring widgets from storage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get WidgetManager
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/I;->a0:Landroid/content/Context;

    check-cast v1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->J()Lcom/ailife/launcher/widget/WidgetManager;

    move-result-object v1

    if-nez v1, :has_manager_y0

    const-string v1, "WidgetFragment"

    const-string v2, "y0: WidgetManager is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :skip_restore

    :has_manager_y0
    # Get all widgets from storage
    invoke-virtual {v1}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :restore_loop_y0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :restore_done_y0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/launcher/widget/model/WidgetInfo;

    # Get widget ID
    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v3

    const-string v4, "WidgetFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "y0: Restoring widget ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get provider info
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/I;->h0:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    # Skip if provider not found
    if-nez v4, :restore_widget_y0

    const-string v4, "WidgetFragment"

    const-string v5, "y0: Provider not found, skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :restore_loop_y0

    :restore_widget_y0
    # Call E1 to create widget view
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/ricktop/ClockSkinCoco/I;->E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V

    goto :restore_loop_y0

    :restore_done_y0
    const-string v1, "WidgetFragment"

    const-string v2, "y0: Widget restoration completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :skip_restore
    :try_end_restore
    .catch Ljava/lang/Exception; {:try_start_restore .. :try_end_restore} :catch_restore

    goto :after_restore

    :catch_restore
    move-exception v1

    const-string v2, "WidgetFragment"

    const-string v3, "y0: Failed to restore widgets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :after_restore
    return-void
.end method
