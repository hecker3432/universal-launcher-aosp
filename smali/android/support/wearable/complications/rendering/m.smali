.class public Landroid/support/wearable/complications/rendering/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final u:[Ljava/lang/Class;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private b:Landroid/text/TextPaint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/text/StaticLayout;

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/text/TextUtils$TruncateAt;

.field private o:Landroid/text/Layout$Alignment;

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroid/graphics/Rect;

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/LocaleSpan;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/SubscriptSpan;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/SuperscriptSpan;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/StrikethroughSpan;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/TypefaceSpan;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/wearable/complications/rendering/m;->u:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    const/16 v0, 0x11

    iput v0, p0, Landroid/support/wearable/complications/rendering/m;->k:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/wearable/complications/rendering/m;->l:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/wearable/complications/rendering/m;->m:I

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/m;->n:Landroid/text/TextUtils$TruncateAt;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/m;->o:Landroid/text/Layout$Alignment;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/m;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/m;->q:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/m;->r:Z

    return-void
.end method

.method private b()V
    .locals 8

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/m;->d()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/m;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/wearable/complications/rendering/m;->f:F

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/wearable/complications/rendering/m;->g:F

    :goto_0
    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/m;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/wearable/complications/rendering/m;->g:F

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/support/wearable/complications/rendering/m;->f:F

    :goto_1
    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/wearable/complications/rendering/m;->h:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/support/wearable/complications/rendering/m;->i:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/m;->p:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {v4, v7, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Landroid/support/wearable/complications/rendering/m;->k:I

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->j:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->j:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/m;->p:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/wearable/complications/rendering/m;->q:Landroid/graphics/Rect;

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method private e(Ljava/lang/Object;)Z
    .locals 5

    sget-object v0, Landroid/support/wearable/complications/rendering/m;->u:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private m(II)V
    .locals 6

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->b:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/m;->j(Landroid/text/TextPaint;)V

    :cond_0
    int-to-float p1, p1

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Landroid/support/wearable/complications/rendering/m;->g:F

    sub-float/2addr v0, v2

    mul-float p1, p1, v0

    float-to-int p1, p1

    new-instance v0, Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/m;->b:Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget v2, p0, Landroid/support/wearable/complications/rendering/m;->l:I

    div-int/2addr p2, v2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    int-to-float v2, p1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_2

    iget p2, p0, Landroid/support/wearable/complications/rendering/m;->m:I

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/m;->n:Landroid/text/TextUtils$TruncateAt;

    if-eqz v4, :cond_1

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v4, v5, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    iget-object v4, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    invoke-interface {v4, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    :goto_0
    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Landroid/support/wearable/complications/rendering/m;->r:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    invoke-static {p2, v1}, Landroid/support/wearable/complications/rendering/d;->b(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/wearable/complications/rendering/m;->c:Ljava/lang/String;

    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p2, v3, v1, v0, p1}, Landroid/support/wearable/complications/rendering/f;->a(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/rendering/g;->a(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/m;->n:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2}, Landroid/support/wearable/complications/rendering/h;->a(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/support/wearable/complications/rendering/i;->a(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    iget p2, p0, Landroid/support/wearable/complications/rendering/m;->l:I

    invoke-static {p1, p2}, Landroid/support/wearable/complications/rendering/j;->a(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/m;->o:Landroid/text/Layout$Alignment;

    invoke-static {p1, p2}, Landroid/support/wearable/complications/rendering/k;->a(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    invoke-static {p1}, Landroid/support/wearable/complications/rendering/l;->a(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/m;->j:Landroid/text/StaticLayout;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Landroid/support/wearable/complications/rendering/m;->e(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/wearable/complications/rendering/m;->m(II)V

    iput-boolean v1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/m;->t:Z

    :cond_2
    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/m;->t:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/m;->b()V

    iput-boolean v1, p0, Landroid/support/wearable/complications/rendering/m;->t:Z

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/m;->q:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/m;->j:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->j:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(Landroid/text/Layout$Alignment;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->o:Landroid/text/Layout$Alignment;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/wearable/complications/rendering/m;->o:Landroid/text/Layout$Alignment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    return-void
.end method

.method public g(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/wearable/complications/rendering/m;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->t:Z

    return-void
.end method

.method public h(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/m;->r:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->r:Z

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/m;->c:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->l:I

    if-eq v0, p1, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/support/wearable/complications/rendering/m;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Landroid/text/TextPaint;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/m;->b:Landroid/text/TextPaint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    return-void
.end method

.method public k(FFFF)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->h:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->g:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/complications/rendering/m;->i:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/wearable/complications/rendering/m;->f:F

    iput p2, p0, Landroid/support/wearable/complications/rendering/m;->h:F

    iput p3, p0, Landroid/support/wearable/complications/rendering/m;->g:F

    iput p4, p0, Landroid/support/wearable/complications/rendering/m;->i:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    return-void
.end method

.method public l(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/m;->d:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/wearable/complications/rendering/m;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/m;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/m;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/m;->s:Z

    return-void
.end method
