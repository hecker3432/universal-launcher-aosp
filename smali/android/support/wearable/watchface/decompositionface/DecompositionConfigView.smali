.class public Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$c;
    }
.end annotation


# instance fields
.field private final b:Lf/i;

.field private final c:Lf/a;

.field private final d:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final e:Landroid/view/GestureDetector;

.field private final f:Landroid/graphics/Rect;

.field private g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lf/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lf/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->b:Lf/i;

    new-instance p1, Lf/a;

    invoke-direct {p1}, Lf/a;-><init>()V

    iput-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->c:Lf/a;

    new-instance p1, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$a;

    invoke-direct {p1, p0}, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$a;-><init>(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)V

    iput-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->d:Landroid/view/GestureDetector$SimpleOnGestureListener;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->e:Landroid/view/GestureDetector;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->f:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getWatchFaceComplicationIds()[I
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;

    invoke-virtual {v2}, Landroid/support/wearable/watchface/decomposition/ComplicationComponent;->j()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDecomposition(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->b:Lf/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lf/i;->o(Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;Z)V

    iget-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->b:Lf/i;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/wearable/view/r;->a(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lf/i;->l(Z)V

    iget-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->b:Lf/i;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->g:Ljava/util/ArrayList;

    new-instance p1, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$b;

    invoke-direct {p1, p0}, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$b;-><init>(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public setDisplayTime(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView;->b:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->n(J)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnComplicationTapListener(Landroid/support/wearable/watchface/decompositionface/DecompositionConfigView$c;)V
    .locals 0

    return-void
.end method
