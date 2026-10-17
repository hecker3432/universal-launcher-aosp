.class Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$b;->a:Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator$b;-><init>(Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
