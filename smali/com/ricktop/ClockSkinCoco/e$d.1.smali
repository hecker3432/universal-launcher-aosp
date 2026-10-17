.class Lcom/ricktop/ClockSkinCoco/e$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field b:Landroid/widget/GridView;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/e;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/e;Landroid/widget/GridView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/e$d;->c:Lcom/ricktop/ClockSkinCoco/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/e$d;->b:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e$d;->c:Lcom/ricktop/ClockSkinCoco/e;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/e;->C1(Lcom/ricktop/ClockSkinCoco/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e$d;->c:Lcom/ricktop/ClockSkinCoco/e;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/e;->C1(Lcom/ricktop/ClockSkinCoco/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    # Get SharedPreferences and read grid column count
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "sp_grid_columns"

    const-string v1, "3"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    # Determine layout name based on column count
    const-string v0, "gridview_item"

    const/4 v1, 0x4

    if-lt p2, v1, :cond_check3

    const-string v0, "gridview_item_4"

    goto :cond_inflate

    :cond_check3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_inflate

    const-string v0, "zzz_wgridview_item_3"

    :cond_inflate
    # Get layout resource ID by name
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/e$d;->c:Lcom/ricktop/ClockSkinCoco/e;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    # Inflate the layout
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e$d;->c:Lcom/ricktop/ClockSkinCoco/e;

    invoke-static {p3}, Lcom/ricktop/ClockSkinCoco/e;->C1(Lcom/ricktop/ClockSkinCoco/e;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    const v0, 0x7f0a0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    # Only get and set TextView if it exists (gridview_item_4 has no TextView)
    const p3, 0x7f0a0127

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :skip_text

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :skip_text
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/e$d;->b:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
