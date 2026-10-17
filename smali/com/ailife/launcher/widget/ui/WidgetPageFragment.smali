.class public Lcom/ailife/launcher/widget/ui/WidgetPageFragment;
.super Landroidx/fragment/app/Fragment;
.source "WidgetPageFragment.java"

# interfaces
.implements Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;
    }
.end annotation


# static fields
.field private static final ARG_WIDGET_ID:Ljava/lang/String; = "widget_id"

.field private static final TAG:Ljava/lang/String; = "WidgetPageFragment"


# instance fields
.field private appWidgetId:I

.field private errorMessage:Landroid/widget/TextView;

.field private removalRequestListener:Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;

.field private widgetContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/ailife/launcher/widget/ui/WidgetPageFragment;
    .registers 4

    .line 36
    new-instance v0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;

    invoke-direct {v0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "widget_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method private showRemovalDialog()V
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->u()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    .line 136
    return-void

    .line 139
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    const-string v1, "Remove Widget"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    const-string v1, "Remove this widget?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ailife/launcher/widget/ui/WidgetPageFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/launcher/widget/ui/WidgetPageFragment;)V

    .line 142
    const-string v2, "Remove"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    return-void
.end method


# virtual methods
.method public c0(Landroid/os/Bundle;)V
    .registers 4

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 51
    invoke-virtual {p0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "widget_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->appWidgetId:I

    .line 53
    :cond_16
    return-void
.end method

.method public getWidgetId()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->appWidgetId:I

    return v0
.end method

.method synthetic lambda$showRemovalDialog$0$com-ailife-launcher-widget-ui-WidgetPageFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 143
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->removalRequestListener:Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;

    if-eqz p1, :cond_b

    .line 144
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->removalRequestListener:Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;

    iget p2, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->appWidgetId:I

    invoke-interface {p1, p2}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;->onWidgetRemovalRequested(I)V

    .line 146
    :cond_b
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 58
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 62
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->widgetContainer:Landroid/widget/FrameLayout;

    .line 66
    iget-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->widgetContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    .line 73
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    const/16 p3, 0x11

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->widgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    return-object p2
.end method

.method public onRemovalRequested(I)V
    .registers 2

    .line 128
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->showRemovalDialog()V

    .line 129
    return-void
.end method

.method public setOnWidgetRemovalRequestListener(Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->removalRequestListener:Lcom/ailife/launcher/widget/ui/WidgetPageFragment$OnWidgetRemovalRequestListener;

    .line 45
    return-void
.end method

.method public setWidget(Landroid/appwidget/AppWidgetHostView;)V
    .registers 5

    .line 94
    const-string v0, "WidgetPageFragment"

    if-nez p1, :cond_a

    .line 95
    const-string p1, "Widget failed to load"

    invoke-virtual {p0, p1}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->showError(Ljava/lang/String;)V

    .line 96
    return-void

    .line 100
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->widgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 101
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->widgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    instance-of v1, p1, Lcom/ailife/launcher/widget/WidgetHostView;

    if-eqz v1, :cond_24

    .line 106
    check-cast p1, Lcom/ailife/launcher/widget/WidgetHostView;

    invoke-virtual {p1, p0}, Lcom/ailife/launcher/widget/WidgetHostView;->setRemovalListener(Lcom/ailife/launcher/widget/WidgetHostView$OnWidgetRemovalListener;)V

    .line 109
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widget view set for ID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->appWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_3d

    .line 113
    goto :goto_48

    .line 110
    :catch_3d
    move-exception p1

    .line 111
    const-string v1, "Failed to add widget view"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const-string p1, "Error displaying widget"

    invoke-virtual {p0, p1}, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->showError(Ljava/lang/String;)V

    .line 114
    :goto_48
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->errorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/WidgetPageFragment;->widgetContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widget error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetPageFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method
