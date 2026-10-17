.class public Lcom/ricktop/ClockSkinCoco/J;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private Y:Landroid/appwidget/AppWidgetManager;

.field private Z:Lcom/ricktop/ClockSkinCoco/L;

.field private a0:I

.field private b0:Lcom/ricktop/ClockSkinCoco/M;

.field private final c0:Lcom/ricktop/ClockSkinCoco/J;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/J;->b0:Lcom/ricktop/ClockSkinCoco/M;

    iput-object p0, p0, Lcom/ricktop/ClockSkinCoco/J;->c0:Lcom/ricktop/ClockSkinCoco/J;

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/J;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    return p0
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/J;)Lcom/ricktop/ClockSkinCoco/L;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/J;->Z:Lcom/ricktop/ClockSkinCoco/L;

    return-object p0
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/J;)Lcom/ricktop/ClockSkinCoco/J;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/J;->c0:Lcom/ricktop/ClockSkinCoco/J;

    return-object p0
.end method

.method static synthetic G1(Lcom/ricktop/ClockSkinCoco/J;)Lcom/ricktop/ClockSkinCoco/M;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/J;->b0:Lcom/ricktop/ClockSkinCoco/M;

    return-object p0
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/J;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/J;->J1()V

    return-void
.end method

.method private G1(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "customInfo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "customExtras"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-void
.end method

.method private H1(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/J;->Y:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/J;->Y:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Widget not supported"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/J;->I1(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private I1(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/J;->Y:Landroid/appwidget/AppWidgetManager;

    if-eqz v0, :cond_0

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/J;->Y:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->I()Lcom/ricktop/ClockSkinCoco/I;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->I()Lcom/ricktop/ClockSkinCoco/I;

    move-result-object v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ricktop/ClockSkinCoco/I;->E1(ILandroid/appwidget/AppWidgetProviderInfo;Z)V

    :cond_0
    return-void
.end method

.method private J1()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/J;->Z:Lcom/ricktop/ClockSkinCoco/L;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/J;->a0:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/J;->G1(Landroid/content/Intent;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    return-void
.end method

.method public K1(Lcom/ricktop/ClockSkinCoco/M;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/J;->b0:Lcom/ricktop/ClockSkinCoco/M;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/J$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/J$a;-><init>(Lcom/ricktop/ClockSkinCoco/J;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/M;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/MainActivity;->F()Lcom/ricktop/ClockSkinCoco/L;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/J;->Z:Lcom/ricktop/ClockSkinCoco/L;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/J;->Y:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public d0(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    invoke-direct {p0, p3}, Lcom/ricktop/ClockSkinCoco/J;->H1(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p3}, Lcom/ricktop/ClockSkinCoco/J;->I1(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "appWidgetId"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/J;->Z:Lcom/ricktop/ClockSkinCoco/L;

    invoke-virtual {p2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WidgetHandler"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/J;->b0:Lcom/ricktop/ClockSkinCoco/M;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0d0073

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0237

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p3

    const v0, 0x7f0800ed

    invoke-static {p3, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lcom/ricktop/ClockSkinCoco/J$b;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/J$b;-><init>(Lcom/ricktop/ClockSkinCoco/J;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public y0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
