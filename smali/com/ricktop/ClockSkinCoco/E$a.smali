.class Lcom/ricktop/ClockSkinCoco/E$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Landroid/view/View;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/E;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$a;->c:Lcom/ricktop/ClockSkinCoco/E;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/E$a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/E$a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$a;->c:Lcom/ricktop/ClockSkinCoco/E;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/E;->a(Lcom/ricktop/ClockSkinCoco/E;)Lcom/ricktop/ClockSkinCoco/E$e;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/ricktop/ClockSkinCoco/E$e;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$a;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
