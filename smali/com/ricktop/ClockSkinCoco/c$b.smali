.class public Lcom/ricktop/ClockSkinCoco/c$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/c;


# direct methods
.method public constructor <init>(Lcom/ricktop/ClockSkinCoco/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/c;->D1(Lcom/ricktop/ClockSkinCoco/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/b;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/c;->D1(Lcom/ricktop/ClockSkinCoco/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Success"

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/c;->E1(Lcom/ricktop/ClockSkinCoco/c;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/c;->C1(Lcom/ricktop/ClockSkinCoco/c;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {v3}, Lcom/ricktop/ClockSkinCoco/c;->F1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {v3}, Lcom/ricktop/ClockSkinCoco/c;->G1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {v4}, Lcom/ricktop/ClockSkinCoco/c;->F1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/view/ViewGroup;

    move-result-object v4

    const v5, 0x7f0d0032

    invoke-virtual {v3, v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/c;->E1(Lcom/ricktop/ClockSkinCoco/c;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    move-result-object p1

    new-instance v1, Lcom/ricktop/ClockSkinCoco/c$a;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/c;->H1(Lcom/ricktop/ClockSkinCoco/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {v4}, Lcom/ricktop/ClockSkinCoco/c;->C1(Lcom/ricktop/ClockSkinCoco/c;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ricktop/ClockSkinCoco/c$a;-><init>(Lcom/ricktop/ClockSkinCoco/c;Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/c;->E1(Lcom/ricktop/ClockSkinCoco/c;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->setOrientation(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$b;->a:Lcom/ricktop/ClockSkinCoco/c;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/c;->E1(Lcom/ricktop/ClockSkinCoco/c;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/c$b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/c$b;->b(Ljava/lang/String;)V

    return-void
.end method
