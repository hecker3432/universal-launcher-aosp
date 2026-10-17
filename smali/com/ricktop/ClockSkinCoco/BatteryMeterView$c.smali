.class Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/BatteryMeterView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;->c:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;->a:F

    iput p3, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;->b:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;->c:Lcom/ricktop/ClockSkinCoco/BatteryMeterView;

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;->a:F

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/BatteryMeterView$c;->b:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
