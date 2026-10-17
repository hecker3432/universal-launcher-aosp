.class Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$a;->a:Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$a;->a:Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;

    invoke-static {p1}, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->a(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$a;->a:Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;

    invoke-static {p1}, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->b(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$c;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
