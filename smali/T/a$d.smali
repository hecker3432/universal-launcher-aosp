.class public abstract LT/a$d;
.super Landroidx/recyclerview/widget/RecyclerView$C;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private u:Landroid/view/View;

.field private v:F

.field private w:F

.field private x:Landroid/animation/ObjectAnimator;

.field private y:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$C;-><init>(Landroid/view/View;)V

    instance-of v3, p1, LT/a$b;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, LT/a$b;

    iput-object p1, p0, LT/a$d;->u:Landroid/view/View;

    invoke-interface {v3}, LT/a$b;->getProximityMinValue()F

    move-result v4

    iput v4, p0, LT/a$d;->w:F

    invoke-interface {v3, v4}, LT/a$b;->setScalingAnimatorValue(F)V

    invoke-interface {v3}, LT/a$b;->getProximityMaxValue()F

    move-result v4

    iput v4, p0, LT/a$d;->v:F

    iget v5, p0, LT/a$d;->w:F

    new-array v6, v2, [F

    aput v5, v6, v1

    aput v4, v6, v0

    const-string v4, "scalingAnimatorValue"

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, LT/a$d;->y:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v5, p0, LT/a$d;->v:F

    iget v8, p0, LT/a$d;->w:F

    new-array v2, v2, [F

    aput v5, v2, v1

    aput v8, v2, v0

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LT/a$d;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, LT/a;->G0:LT/a$c;

    if-eqz p1, :cond_0

    iget-object v0, p0, LT/a$d;->u:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$C;->o()I

    move-result v1

    invoke-interface {p1, v0, v1}, LT/a$c;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
