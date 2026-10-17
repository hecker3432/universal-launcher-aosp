.class public Lcom/ricktop/ClockSkinCoco/H$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/H$e;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/H$e;

    iget-boolean v0, p1, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    iget-boolean v1, p2, Lcom/ricktop/ClockSkinCoco/H$e;->a:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_1
    iget p1, p1, Lcom/ricktop/ClockSkinCoco/H$e;->e:I

    iget p2, p2, Lcom/ricktop/ClockSkinCoco/H$e;->e:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/H$k;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
