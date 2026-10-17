.class Lcom/ricktop/ClockSkinCoco/E$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Z

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/E;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$c;->c:Lcom/ricktop/ClockSkinCoco/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/E$c;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/E$c;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$c;->c:Lcom/ricktop/ClockSkinCoco/E;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E$c;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/E$c;->b:Z

    invoke-static {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/E;->b(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V

    return-void
.end method
