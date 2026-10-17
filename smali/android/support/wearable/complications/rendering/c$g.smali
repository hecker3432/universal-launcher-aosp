.class Landroid/support/wearable/complications/rendering/c$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/complications/rendering/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:Landroid/text/TextPaint;

.field final b:Landroid/text/TextPaint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field final e:Landroid/graphics/Paint;

.field final f:Landroid/graphics/Paint;

.field final g:Landroid/graphics/Paint;

.field final h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Landroid/graphics/ColorFilter;


# direct methods
.method constructor <init>(Landroid/support/wearable/complications/rendering/ComplicationStyle;ZZZ)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    iput-boolean p2, p0, Landroid/support/wearable/complications/rendering/c$g;->i:Z

    iput-boolean p3, p0, Landroid/support/wearable/complications/rendering/c$g;->j:Z

    iput-boolean p4, p0, Landroid/support/wearable/complications/rendering/c$g;->k:Z

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/support/wearable/complications/rendering/c;->i(Landroid/support/wearable/complications/rendering/ComplicationStyle;)Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object p1

    :cond_2
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->p()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->r()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->q()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz p2, :cond_3

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->l()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_3
    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->l()I

    move-result v2

    invoke-static {v2}, Landroid/support/wearable/complications/rendering/c$g;->a(I)Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    :goto_2
    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->l:Landroid/graphics/ColorFilter;

    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->b:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->s()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->u()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->t()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->m()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->n()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->o()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->n()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->e:Landroid/graphics/Paint;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->d()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->h()I

    move-result v2

    if-ne v2, v0, :cond_4

    new-instance v2, Landroid/graphics/DashPathEffect;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->e()I

    move-result v4

    int-to-float v4, v4

    new-array v0, v0, [F

    aput v3, v0, p4

    aput v4, v0, v1

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_4
    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->h()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->i()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->b()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/wearable/complications/rendering/c$g;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->k()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static a(I)Landroid/graphics/ColorMatrix;
    .locals 6

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    aput v1, v3, v5

    const/4 v1, 0x5

    aput v4, v3, v1

    const/4 v1, 0x6

    aput v4, v3, v1

    const/4 v1, 0x7

    aput v4, v3, v1

    const/16 v1, 0x8

    aput v4, v3, v1

    const/16 v1, 0x9

    aput v2, v3, v1

    const/16 v1, 0xa

    aput v4, v3, v1

    const/16 v1, 0xb

    aput v4, v3, v1

    const/16 v1, 0xc

    aput v4, v3, v1

    const/16 v1, 0xd

    aput v4, v3, v1

    const/16 v1, 0xe

    aput p0, v3, v1

    const/16 p0, 0xf

    aput v4, v3, p0

    const/16 p0, 0x10

    aput v4, v3, p0

    const/16 p0, 0x11

    aput v4, v3, p0

    const/high16 p0, 0x437f0000    # 255.0f

    const/16 v1, 0x12

    aput p0, v3, v1

    const p0, -0x3902fe00    # -32385.0f

    const/16 v1, 0x13

    aput p0, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v0
.end method


# virtual methods
.method b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/c$g;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/c$g;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
