.class public abstract Lcom/ricktop/ClockSkinCoco/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/b$b;
    }
.end annotation


# static fields
.field private static a:Landroid/graphics/drawable/Drawable;

.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;

.field private static d:Landroid/graphics/drawable/Drawable;

.field private static e:Landroid/graphics/drawable/Drawable;

.field private static f:Landroid/graphics/drawable/Drawable;

.field private static g:Landroid/graphics/drawable/Drawable;

.field private static h:Landroid/graphics/drawable/Drawable;

.field private static i:Landroid/graphics/drawable/Drawable;

.field private static j:Landroid/graphics/drawable/Drawable;


# direct methods
.method private static a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "$"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com_android_mms_ui_bootactivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/ricktop/ClockSkinCoco/b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ricktop/ClockSkinCoco/b;->c(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method private static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private static c(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const v0, 0x7f0800f7

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const v0, 0x7f0800ef

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->b:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    const v0, 0x7f0800f0

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->c:Landroid/graphics/drawable/Drawable;

    :cond_2
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const v0, 0x7f0800f1

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->d:Landroid/graphics/drawable/Drawable;

    :cond_3
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    const v0, 0x7f0800f2

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->e:Landroid/graphics/drawable/Drawable;

    :cond_4
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    const v0, 0x7f0800f3

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->f:Landroid/graphics/drawable/Drawable;

    :cond_5
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const v0, 0x7f0800f4

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->g:Landroid/graphics/drawable/Drawable;

    :cond_6
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    const v0, 0x7f0800f5

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->h:Landroid/graphics/drawable/Drawable;

    :cond_7
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    const v0, 0x7f0800f6

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->i:Landroid/graphics/drawable/Drawable;

    :cond_8
    sget-object v0, Lcom/ricktop/ClockSkinCoco/b;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    const v0, 0x7f0800ee

    invoke-static {p0, v0}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/b;->j:Landroid/graphics/drawable/Drawable;

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x8c

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    const/16 v2, 0x101

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object p1, p0

    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->E()I

    move-result p1

    invoke-static {p0}, Lcom/ricktop/ClockSkinCoco/b;->e(Landroid/content/Context;)I

    move-result p0

    const/16 v2, 0x8

    const/4 v4, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x9

    if-ne p1, v11, :cond_13

    const/16 p1, 0x32

    const/16 v9, 0x14

    if-ne p0, v5, :cond_a

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->a:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_a
    if-ne p0, v11, :cond_b

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->b:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_b
    if-ne p0, v10, :cond_c

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->c:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_c
    if-ne p0, v8, :cond_d

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->d:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_d
    if-ne p0, v7, :cond_e

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->e:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_e
    if-ne p0, v6, :cond_f

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->f:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_f
    if-ne p0, v4, :cond_10

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->g:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_10
    if-ne p0, v2, :cond_11

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->h:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_11
    if-ne p0, v12, :cond_12

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->i:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_12
    if-le p0, v12, :cond_1d

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->j:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_13
    const/16 p1, 0x1e

    if-ne p0, v5, :cond_14

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->a:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_14
    if-ne p0, v11, :cond_15

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->b:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_15
    if-ne p0, v10, :cond_16

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->c:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_16
    if-ne p0, v8, :cond_17

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->d:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_17
    if-ne p0, v7, :cond_18

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->e:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_18
    if-ne p0, v6, :cond_19

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->f:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_19
    if-ne p0, v4, :cond_1a

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->g:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1a
    if-ne p0, v2, :cond_1b

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->h:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1b
    if-ne p0, v12, :cond_1c

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->i:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1c
    if-le p0, v12, :cond_1d

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->j:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v0, 0x28

    add-int/lit8 v0, v0, 0x46

    invoke-virtual {p0, v2, v9, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object p0, Lcom/ricktop/ClockSkinCoco/b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1d
    :goto_0
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/ricktop/ClockSkinCoco/MainActivity;->F:Lcom/ricktop/ClockSkinCoco/m;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/ricktop/ClockSkinCoco/m;->c()Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    # PRIORITY 1: Check for custom icon (NEW system) - works regardless of icon pack
    # Pass both packageName (v8) and activityName (v9) for per-activity icons
    invoke-static {p0, v8, v9, v6}, Lcom/ricktop/ClockSkinCoco/m;->loadCustomIconIfExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    # PRIORITY 2: Apply ADW icon pack (OLD system) - only if icon pack is selected and no custom icon was found
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8, v6}, Lcom/ricktop/ClockSkinCoco/m$a;->b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_1
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v5, Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-static {v6, p0, v9}, Lcom/ricktop/ClockSkinCoco/b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v12, v10

    move-object v7, v5

    move-object v13, p0

    invoke-direct/range {v7 .. v13}, Lcom/ricktop/ClockSkinCoco/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    # Load custom positions from AppOrderManager
    new-instance v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;-><init>(Landroid/content/Context;)V

    # Loop through all apps and assign positions
    const/4 v1, 0x0

    :loop_positions
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :end_positions

    # Get app at index v1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ricktop/ClockSkinCoco/b$b;

    # Get packageName (field e) and activityName (field a)
    iget-object v3, v2, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object v5, v2, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    # Get saved position
    invoke-virtual {v0, v3, v5}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->getPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    # If position is -1 (new app), assign new position
    const/4 v7, -0x1

    if-ne v6, v7, :has_position

    # New app - assign position at end
    invoke-virtual {v0, v3, v5}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->assignNewAppPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :has_position
    # Assign position to app object (field h)
    iput v6, v2, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Next app
    add-int/lit8 v1, v1, 0x1

    goto :loop_positions

    :end_positions
    # Clean up: save only currently installed apps (removes uninstalled apps from storage)
    invoke-virtual {v0, v4}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->saveOrderFromList(Ljava/util/ArrayList;)V

    # Check if alphabetical sorting is enabled
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->isAlphabeticalSortEnabled()Z

    move-result v1

    # If alphabetical sort is enabled, use AppAlphabeticalComparator
    if-eqz v1, :use_position_sort

    # Use alphabetical sorting
    new-instance p0, Lcom/ailife/ClockSkinCoco/AppAlphabeticalComparator;

    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/AppAlphabeticalComparator;-><init>()V

    goto :do_sort

    :use_position_sort
    # Use position-based sorting (default)
    new-instance p0, Lcom/ricktop/ClockSkinCoco/b$a;

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/b$a;-><init>()V

    :do_sort
    invoke-static {v4, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    # Save to static field for move operations
    sput-object v4, Lcom/ailife/ClockSkinCoco/AppOrderManager;->currentAppList:Ljava/util/ArrayList;

    # Only normalize positions if NOT using alphabetical sort
    # (normalizePositions re-sorts by position which would undo alphabetical sorting)
    if-eqz v1, :skip_normalize

    # Alphabetical sort enabled - skip normalize
    goto :done_normalize

    :skip_normalize
    # Normalize positions to 0, 1, 2, 3... (removes gaps and duplicates)
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->normalizePositions()V

    :done_normalize
    # Filter app list based on hide settings
    # Get Context from WatchApp (p0 was reused for Comparator)
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ailife/ClockSkinCoco/hideapps/AppListFilter;->filterAppList(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method static e(Landroid/content/Context;)I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://sms"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "type = 1 and read = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method static f(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;ZZ)V
    .locals 1

    iget-object p0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->c:Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->b:Landroid/graphics/drawable/Drawable;

    iput-boolean p2, p1, Lcom/ricktop/ClockSkinCoco/b$b;->d:Z

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p0

    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "swlauncher_app_pref"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
