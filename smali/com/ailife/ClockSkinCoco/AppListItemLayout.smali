.class public Lcom/ailife/ClockSkinCoco/AppListItemLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements LT/a$b;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ailife/ClockSkinCoco/AppListItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCurrentProximityValue()F
    .locals 1

    iget v0, p0, Lcom/ailife/ClockSkinCoco/AppListItemLayout;->d:F

    return v0
.end method

.method public getProximityMaxValue()F
    .locals 1

    const v0, 0x3fcccccd    # 1.6f

    return v0
.end method

.method public getProximityMinValue()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppListItemLayout;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/AppListItemLayout;->c:Landroid/widget/TextView;

    return-void
.end method

.method public setScalingAnimatorValue(F)V
    .locals 1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/AppListItemLayout;->d:F

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppListItemLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppListItemLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
