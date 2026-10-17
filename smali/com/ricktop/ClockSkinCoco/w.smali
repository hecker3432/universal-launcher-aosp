.class public Lcom/ricktop/ClockSkinCoco/w;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/w$b;
    }
.end annotation


# instance fields
.field private Y:Landroidx/viewpager/widget/ViewPager;

.field private Z:Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public c0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/x;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/x;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/B;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ricktop/ClockSkinCoco/C;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/C;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/w;->Y:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/ricktop/ClockSkinCoco/w$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/m;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/ricktop/ClockSkinCoco/w$b;-><init>(Landroidx/fragment/app/m;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/w;->Y:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/w;->Y:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/w;->Y:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/w$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/w$a;-><init>(Lcom/ricktop/ClockSkinCoco/w;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/w;->Z:Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/w;->Y:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0214

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/w;->Y:Landroidx/viewpager/widget/ViewPager;

    const p2, 0x7f0a0122

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/w;->Z:Lcom/ricktop/ClockSkinCoco/PageCircleIndicator;

    return-object p1
.end method
