.class Lcom/ricktop/myclockskinApp/widgetprovider/a;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/myclockskinApp/widgetprovider/a$b;
    }
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:I

.field private final h:Ljava/util/ArrayList;

.field private final i:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

.field private final j:Lcom/ricktop/myclockskinApp/widgetprovider/a;

.field private final k:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/ClickableViewPager;ILjava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    iput-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->j:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->i:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->k:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->d:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->g:I

    goto :goto_1

    :cond_1
    const/16 p1, 0x168

    iput p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->g:I

    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-object p3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    :goto_3
    iget-object p4, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/2addr p3, p4

    if-ge p1, p3, :cond_3

    iget-object p3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ".*/([^/]*)/[^/]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private B(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private C(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    new-instance v0, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/a$a;)V

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->d:Landroid/view/LayoutInflater;

    # Get context for round screen check
    iget-object v3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->c:Landroid/content/Context;

    # Check if screen is round
    invoke-static {v3}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_square

    # Round screen - use round layout
    const v3, 0x7f0d0082

    goto :goto_layout_chosen

    :cond_square
    # Square screen - use original layout
    const v3, 0x7f0d002e

    :goto_layout_chosen

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a00ac

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->b(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v2, 0x7f0a00f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->d(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f0a00c5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v10, 0x7f0a0281

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->k:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    if-le p1, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v6, p1, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "delete skin getView"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {p1}, [I

    move-result-object v3

    new-instance v5, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    invoke-direct {v5, p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/a;[I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->A(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->D(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->a(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->g:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v5

    double-to-int v2, v2

    int-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    double-to-int v1, v7

    const/4 v4, 0x2

    invoke-static {p1, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr p1, v4

    :cond_2
    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x2

    if-le p1, v4, :cond_a

    const-string v8, "/dummy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->A(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v4, "unpin"

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b

    new-instance v5, Lcom/ricktop/myclockskinApp/widgetprovider/a$c;

    invoke-direct {v5, p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/a$c;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/a;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_a
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_a

    const/4 v4, 0x2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080091

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->a(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->g:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v5

    double-to-int v2, v2

    int-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    double-to-int v1, v7

    invoke-static {p1, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    const-string v8, "/dummy"

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".zip"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->A(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "clock_skin_model.png"

    move-object v7, v3

    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    nop

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".watch"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->A(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_2
    # Use ZipHelper to search for preview images recursively (including subfolders)
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/ZipHelper;->extractPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ".face"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->A(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_3
    # Use ZipHelper to search for preview images recursively (including subfolders)
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/ZipHelper;->extractPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->A(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->B(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->a(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->g:I

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v5

    double-to-int v2, v2

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    double-to-int v0, v7

    invoke-static {v1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    :goto_3
    # Check if this watch face is currently selected and make text green
    # Get ViewHolder from the view's tag (was set earlier with setTag)
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;

    # Get the TextView from ViewHolder
    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;

    move-result-object v1

    # Get current watch_path from SharedPreferences
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "watch_path"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # Get the current TextView text (watch face name)
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    # Check if current watch contains this watch face name
    if-eqz v2, :cond_default_color

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_default_color

    # Set green color for selected watch face (#00FF00)
    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_color_set

    :cond_default_color
    # Set default white color
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_color_set

    return-object p2
.end method

.method private D(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic s(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic u(Lcom/ricktop/myclockskinApp/widgetprovider/a;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->z(Ljava/io/File;)V

    return-void
.end method

.method static synthetic v(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic w(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Lcom/ricktop/myclockskinApp/widgetprovider/a;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->j:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    return-object p0
.end method

.method static synthetic x(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Lcom/ricktop/ClockSkinCoco/ClickableViewPager;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->i:Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    return-object p0
.end method

.method static synthetic y(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method private z(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "         deleting : "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->z(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    :try_start_0
    iget-object p3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public g(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->C(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
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
