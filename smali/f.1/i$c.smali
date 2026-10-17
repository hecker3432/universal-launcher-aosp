.class Lf/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Icon;

.field final synthetic b:Lf/i;


# direct methods
.method constructor <init>(Lf/i;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lf/i$c;->b:Lf/i;

    iput-object p2, p0, Lf/i$c;->a:Landroid/graphics/drawable/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    invoke-static {v0, p1}, Lf/j;->a(Landroid/graphics/drawable/RotateDrawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lf/k;->a(Landroid/graphics/drawable/RotateDrawable;Z)V

    invoke-static {v0, p1}, Lf/l;->a(Landroid/graphics/drawable/RotateDrawable;Z)V

    iget-object p1, p0, Lf/i$c;->b:Lf/i;

    invoke-static {p1}, Lf/i;->a(Lf/i;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lf/i$c;->a:Landroid/graphics/drawable/Icon;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/i$c;->b:Lf/i;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
