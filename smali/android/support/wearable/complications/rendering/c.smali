.class Landroid/support/wearable/complications/rendering/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/complications/rendering/c$g;,
        Landroid/support/wearable/complications/rendering/c$f;
    }
.end annotation


# instance fields
.field A:Landroid/support/wearable/complications/rendering/c$g;

.field private B:Landroid/text/TextPaint;

.field private C:Landroid/text/TextPaint;

.field private D:Landroid/support/wearable/complications/rendering/ComplicationStyle;

.field private E:Landroid/support/wearable/complications/rendering/ComplicationStyle;

.field private F:Landroid/support/wearable/complications/rendering/c$f;

.field private final a:Landroid/content/Context;

.field private b:Landroid/support/wearable/complications/ComplicationData;

.field private final c:Landroid/graphics/Rect;

.field private d:Ljava/lang/CharSequence;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private final l:Landroid/support/wearable/complications/rendering/e;

.field private final m:Landroid/support/wearable/complications/rendering/e;

.field private final n:Landroid/support/wearable/complications/rendering/e;

.field private final o:Landroid/support/wearable/complications/rendering/m;

.field private final p:Landroid/support/wearable/complications/rendering/m;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/RectF;

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/Rect;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private final w:Landroid/graphics/Rect;

.field private final x:Landroid/graphics/Rect;

.field private final y:Landroid/graphics/RectF;

.field z:Landroid/support/wearable/complications/rendering/c$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/support/wearable/complications/rendering/ComplicationStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    const-string v0, ""

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->d:Ljava/lang/CharSequence;

    new-instance v0, Landroid/support/wearable/complications/rendering/e;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/e;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->l:Landroid/support/wearable/complications/rendering/e;

    new-instance v0, Landroid/support/wearable/complications/rendering/e;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/e;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->m:Landroid/support/wearable/complications/rendering/e;

    new-instance v0, Landroid/support/wearable/complications/rendering/e;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/e;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    new-instance v0, Landroid/support/wearable/complications/rendering/m;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/m;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    new-instance v0, Landroid/support/wearable/complications/rendering/m;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/m;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->q:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->r:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->x:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->z:Landroid/support/wearable/complications/rendering/c$g;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->A:Landroid/support/wearable/complications/rendering/c$g;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->B:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->C:Landroid/text/TextPaint;

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/complications/rendering/c;->H(Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/support/wearable/complications/rendering/ComplicationStyle;)V

    return-void
.end method

.method private static A(Landroid/support/wearable/complications/rendering/ComplicationStyle;)Landroid/support/wearable/complications/rendering/ComplicationStyle;
    .locals 5

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle;)V

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->b()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->d()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->d()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->o()I

    move-result p0

    if-eq p0, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object p0

    return-object p0
.end method

.method private G(J)V
    .locals 5

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0, v2}, Landroid/support/wearable/complications/rendering/m;->i(I)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/wearable/complications/ComplicationText;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/wearable/complications/rendering/m;->l(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/wearable/complications/ComplicationText;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/wearable/complications/rendering/m;->l(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/m;->l(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->l()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->l()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/wearable/complications/ComplicationText;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/wearable/complications/rendering/m;->l(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->m()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->m()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v3, p1, p2}, Landroid/support/wearable/complications/ComplicationText;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/m;->l(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {p1, v2}, Landroid/support/wearable/complications/rendering/m;->i(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {p1, v1}, Landroid/support/wearable/complications/rendering/m;->l(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/support/wearable/complications/rendering/m;->i(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/support/wearable/complications/rendering/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/support/wearable/complications/rendering/c;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic b(Landroid/support/wearable/complications/rendering/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->g:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic c(Landroid/support/wearable/complications/rendering/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->y()V

    return-void
.end method

.method static synthetic d(Landroid/support/wearable/complications/rendering/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/support/wearable/complications/rendering/c;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic e(Landroid/support/wearable/complications/rendering/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->h:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic f(Landroid/support/wearable/complications/rendering/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->i:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic g(Landroid/support/wearable/complications/rendering/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->j:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic h(Landroid/support/wearable/complications/rendering/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->k:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic i(Landroid/support/wearable/complications/rendering/ComplicationStyle;)Landroid/support/wearable/complications/rendering/ComplicationStyle;
    .locals 0

    invoke-static {p0}, Landroid/support/wearable/complications/rendering/c;->A(Landroid/support/wearable/complications/rendering/ComplicationStyle;)Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->q:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lc/b;

    invoke-direct {v0}, Lc/b;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lc/h;

    invoke-direct {v0}, Lc/h;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->q()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lc/e;

    invoke-direct {v0}, Lc/e;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lc/g;

    invoke-direct {v0}, Lc/g;-><init>()V

    :goto_0
    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0, v1, v2, v4}, Lc/c;->v(IILandroid/support/wearable/complications/ComplicationData;)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lc/c;->k(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->x:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lc/c;->c(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lc/c;->r(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lc/c;->d(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lc/c;->e()Landroid/text/Layout$Alignment;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lc/c;->f(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v2, v1}, Landroid/support/wearable/complications/rendering/m;->f(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0}, Lc/c;->g()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/wearable/complications/rendering/m;->g(I)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lc/c;->i(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0}, Lc/c;->h()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/wearable/complications/rendering/m;->f(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0}, Lc/c;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/wearable/complications/rendering/m;->g(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lc/c;->l()Landroid/text/Layout$Alignment;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lc/c;->m(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v2, v1}, Landroid/support/wearable/complications/rendering/m;->f(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0}, Lc/c;->n()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/wearable/complications/rendering/m;->g(I)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lc/c;->p(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0}, Lc/c;->o()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/wearable/complications/rendering/m;->f(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0}, Lc/c;->q()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/wearable/complications/rendering/m;->g(I)V

    :goto_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/support/wearable/complications/rendering/m;->k(FFFF)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/support/wearable/complications/rendering/m;->k(FFFF)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/support/wearable/complications/rendering/m;->k(FFFF)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/support/wearable/complications/rendering/m;->k(FFFF)V

    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->q:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->D:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-direct {p0, v2}, Landroid/support/wearable/complications/rendering/c;->v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I

    move-result v2

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->E:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-direct {p0, v3}, Landroid/support/wearable/complications/rendering/c;->v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lc/d;->d(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_5
    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    invoke-static {v1, v1, v2}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lc/d;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    const v3, 0x3f733333    # 0.95f

    invoke-static {v1, v1, v3}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->j()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lc/d;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_8
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    invoke-static {v0, v0, v2}, Lc/d;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private l(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 4

    iget-object v0, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/c;->v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->r:Landroid/graphics/RectF;

    int-to-float v2, v0

    iget-object v3, p2, Landroid/support/wearable/complications/rendering/c$g;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/support/wearable/complications/rendering/c$g;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->l:Landroid/support/wearable/complications/rendering/e;

    iget-object p2, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-virtual {p2}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/wearable/complications/rendering/e;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->l:Landroid/support/wearable/complications/rendering/e;

    invoke-virtual {p2, v0}, Landroid/support/wearable/complications/rendering/e;->c(I)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->l:Landroid/support/wearable/complications/rendering/e;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->q:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->l:Landroid/support/wearable/complications/rendering/e;

    invoke-virtual {p2, p1}, Landroid/support/wearable/complications/rendering/e;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private m(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 2

    iget-object v0, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->h()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/c;->v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->r:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object p2, p2, Landroid/support/wearable/complications/rendering/c$g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private n(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 2

    iget-boolean v0, p2, Landroid/support/wearable/complications/rendering/c$g;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/c;->v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->r:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object p2, p2, Landroid/support/wearable/complications/rendering/c$g;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private o(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/wearable/complications/rendering/c$g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    iget-object p2, p2, Landroid/support/wearable/complications/rendering/c$g;->l:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->s:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/rendering/c;->p(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private static p(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/wearable/complications/rendering/c$g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->m:Landroid/support/wearable/complications/rendering/e;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/e;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->m:Landroid/support/wearable/complications/rendering/e;

    iget-object v1, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/complications/rendering/c;->x(Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/e;->c(I)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->m:Landroid/support/wearable/complications/rendering/e;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->m:Landroid/support/wearable/complications/rendering/e;

    iget-object p2, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-virtual {p2}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->j()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/wearable/complications/rendering/e;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->m:Landroid/support/wearable/complications/rendering/e;

    invoke-virtual {p2, p1}, Landroid/support/wearable/complications/rendering/e;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private r(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->B:Landroid/text/TextPaint;

    iget-object v1, p2, Landroid/support/wearable/complications/rendering/c$g;->a:Landroid/text/TextPaint;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->B:Landroid/text/TextPaint;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/m;->j(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    iget-boolean p2, p2, Landroid/support/wearable/complications/rendering/c$g;->i:Z

    invoke-virtual {v0, p2}, Landroid/support/wearable/complications/rendering/m;->h(Z)V

    :cond_1
    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->o:Landroid/support/wearable/complications/rendering/m;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->v:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/support/wearable/complications/rendering/m;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private s(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 9

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->n()F

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->o()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->v()F

    move-result v1

    div-float/2addr v1, v0

    :cond_1
    const/high16 v0, 0x43b00000    # 352.0f

    mul-float v1, v1, v0

    sub-float/2addr v0, v1

    iget-object v2, p2, Landroid/support/wearable/complications/rendering/c$g;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v8, v2

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    int-to-float v3, v8

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, p2, Landroid/support/wearable/complications/rendering/c$g;->c:Landroid/graphics/Paint;

    const/high16 v4, -0x3d500000    # -88.0f

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    const/high16 v2, -0x3d500000    # -88.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    add-float v4, v1, v2

    iget-object v7, p2, Landroid/support/wearable/complications/rendering/c$g;->d:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/c;->y:Landroid/graphics/RectF;

    neg-int p2, v8

    int-to-float p2, p2

    invoke-virtual {p1, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method private t(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/wearable/complications/rendering/c$g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/e;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/e;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/wearable/complications/rendering/e;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/wearable/complications/rendering/e;->c(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    iget-object v1, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-virtual {v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->j()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/e;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    iget-object p2, p2, Landroid/support/wearable/complications/rendering/c$g;->h:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/support/wearable/complications/rendering/c;->x(Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/graphics/Rect;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/support/wearable/complications/rendering/e;->c(I)V

    :goto_0
    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->t:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->n:Landroid/support/wearable/complications/rendering/e;

    invoke-virtual {p2, p1}, Landroid/support/wearable/complications/rendering/e;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private u(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->C:Landroid/text/TextPaint;

    iget-object v1, p2, Landroid/support/wearable/complications/rendering/c$g;->b:Landroid/text/TextPaint;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->C:Landroid/text/TextPaint;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/m;->j(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    iget-boolean p2, p2, Landroid/support/wearable/complications/rendering/c$g;->i:Z

    invoke-virtual {v0, p2}, Landroid/support/wearable/complications/rendering/m;->h(Z)V

    :cond_1
    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->p:Landroid/support/wearable/complications/rendering/m;

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->w:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/support/wearable/complications/rendering/m;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->g()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->F:Landroid/support/wearable/complications/rendering/c$f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/wearable/complications/rendering/c$f;->a()V

    :cond_0
    return-void
.end method

.method private z()Z
    .locals 9

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->j:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->k:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/wearable/complications/rendering/c;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v2}, Landroid/support/wearable/complications/ComplicationData;->g()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v3}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v4}, Landroid/support/wearable/complications/ComplicationData;->s()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v5}, Landroid/support/wearable/complications/ComplicationData;->k()Landroid/graphics/drawable/Icon;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    const/4 v6, 0x1

    if-eqz v1, :cond_1

    iget-object v7, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    new-instance v8, Landroid/support/wearable/complications/rendering/c$a;

    invoke-direct {v8, p0}, Landroid/support/wearable/complications/rendering/c$a;-><init>(Landroid/support/wearable/complications/rendering/c;)V

    invoke-static {v1, v7, v8, v0}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    new-instance v7, Landroid/support/wearable/complications/rendering/c$b;

    invoke-direct {v7, p0}, Landroid/support/wearable/complications/rendering/c$b;-><init>(Landroid/support/wearable/complications/rendering/c;)V

    invoke-static {v2, v1, v7, v0}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v4, :cond_3

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    new-instance v2, Landroid/support/wearable/complications/rendering/c$c;

    invoke-direct {v2, p0}, Landroid/support/wearable/complications/rendering/c$c;-><init>(Landroid/support/wearable/complications/rendering/c;)V

    invoke-static {v4, v1, v2, v0}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v1, 0x1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    new-instance v2, Landroid/support/wearable/complications/rendering/c$d;

    invoke-direct {v2, p0}, Landroid/support/wearable/complications/rendering/c$d;-><init>(Landroid/support/wearable/complications/rendering/c;)V

    invoke-static {v3, v1, v2, v0}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v1, 0x1

    :cond_4
    if-eqz v5, :cond_5

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->a:Landroid/content/Context;

    new-instance v2, Landroid/support/wearable/complications/rendering/c$e;

    invoke-direct {v2, p0}, Landroid/support/wearable/complications/rendering/c$e;-><init>(Landroid/support/wearable/complications/rendering/c;)V

    invoke-static {v5, v1, v2, v0}, Landroid/support/wearable/complications/rendering/b;->a(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    return v6
.end method


# virtual methods
.method public B(Landroid/graphics/Rect;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->j()V

    :cond_1
    return v0
.end method

.method public C(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-boolean p1, p0, Landroid/support/wearable/complications/rendering/c;->f:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/c;->f:Z

    new-instance p1, Landroid/support/wearable/complications/ComplicationData$b;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/support/wearable/complications/ComplicationData$b;-><init>(I)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/support/wearable/complications/ComplicationText;->c(Ljava/lang/CharSequence;)Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/ComplicationData$b;->h(Landroid/support/wearable/complications/ComplicationText;)Landroid/support/wearable/complications/ComplicationData$b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/wearable/complications/ComplicationData$b;->c()Landroid/support/wearable/complications/ComplicationData;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/c;->f:Z

    :goto_0
    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->z()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->y()V

    :cond_4
    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->j()V

    return-void
.end method

.method public D(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->d:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Landroid/support/wearable/complications/rendering/c;->f:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Landroid/support/wearable/complications/rendering/c;->f:Z

    new-instance p1, Landroid/support/wearable/complications/ComplicationData$b;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/support/wearable/complications/ComplicationData$b;-><init>(I)V

    invoke-virtual {p1}, Landroid/support/wearable/complications/ComplicationData$b;->c()Landroid/support/wearable/complications/ComplicationData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/c;->C(Landroid/support/wearable/complications/ComplicationData;)V

    :cond_1
    return-void
.end method

.method public E(Landroid/support/wearable/complications/rendering/c$f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->F:Landroid/support/wearable/complications/rendering/c$f;

    return-void
.end method

.method public F(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/c;->e:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/c;->e:Z

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->j()V

    :cond_0
    return-void
.end method

.method public H(Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/support/wearable/complications/rendering/ComplicationStyle;)V
    .locals 2

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->D:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    iput-object p2, p0, Landroid/support/wearable/complications/rendering/c;->E:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    new-instance v0, Landroid/support/wearable/complications/rendering/c$g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Landroid/support/wearable/complications/rendering/c$g;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle;ZZZ)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->z:Landroid/support/wearable/complications/rendering/c$g;

    new-instance p1, Landroid/support/wearable/complications/rendering/c$g;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v1, v1}, Landroid/support/wearable/complications/rendering/c$g;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle;ZZZ)V

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c;->A:Landroid/support/wearable/complications/rendering/c$g;

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/c;->j()V

    return-void
.end method

.method public k(Landroid/graphics/Canvas;JZZZZ)V
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0, p2, p3}, Landroid/support/wearable/complications/ComplicationData;->w(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_3

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->A:Landroid/support/wearable/complications/rendering/c$g;

    iget-boolean v2, v0, Landroid/support/wearable/complications/rendering/c$g;->j:Z

    if-ne v2, p5, :cond_2

    iget-boolean v0, v0, Landroid/support/wearable/complications/rendering/c$g;->k:Z

    if-eq v0, p6, :cond_3

    :cond_2
    new-instance v0, Landroid/support/wearable/complications/rendering/c$g;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->E:Landroid/support/wearable/complications/rendering/ComplicationStyle;

    invoke-direct {v0, v2, v1, p5, p6}, Landroid/support/wearable/complications/rendering/c$g;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle;ZZZ)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/c;->A:Landroid/support/wearable/complications/rendering/c$g;

    :cond_3
    if-eqz p4, :cond_4

    iget-object p4, p0, Landroid/support/wearable/complications/rendering/c;->A:Landroid/support/wearable/complications/rendering/c$g;

    goto :goto_0

    :cond_4
    iget-object p4, p0, Landroid/support/wearable/complications/rendering/c;->z:Landroid/support/wearable/complications/rendering/c$g;

    :goto_0
    invoke-direct {p0, p2, p3}, Landroid/support/wearable/complications/rendering/c;->G(J)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->l(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->o(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->t(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->q(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->s(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->r(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->u(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    if-eqz p7, :cond_5

    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->n(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    :cond_5
    invoke-direct {p0, p1, p4}, Landroid/support/wearable/complications/rendering/c;->m(Landroid/graphics/Canvas;Landroid/support/wearable/complications/rendering/c$g;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_1
    return-void
.end method

.method w()Landroid/support/wearable/complications/ComplicationData;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->b:Landroid/support/wearable/complications/ComplicationData;

    return-object v0
.end method

.method x(Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/graphics/Rect;)I
    .locals 4

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/wearable/complications/rendering/c;->v(Landroid/support/wearable/complications/rendering/ComplicationStyle;)I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
