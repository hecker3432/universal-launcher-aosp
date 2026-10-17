.class public Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf/a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Lf/a;->b(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1}, Lf/a;->c(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v2}, Lf/a;->b(F)I

    move-result v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1}, Lf/a;->c(F)I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public b(F)I
    .locals 1

    iget-object v0, p0, Lf/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lf/a;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public c(F)I
    .locals 1

    iget-object v0, p0, Lf/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lf/a;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lf/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
