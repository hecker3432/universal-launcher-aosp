.class Lcom/ricktop/ClockSkinCoco/E$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Z

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/E;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$d;->c:Lcom/ricktop/ClockSkinCoco/E;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/E$d;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/E$d;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/E$d;->c:Lcom/ricktop/ClockSkinCoco/E;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/E$d;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/E$d;->b:Z

    invoke-static {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/E;->b(Lcom/ricktop/ClockSkinCoco/E;Landroid/view/View;Z)V

    return-void
.end method
