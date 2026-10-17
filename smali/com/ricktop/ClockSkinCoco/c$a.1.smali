.class public Lcom/ricktop/ClockSkinCoco/c$a;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/c$a$a;,
        Lcom/ricktop/ClockSkinCoco/c$a$b;
    }
.end annotation


# instance fields
.field final c:[I

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/ArrayList;

.field final f:Ljava/util/ArrayList;

.field final synthetic g:Lcom/ricktop/ClockSkinCoco/c;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/c;Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$a;->g:Lcom/ricktop/ClockSkinCoco/c;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const/4 p1, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/c$a;->c:[I

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c$a;->d:Landroid/content/Context;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c$a;->f:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/c$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c$a;->e:Ljava/util/ArrayList;

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/c$a;->e:Ljava/util/ArrayList;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x10e
        0xe1
        0x13b
        0xb4
        0x0
        0x87
        0x2d
        0x5a
    .end array-data
.end method

.method private s(Landroid/widget/ImageView;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/ricktop/ClockSkinCoco/b$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/c$a$a;

    invoke-direct {v0, p0, p2}, Lcom/ricktop/ClockSkinCoco/c$a$a;-><init>(Lcom/ricktop/ClockSkinCoco/c$a;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/c$a$b;

    invoke-direct {v0, p0, p2}, Lcom/ricktop/ClockSkinCoco/c$a$b;-><init>(Lcom/ricktop/ClockSkinCoco/c$a;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/c$a;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/c$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public g(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/c$a;->g:Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/c$a;->g:Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/ricktop/ClockSkinCoco/c$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0a0060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v5, 0x7f0a0062

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v6, 0x7f0a0063

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v7, 0x7f0a0064

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v8, 0x7f0a0065

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v9, 0x7f0a0066

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v10, 0x7f0a0067

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const v11, 0x7f0a0068

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const/16 v12, 0x8

    new-array v13, v12, [Lcom/ricktop/ClockSkinCoco/view/RoundImageView;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v4, 0x1

    aput-object v5, v13, v4

    const/4 v5, 0x2

    aput-object v6, v13, v5

    const/4 v5, 0x3

    aput-object v7, v13, v5

    const/4 v5, 0x4

    aput-object v8, v13, v5

    const/4 v5, 0x5

    aput-object v9, v13, v5

    const/4 v5, 0x6

    aput-object v10, v13, v5

    const/4 v5, 0x7

    aput-object v11, v13, v5

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x430c0000    # 140.0f

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/high16 v6, 0x42dc0000    # 110.0f

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6, v6, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v12, :cond_0

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v8, 0x42b00000    # 88.0f

    mul-float v8, v8, v2

    float-to-int v8, v8

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    float-to-double v7, v2

    const-wide/high16 v9, 0x4061000000000000L    # 136.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    iget-object v9, v0, Lcom/ricktop/ClockSkinCoco/c$a;->c:[I

    aget v9, v9, v5

    int-to-double v9, v9

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v15

    const-wide v17, 0x4066800000000000L    # 180.0

    div-double v9, v9, v17

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v9, v9, v19

    mul-double v9, v9, v7

    double-to-int v9, v9

    iget-object v10, v0, Lcom/ricktop/ClockSkinCoco/c$a;->c:[I

    aget v10, v10, v5

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v15

    div-double v10, v10, v17

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    add-double v10, v10, v19

    mul-double v7, v7, v10

    double-to-int v7, v7

    invoke-virtual {v6, v9, v7, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    aget-object v7, v13, v5

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v5, v4

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v14, v12, :cond_2

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v14

    iget-object v5, v0, Lcom/ricktop/ClockSkinCoco/c$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    aget-object v5, v13, v14

    iget-object v6, v0, Lcom/ricktop/ClockSkinCoco/c$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-direct {v0, v5, v2}, Lcom/ricktop/ClockSkinCoco/c$a;->s(Landroid/widget/ImageView;Lcom/ricktop/ClockSkinCoco/b$b;)V

    goto :goto_2

    :cond_1
    aget-object v2, v13, v14

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5}, Lcom/ricktop/ClockSkinCoco/c$a;->s(Landroid/widget/ImageView;Lcom/ricktop/ClockSkinCoco/b$b;)V

    :goto_2
    add-int/2addr v14, v4

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method public h(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
