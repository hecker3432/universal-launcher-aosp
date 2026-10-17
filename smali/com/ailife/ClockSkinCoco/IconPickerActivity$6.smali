.class Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;
.super Landroid/widget/BaseAdapter;
.source "IconPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/IconPickerActivity;->showIconPackDialog(Ljava/lang/Object;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

.field final synthetic val$filteredIcons:Ljava/util/ArrayList;

.field final synthetic val$iconPackClass:Ljava/lang/Class;

.field final synthetic val$iconPackHandler:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5

    .line 581
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$filteredIcons:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$iconPackClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$iconPackHandler:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$filteredIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 589
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$filteredIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 594
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 600
    if-nez p2, :cond_1f

    .line 601
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 602
    nop

    .line 603
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v0, 0x80

    invoke-direct {p3, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 605
    const/16 p3, 0x8

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 606
    goto :goto_21

    .line 607
    :cond_1f
    check-cast p2, Landroid/widget/ImageView;

    .line 611
    :goto_21
    :try_start_21
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$filteredIcons:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 612
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$iconPackClass:Ljava/lang/Class;

    const-string v0, "f"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 613
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 614
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;->val$iconPackHandler:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 615
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4b} :catch_4c

    .line 618
    goto :goto_54

    .line 616
    :catch_4c
    move-exception p1

    .line 617
    const-string p3, "IconPickerActivity"

    const-string v0, "Error loading icon"

    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    :goto_54
    return-object p2
.end method
