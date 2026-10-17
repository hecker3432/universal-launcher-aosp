.class public Lcom/ricktop/ClockSkinCoco/L;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/L;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    return-void
.end method

.method protected b(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/ricktop/ClockSkinCoco/M;
    .locals 0

    const-string p1, "AppWidgetHost"

    const-string p2, "WidgetView:onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ricktop/ClockSkinCoco/M;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/L;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/ricktop/ClockSkinCoco/M;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ricktop/ClockSkinCoco/L;->b(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/ricktop/ClockSkinCoco/M;

    move-result-object p1

    return-object p1
.end method

.method public startListening()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    return-void
.end method
