.class public Lcom/ricktop/ClockSkinCoco/c;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/c$a;,
        Lcom/ricktop/ClockSkinCoco/c$b;
    }
.end annotation


# instance fields
.field private Y:Landroid/content/Context;

.field private Z:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

.field private a0:Landroid/view/LayoutInflater;

.field private b0:Landroid/view/ViewGroup;

.field private c0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/c;->b0:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/c;->c0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c;->c0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/c;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/c;->Z:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    return-object p0
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/c;->b0:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic G1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/c;->a0:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic H1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/c;->Y:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method

.method public I1()V
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/c$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/c$b;-><init>(Lcom/ricktop/ClockSkinCoco/c;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0029

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c;->b0:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c;->Y:Landroid/content/Context;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c;->a0:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c;->b0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0175

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c;->Z:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c;->b0:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public n0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    return-void
.end method

.method public y0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
