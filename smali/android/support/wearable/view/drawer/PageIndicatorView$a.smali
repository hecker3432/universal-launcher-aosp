.class Landroid/support/wearable/view/drawer/PageIndicatorView$a;
.super Landroid/support/wearable/view/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/drawer/PageIndicatorView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/support/wearable/view/drawer/PageIndicatorView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/drawer/PageIndicatorView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView$a;->b:Landroid/support/wearable/view/drawer/PageIndicatorView;

    invoke-direct {p0}, Landroid/support/wearable/view/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView$a;->b:Landroid/support/wearable/view/drawer/PageIndicatorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->d(Landroid/support/wearable/view/drawer/PageIndicatorView;Z)Z

    iget-object p1, p0, Landroid/support/wearable/view/drawer/PageIndicatorView$a;->b:Landroid/support/wearable/view/drawer/PageIndicatorView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView$a;->b:Landroid/support/wearable/view/drawer/PageIndicatorView;

    invoke-static {v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->f(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Landroid/support/wearable/view/drawer/PageIndicatorView$a;->b:Landroid/support/wearable/view/drawer/PageIndicatorView;

    invoke-static {v0}, Landroid/support/wearable/view/drawer/PageIndicatorView;->e(Landroid/support/wearable/view/drawer/PageIndicatorView;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
