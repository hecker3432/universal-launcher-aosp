.class Landroid/support/wearable/view/CircledImageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/CircledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/wearable/view/CircledImageView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView$b;->a:Landroid/support/wearable/view/CircledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView$b;->a:Landroid/support/wearable/view/CircledImageView;

    invoke-static {v0}, Landroid/support/wearable/view/CircledImageView;->a(Landroid/support/wearable/view/CircledImageView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView$b;->a:Landroid/support/wearable/view/CircledImageView;

    invoke-static {v0, p1}, Landroid/support/wearable/view/CircledImageView;->b(Landroid/support/wearable/view/CircledImageView;I)I

    iget-object p1, p0, Landroid/support/wearable/view/CircledImageView$b;->a:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
