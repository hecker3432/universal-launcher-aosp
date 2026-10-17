.class Lcom/ricktop/ClockSkinCoco/q$b;
.super Landroidx/viewpager/widget/ViewPager$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/q;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/q;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/q;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/q$b;->b:Lcom/ricktop/ClockSkinCoco/q;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/q;->F1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnPageChangeListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q$b;->b:Lcom/ricktop/ClockSkinCoco/q;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/q;->G1(Lcom/ricktop/ClockSkinCoco/q;I)Lcom/ricktop/ClockSkinCoco/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/v;->E1()V

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/q$b;->b:Lcom/ricktop/ClockSkinCoco/q;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/ricktop/ClockSkinCoco/q;->G1(Lcom/ricktop/ClockSkinCoco/q;I)Lcom/ricktop/ClockSkinCoco/v;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/v;->E1()V

    :cond_1
    return-void
.end method
