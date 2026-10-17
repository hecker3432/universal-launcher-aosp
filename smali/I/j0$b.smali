.class LI/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI/j0;->i(LI/m0;)LI/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LI/m0;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:LI/j0;


# direct methods
.method constructor <init>(LI/j0;LI/m0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, LI/j0$b;->c:LI/j0;

    iput-object p2, p0, LI/j0$b;->a:LI/m0;

    iput-object p3, p0, LI/j0$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, LI/j0$b;->a:LI/m0;

    iget-object v0, p0, LI/j0$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, LI/m0;->a(Landroid/view/View;)V

    return-void
.end method
