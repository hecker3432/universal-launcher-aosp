.class public Lcom/ailife/launcher/widget/ui/AddWidgetFragment;
.super Landroidx/fragment/app/Fragment;
.source "AddWidgetFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddWidgetFragment"


# instance fields
.field private listener:Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/ailife/launcher/widget/ui/AddWidgetFragment;
    .registers 1

    .line 27
    new-instance v0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;

    invoke-direct {v0}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;-><init>()V

    return-object v0
.end method

.method private onAddButtonClick()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->listener:Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->listener:Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;

    invoke-interface {v0}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;->onAddWidgetRequested()V

    .line 52
    :cond_9
    return-void
.end method


# virtual methods
.method synthetic lambda$m0$0$com-ailife-launcher-widget-ui-AddWidgetFragment(Landroid/view/View;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->onAddButtonClick()V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 37
    const p3, 0x7f0d0087

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    const p2, 0x7f0a02a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 41
    if-eqz p2, :cond_1b

    .line 42
    new-instance p3, Lcom/ailife/launcher/widget/ui/AddWidgetFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/ailife/launcher/widget/ui/AddWidgetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/launcher/widget/ui/AddWidgetFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_1b
    return-object p1
.end method

.method public setOnAddWidgetRequestListener(Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/ailife/launcher/widget/ui/AddWidgetFragment;->listener:Lcom/ailife/launcher/widget/ui/AddWidgetFragment$OnAddWidgetRequestListener;

    .line 32
    return-void
.end method
