.class Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TapActionEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->access$200(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->access$200(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007f    # R.layout.zzzza_app_list_item

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;-><init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;)V

    const v0, 0x7f0a0287    # R.id.zzzza_app_icon

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f0a0289    # R.id.zzzza_app_name

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    const v0, 0x7f0a028a    # R.id.zzzza_app_package

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;->packageView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->access$200(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;

    iget-object v0, p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter$ViewHolder;->packageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->getActivityString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
