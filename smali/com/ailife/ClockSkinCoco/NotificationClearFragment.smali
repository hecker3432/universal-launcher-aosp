.class public Lcom/ailife/ClockSkinCoco/NotificationClearFragment;
.super Landroidx/fragment/app/Fragment;
.source "NotificationClearFragment.java"


# instance fields
.field button:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0d0078 #sget v0, Lcom/ailife/cocogenerate/R$layout;->wfragment_notification_clear:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a027d #sget v1, Lcom/ailife/cocogenerate/R$id;->x_x_clearAll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/NotificationClearFragment;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/NotificationClearFragment;->button:Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/NotificationClearFragment$1;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/NotificationClearFragment$1;-><init>(Lcom/ailife/ClockSkinCoco/NotificationClearFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
