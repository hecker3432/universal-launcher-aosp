.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;


# direct methods
.method private constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$1;)V
    .registers 3

    .line 335
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$1000(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$1000(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 349
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .line 354
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$1000(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 364
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_ae

    .line 365
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 367
    const/16 v2, 0x10

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 369
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 371
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x40

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 372
    invoke-virtual {v4, v1, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 378
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 379
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 384
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 388
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 389
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setId(I)V

    .line 393
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    new-instance v2, Landroid/widget/CheckBox;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 400
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/CheckBox;->setId(I)V

    .line 401
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    goto :goto_d3

    .line 403
    :cond_ae
    check-cast p2, Landroid/widget/LinearLayout;

    .line 404
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageView;

    .line 405
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 406
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 407
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 408
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    move-object v0, v1

    move-object v1, p3

    .line 411
    :goto_d3
    iget-object p3, p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object p3, p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object p3, p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-boolean p3, p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    invoke-virtual {v2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 416
    new-instance p3, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$1;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;)V

    invoke-virtual {v2, p3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance p3, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;

    invoke-direct {p3, p0, p1, v2}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    return-object p2
.end method
