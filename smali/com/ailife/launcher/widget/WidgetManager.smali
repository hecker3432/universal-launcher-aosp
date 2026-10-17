.class public Lcom/ailife/launcher/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetManager"


# instance fields
.field private final appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final context:Landroid/content/Context;

.field private final storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

.field private final widgetHost:Lcom/ailife/launcher/widget/WidgetHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ailife/launcher/widget/WidgetManager;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/ailife/launcher/widget/WidgetHost;

    invoke-direct {v0, p1}, Lcom/ailife/launcher/widget/WidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    .line 34
    new-instance v0, Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-direct {v0, p1}, Lcom/ailife/launcher/widget/storage/WidgetStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    .line 35
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 37
    const-string p1, "WidgetManager"

    const-string v0, "WidgetManager initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ailife/launcher/widget/WidgetHost;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ailife/launcher/widget/WidgetManager;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    .line 47
    new-instance p2, Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-direct {p2, p1}, Lcom/ailife/launcher/widget/storage/WidgetStorage;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    .line 48
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 50
    const-string p1, "WidgetManager"

    const-string p2, "WidgetManager initialized with existing WidgetHost"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method private findProvider(Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 5

    .line 348
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 350
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 351
    return-object v1

    .line 353
    :cond_1f
    goto :goto_a

    .line 354
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addWidget(ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/ailife/launcher/widget/model/WidgetInfo;
    .registers 8

    .line 97
    const/4 v0, 0x0

    const-string v1, "WidgetManager"

    if-nez p2, :cond_b

    .line 98
    const-string p1, "Cannot add widget - provider info is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v0

    .line 104
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v2}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->loadAllWidgets()Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    new-instance v3, Lcom/ailife/launcher/widget/model/WidgetInfo;

    iget-object v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 110
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, v4, p2, v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 116
    iget-object p2, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {p2, v3}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->saveWidget(Lcom/ailife/launcher/widget/model/WidgetInfo;)V

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added widget: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_41} :catch_42

    .line 119
    return-object v3

    .line 120
    :catch_42
    move-exception p2

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    return-object v0
.end method

.method public allocateWidgetId()I
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/WidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated widget ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v0
.end method

.method public bindWidget(ILandroid/appwidget/AppWidgetProviderInfo;)Z
    .registers 8

    .line 69
    const/4 v0, 0x0

    const-string v1, "WidgetManager"

    if-nez p2, :cond_b

    .line 70
    const-string p1, "Cannot bind widget - provider info is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 75
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v2

    .line 80
    if-eqz v2, :cond_38

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully bound widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 83
    :cond_38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need user permission to bind widget "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4e} :catch_4f

    .line 86
    :goto_4e
    return v2

    .line 87
    :catch_4f
    move-exception p2

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    return v0
.end method

.method public cleanupInvalidWidgets()V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->loadAllWidgets()Ljava/util/List;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 367
    iget-object v3, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 368
    if-eqz v3, :cond_33

    .line 369
    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 371
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing invalid widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WidgetManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v3, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v2}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/ailife/launcher/widget/WidgetHost;->deleteWidget(I)V

    .line 374
    :goto_58
    goto :goto_f

    .line 376
    :cond_59
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0, v1}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->cleanupInvalidWidgets(Ljava/util/Set;)V

    .line 377
    return-void
.end method

.method public createWidgetView(I)Landroid/appwidget/AppWidgetHostView;
    .registers 7

    .line 238
    const-string v0, "WidgetManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 239
    if-nez v2, :cond_22

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create view - widget provider not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v1

    .line 244
    :cond_22
    iget-object v3, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    iget-object v4, p0, Lcom/ailife/launcher/widget/WidgetManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v2}, Lcom/ailife/launcher/widget/WidgetHost;->createWidgetView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_42

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created widget view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    .line 248
    :cond_42
    return-object v2

    .line 249
    :catch_43
    move-exception v2

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create widget view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    return-object v1
.end method

.method public debugDump()V
    .registers 3

    .line 383
    const-string v0, "=== WidgetManager Debug Dump ==="

    const-string v1, "WidgetManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->debugDump()V

    .line 385
    const-string v0, "================================"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 210
    const-string v0, "WidgetManager"

    :try_start_2
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/WidgetManager;->stopListening()V

    .line 211
    const-string v1, "Widget manager destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 214
    goto :goto_11

    .line 212
    :catch_b
    move-exception v1

    .line 213
    const-string v2, "Error destroying widget manager"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :goto_11
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ailife/launcher/widget/model/WidgetInfo;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->loadAllWidgets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationIntent(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/content/Intent;
    .registers 5

    .line 166
    if-eqz p2, :cond_19

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    goto :goto_19

    .line 170
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    const-string p2, "appWidgetId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    return-object v0

    .line 167
    :cond_19
    :goto_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidget(I)Lcom/ailife/launcher/widget/model/WidgetInfo;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0, p1}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->loadWidget(I)Lcom/ailife/launcher/widget/model/WidgetInfo;

    move-result-object p1

    return-object p1
.end method

.method public migrateFromLegacySystem()V
    .registers 12

    .line 268
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->isLegacyFormat()Z

    move-result v0

    const-string v1, "WidgetManager"

    if-nez v0, :cond_10

    .line 269
    const-string v0, "No migration needed - already on new system"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 273
    :cond_10
    const-string v0, "Starting widget migration from legacy system (v1 to v2)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_15
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->loadLegacyConfigs()Ljava/util/List;

    move-result-object v0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " legacy widgets to migrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    nop

    .line 280
    nop

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4f} :catch_133

    .line 285
    :try_start_4f
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->info:Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 286
    invoke-virtual {v6}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->info:Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 287
    invoke-virtual {v7}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v5}, Lcom/ailife/launcher/widget/WidgetManager;->findProvider(Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 291
    if-nez v6, :cond_85

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widget provider not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (may have been uninstalled)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    add-int/lit8 v3, v3, 0x1

    .line 294
    goto :goto_43

    .line 298
    :cond_85
    iget-object v7, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v7}, Lcom/ailife/launcher/widget/WidgetHost;->allocateAppWidgetId()I

    move-result v7

    .line 299
    iget-object v8, p0, Lcom/ailife/launcher/widget/WidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v7, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v6

    .line 304
    if-nez v6, :cond_b3

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to bind widget: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v5, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v5, v7}, Lcom/ailife/launcher/widget/WidgetHost;->deleteWidget(I)V

    .line 307
    add-int/lit8 v3, v3, 0x1

    .line 308
    goto :goto_43

    .line 312
    :cond_b3
    new-instance v6, Lcom/ailife/launcher/widget/model/WidgetInfo;

    iget-object v8, v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->info:Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 314
    invoke-virtual {v8}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->info:Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 315
    invoke-virtual {v9}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget v10, v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->position:I

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/ailife/launcher/widget/model/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 320
    iget-object v8, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v8, v6}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->saveWidget(Lcom/ailife/launcher/widget/model/WidgetInfo;)V

    .line 321
    add-int/lit8 v2, v2, 0x1

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Migrated widget: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with new ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_ef} :catch_f0

    .line 328
    goto :goto_10b

    .line 325
    :catch_f0
    move-exception v5

    .line 326
    :try_start_f1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to migrate widget at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, v4, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->position:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    add-int/lit8 v3, v3, 0x1

    .line 329
    :goto_10b
    goto/16 :goto_43

    .line 332
    :cond_10d
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->markMigrated()V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget migration completed - Success: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_132} :catch_133

    .line 341
    goto :goto_139

    .line 339
    :catch_133
    move-exception v0

    .line 340
    const-string v2, "Widget migration failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    :goto_139
    return-void
.end method

.method public needsConfiguration(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .registers 2

    .line 159
    if-eqz p1, :cond_8

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public needsMigration()Z
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v0}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->isLegacyFormat()Z

    move-result v0

    return v0
.end method

.method public removeWidget(I)Z
    .registers 8

    .line 132
    const-string v0, "WidgetManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v2, p1}, Lcom/ailife/launcher/widget/WidgetHost;->deleteWidget(I)V

    .line 135
    iget-object v2, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v2, p1}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->removeWidget(I)V

    .line 138
    iget-object v2, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v2}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->loadAllWidgets()Ljava/util/List;

    move-result-object v2

    .line 139
    const/4 v3, 0x0

    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 140
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 141
    invoke-virtual {v4}, Lcom/ailife/launcher/widget/model/WidgetInfo;->getPosition()I

    move-result v5

    if-eq v5, v3, :cond_2e

    .line 142
    invoke-virtual {v4, v3}, Lcom/ailife/launcher/widget/model/WidgetInfo;->setPosition(I)V

    .line 143
    iget-object v5, p0, Lcom/ailife/launcher/widget/WidgetManager;->storage:Lcom/ailife/launcher/widget/storage/WidgetStorage;

    invoke-virtual {v5, v4}, Lcom/ailife/launcher/widget/storage/WidgetStorage;->saveWidget(Lcom/ailife/launcher/widget/model/WidgetInfo;)V

    .line 139
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 147
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_49

    .line 148
    const/4 p1, 0x1

    return p1

    .line 149
    :catch_49
    move-exception v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return v1
.end method

.method public startListening()V
    .registers 4

    .line 184
    const-string v0, "WidgetManager"

    :try_start_2
    iget-object v1, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/WidgetHost;->startListening()V

    .line 185
    const-string v1, "Started listening for widget updates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 188
    goto :goto_13

    .line 186
    :catch_d
    move-exception v1

    .line 187
    const-string v2, "Error starting widget listening"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :goto_13
    return-void
.end method

.method public forceWidgetUpdates()V
    .registers 1

    .line 193
    const-string v0, "WidgetManager"

    const-string v0, "Widget update skipped - providers control their own schedule"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public stopListening()V
    .registers 4

    .line 197
    const-string v0, "WidgetManager"

    :try_start_2
    iget-object v1, p0, Lcom/ailife/launcher/widget/WidgetManager;->widgetHost:Lcom/ailife/launcher/widget/WidgetHost;

    invoke-virtual {v1}, Lcom/ailife/launcher/widget/WidgetHost;->stopListening()V

    .line 198
    const-string v1, "Stopped listening for widget updates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 201
    goto :goto_13

    .line 199
    :catch_d
    move-exception v1

    .line 200
    const-string v2, "Error stopping widget listening"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_13
    return-void
.end method
