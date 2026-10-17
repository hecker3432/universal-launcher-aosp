.class public Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;
.super Landroidx/fragment/app/Fragment;
.source "WidgetContainerFragment.java"


# static fields
.field private static final REQUEST_CONFIGURE_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0xc

.field private static final REQUEST_PICK_APPWIDGET:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WidgetContainerFragment"


# instance fields
.field private adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

.field private pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private pendingWidgetId:I

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private widgetManager:Lcom/ailife/launcher/widget/WidgetManager;


# direct methods
.method public static synthetic $r8$lambda$AETytzn3AyWDsE_KO4r1W6efyvM(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onRemoveWidgetRequest(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2C9vQMIyQfj9VVPF-kubE8ubdA(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onAddWidgetRequest()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->loadWidgetViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->setupAddWidgetListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->forceWidgetUpdates()V

    return-void
.end method

.method private handleWidgetConfigured(Landroid/content/Intent;)V
    .registers 3

    .line 356
    iget p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p1, :cond_10

    .line 357
    iget p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, p1, v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onWidgetConfigured(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 359
    :cond_10
    return-void
.end method

.method private handleWidgetCreated(Landroid/content/Intent;)V
    .registers 4

    .line 362
    iget p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_34

    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz p1, :cond_34

    .line 364
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0}, Lcom/ailife/launcher/widget/WidgetManager;->needsConfiguration(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 365
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    iget v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, v1}, Lcom/ailife/launcher/widget/WidgetManager;->getConfigurationIntent(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/content/Intent;

    move-result-object p1

    .line 366
    if-eqz p1, :cond_25

    .line 367
    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c

    .line 369
    :cond_25
    iget p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, p1, v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onWidgetConfigured(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 371
    :goto_2c
    goto :goto_34

    .line 372
    :cond_2d
    iget p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, p1, v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onWidgetConfigured(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 375
    :cond_34
    :goto_34
    return-void
.end method

.method private handleWidgetPicked(Landroid/content/Intent;)V
    .registers 6

    .line 310
    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 311
    const-string v2, "WidgetContainerFragment"

    if-ne p1, v1, :cond_11

    .line 312
    const-string p1, "Invalid widget ID from picker"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget picked: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 319
    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 321
    if-nez v1, :cond_4c

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider info not found for widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_4c
    iput p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    .line 327
    iput-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 330
    iget-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v2, p1, v1}, Lcom/ailife/launcher/widget/WidgetManager;->bindWidget(ILandroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v2

    .line 332
    if-nez v2, :cond_6f

    .line 334
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string p1, "appWidgetProvider"

    iget-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 337
    const/16 p1, 0xc

    invoke-virtual {p0, v2, p1}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    return-void

    .line 342
    :cond_6f
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0, v1}, Lcom/ailife/launcher/widget/WidgetManager;->needsConfiguration(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 343
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0, p1, v1}, Lcom/ailife/launcher/widget/WidgetManager;->getConfigurationIntent(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_85

    .line 345
    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_88

    .line 347
    :cond_85
    invoke-direct {p0, p1, v1}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onWidgetConfigured(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 349
    :goto_88
    goto :goto_8c

    .line 351
    :cond_89
    invoke-direct {p0, p1, v1}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->onWidgetConfigured(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 353
    :goto_8c
    return-void
.end method

.method private forceWidgetUpdates()V
    .registers 9

    .line 176
    const-string v0, "WidgetContainerFragment"

    const-string v1, "Forcing widget updates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_7
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v2}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object v2

    .line 182
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 183
    invoke-virtual {v3}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v4

    .line 184
    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 186
    if-eqz v5, :cond_67

    .line 187
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const-string v7, "appWidgetIds"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v3, 0x0

    aput v4, v5, v3

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent update broadcast for widget "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_69

    .line 193
    :cond_67
    goto :goto_1b

    .line 197
    :cond_68
    goto :goto_6f

    .line 195
    :catch_69
    move-exception v1

    .line 196
    const-string v2, "Error forcing widget updates"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    :goto_6f
    return-void
.end method

.method private loadWidgetViews()V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 157
    iget-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getWidgetPageFragment(I)Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_5d

    .line 160
    :try_start_22
    iget-object v3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ailife/launcher/widget/WidgetManager;->createWidgetView(I)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_3a

    .line 162
    invoke-virtual {v2, v3}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    .line 164
    new-instance v3, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {v2, v3}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->setOnWidgetRemovalRequestListener(Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;)V

    goto :goto_3f

    .line 166
    :cond_3a
    const-string v3, "Widget not available"

    invoke-virtual {v2, v3}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->showError(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3f} :catch_40

    .line 170
    :goto_3f
    goto :goto_5d

    .line 168
    :catch_40
    move-exception v2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load widget view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WidgetContainerFragment"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_5d
    :goto_5d
    goto :goto_a

    .line 173
    :cond_5e
    return-void
.end method

.method private loadWidgets()V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->setWidgets(Ljava/util/List;Z)V

    .line 145
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetContainerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public static newInstance()Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;
    .registers 1

    .line 45
    new-instance v0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;

    invoke-direct {v0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;-><init>()V

    return-object v0
.end method

.method private onAddWidgetRequest()V
    .registers 5

    .line 198
    const-string v0, "Add widget requested"

    const-string v1, "WidgetContainerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_7
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetManager;->allocateWidgetId()I

    move-result v0

    .line 203
    iput v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    .line 206
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launched widget picker with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_37

    .line 214
    goto :goto_4b

    .line 211
    :catch_37
    move-exception v0

    .line 212
    const-string v2, "Failed to launch widget picker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to add widget"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :goto_4b
    return-void
.end method

.method private onRemoveWidgetRequest(I)V
    .registers 7

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove widget requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetContainerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    :try_start_19
    iget-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v2, p1}, Lcom/ailife/launcher/widget/WidgetManager;->removeWidget(I)Z

    move-result v2

    .line 225
    if-eqz v2, :cond_54

    .line 227
    iget-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->notifyWidgetRemoved(I)V

    .line 230
    iget-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 232
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Widget removed"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget removed successfully: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 235
    :cond_54
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Failed to remove widget"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_61} :catch_62

    .line 240
    :goto_61
    goto :goto_86

    .line 237
    :catch_62
    move-exception v2

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Error removing widget"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 241
    :goto_86
    return-void
.end method

.method private onWidgetConfigured(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 9

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widget configured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetContainerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1b
    iget-object v4, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v4, p1, p2}, Lcom/ailife/launcher/widget/WidgetManager;->addWidget(ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/ailife/launcher/widget/model/WidgetInfo;

    move-result-object p2

    .line 252
    if-eqz p2, :cond_64

    .line 254
    iget-object v4, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {v4, p2}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->notifyWidgetAdded(Lcom/ailife/launcher/widget/model/WidgetInfo;)V

    .line 257
    iget-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {p2, p1}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getWidgetPosition(I)I

    move-result p2

    .line 258
    if-eq p2, v3, :cond_36

    .line 259
    iget-object v4, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 263
    :cond_36
    iget-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {p2, v4}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 265
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object p2

    const-string v4, "Widget added"

    invoke-static {p2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget added successfully: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    goto :goto_71

    .line 268
    :cond_64
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object p2

    const-string v4, "Failed to add widget"

    invoke-static {p2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_71} :catch_78
    .catchall {:try_start_1b .. :try_end_71} :catchall_76

    .line 274
    :goto_71
    iput v3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    .line 275
    iput-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 276
    goto :goto_9d

    .line 274
    :catchall_76
    move-exception p1

    goto :goto_9e

    .line 270
    :catch_78
    move-exception p2

    .line 271
    :try_start_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to configure widget "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Error adding widget"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_9c
    .catchall {:try_start_79 .. :try_end_9c} :catchall_76

    goto :goto_71

    .line 277
    :goto_9d
    return-void

    .line 274
    :goto_9e
    iput v3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    .line 275
    iput-object v2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 276
    goto :goto_a4

    :goto_a3
    throw p1

    :goto_a4
    goto :goto_a3
.end method

.method private setupAddWidgetListener()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method


# virtual methods
.method public D0()V
    .registers 2

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    .line 126
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetManager;->stopListening()V

    .line 127
    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .registers 3

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    .line 51
    const-string p1, "WidgetContainerFragment"

    const-string v0, "WidgetContainerFragment onCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public d0(IILandroid/content/Intent;)V
    .registers 5

    .line 281
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->d0(IILandroid/content/Intent;)V

    .line 283
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1e

    .line 284
    const-string p1, "WidgetContainerFragment"

    const-string p2, "Activity result cancelled or failed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    if-eq p1, v0, :cond_1d

    .line 287
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    iget p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    invoke-virtual {p1, p2}, Lcom/ailife/launcher/widget/WidgetManager;->removeWidget(I)Z

    .line 288
    iput v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingWidgetId:I

    .line 289
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->pendingProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 291
    :cond_1d
    return-void

    .line 294
    :cond_1e
    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    .line 304
    :pswitch_22
    invoke-direct {p0, p3}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->handleWidgetCreated(Landroid/content/Intent;)V

    goto :goto_2e

    .line 300
    :pswitch_26
    invoke-direct {p0, p3}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->handleWidgetConfigured(Landroid/content/Intent;)V

    .line 301
    goto :goto_2e

    .line 296
    :pswitch_2a
    invoke-direct {p0, p3}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->handleWidgetPicked(Landroid/content/Intent;)V

    .line 297
    nop

    .line 307
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0xa
        :pswitch_2a
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method

.method public i0(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ailife/launcher/widget/WidgetManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    .line 62
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p1}, Lcom/ailife/launcher/widget/WidgetManager;->needsMigration()Z

    move-result p1

    const-string v0, "WidgetContainerFragment"

    if-eqz p1, :cond_22

    .line 63
    const-string p1, "Migrating widgets from legacy system"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p1}, Lcom/ailife/launcher/widget/WidgetManager;->migrateFromLegacySystem()V

    .line 68
    :cond_22
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p1}, Lcom/ailife/launcher/widget/WidgetManager;->cleanupInvalidWidgets()V

    .line 70
    const-string p1, "WidgetContainerFragment initialized in i0"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method synthetic lambda$loadWidgets$0$com-ailife-launcher-widget-ui-WidgetContainerFragment()V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->loadWidgetViews()V

    return-void
.end method

.method synthetic lambda$onRemoveWidgetRequest$2$com-ailife-launcher-widget-ui-WidgetContainerFragment()V
    .registers 1

    .line 230
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->loadWidgetViews()V

    return-void
.end method

.method synthetic lambda$onWidgetConfigured$3$com-ailife-launcher-widget-ui-WidgetContainerFragment()V
    .registers 1

    .line 263
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->loadWidgetViews()V

    return-void
.end method

.method synthetic lambda$setupAddWidgetListener$1$com-ailife-launcher-widget-ui-WidgetContainerFragment()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->getAddWidgetFragment()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_19

    .line 184
    :try_start_8
    new-instance v1, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {v0, v1}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->setOnAddWidgetRequestListener(Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    .line 187
    goto :goto_19

    .line 185
    :catch_11
    move-exception v0

    .line 186
    const-string v1, "WidgetContainerFragment"

    const-string v2, "Failed to set add widget listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_19
    :goto_19
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 76
    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    if-nez p3, :cond_28

    .line 77
    new-instance p3, Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/ailife/launcher/widget/WidgetManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    .line 78
    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p3}, Lcom/ailife/launcher/widget/WidgetManager;->needsMigration()Z

    move-result p3

    if-eqz p3, :cond_23

    .line 79
    const-string p3, "WidgetContainerFragment"

    const-string v0, "Migrating widgets from legacy system"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p3}, Lcom/ailife/launcher/widget/WidgetManager;->migrateFromLegacySystem()V

    .line 82
    :cond_23
    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p3}, Lcom/ailife/launcher/widget/WidgetManager;->cleanupInvalidWidgets()V

    .line 86
    :cond_28
    const p3, 0x7f0d0072

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    const p2, 0x7f0a0214

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 92
    new-instance p2, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->F()Landroidx/fragment/app/m;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;-><init>(Landroidx/fragment/app/m;)V

    iput-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    .line 95
    iget-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {p2}, Lcom/ailife/launcher/widget/WidgetManager;->getAllWidgets()Ljava/util/List;

    move-result-object p2

    .line 96
    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {p3, p2, v0}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->setWidgets(Ljava/util/List;Z)V

    .line 99
    iget-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 102
    iget-object p2, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->adapter:Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;

    invoke-virtual {p2}, Lcom/ailife/launcher/widget/ui/WidgetPagerAdapter;->i()V

    .line 104
    return-object p1
.end method

.method public n0()V
    .registers 2

    .line 131
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    .line 132
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetManager;->destroy()V

    .line 135
    :cond_c
    return-void
.end method

.method public y0()V
    .registers 3

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    .line 112
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;

    invoke-direct {v1, p0}, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment$1;-><init>(Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetContainerFragment;->widgetManager:Lcom/ailife/launcher/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetManager;->startListening()V

    .line 121
    return-void
.end method
