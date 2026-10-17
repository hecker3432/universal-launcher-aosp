.class public Lc/g;
.super Lc/c;
.source "SourceFile"


# instance fields
.field private final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/g;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p1}, Lc/d;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p1}, Lc/d;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->g(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public l()Landroid/text/Layout$Alignment;
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    iget-object v1, p0, Lc/g;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lc/c;->a(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/g;->c:Landroid/graphics/Rect;

    invoke-static {v1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public m(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lc/d;->h(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p1}, Lc/d;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p1}, Lc/d;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1, p1}, Lc/d;->g(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public n()I
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x50

    return v0

    :cond_0
    const/16 v0, 0x10

    return v0
.end method

.method public o()Landroid/text/Layout$Alignment;
    .locals 1

    invoke-virtual {p0}, Lc/g;->l()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lc/c;->b()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->r()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1
    return-void
.end method

.method public q()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method
