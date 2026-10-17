.class public Lcom/ricktop/ClockSkinCoco/AppArcListFragment$MyLauncherChildLayoutManager;
.super Landroid/support/wearable/view/CurvedChildLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/AppArcListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyLauncherChildLayoutManager"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/CurvedChildLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public N2(Landroid/view/View;Landroid/support/wearable/view/WearableRecyclerView;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/wearable/view/CurvedChildLayoutManager;->N2(Landroid/view/View;Landroid/support/wearable/view/WearableRecyclerView;)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3f266666    # 0.65f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const v0, 0x7f0a0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, p2, v1

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x2

    div-int v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const p2, 0x7f0a0113

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    const/high16 p2, 0x3e800000    # -16.0f

    #invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
