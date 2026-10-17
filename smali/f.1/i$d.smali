.class Lf/i$d;
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
.field final synthetic a:Landroid/support/wearable/watchface/decomposition/FontComponent;

.field final synthetic b:Lf/i;


# direct methods
.method constructor <init>(Lf/i;Landroid/support/wearable/watchface/decomposition/FontComponent;)V
    .locals 0

    iput-object p1, p0, Lf/i$d;->b:Lf/i;

    iput-object p2, p0, Lf/i$d;->a:Landroid/support/wearable/watchface/decomposition/FontComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    new-instance v0, Lf/n;

    invoke-direct {v0}, Lf/n;-><init>()V

    invoke-virtual {v0, p1}, Lf/n;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lf/i$d;->a:Landroid/support/wearable/watchface/decomposition/FontComponent;

    invoke-virtual {p1}, Landroid/support/wearable/watchface/decomposition/FontComponent;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Lf/n;->b(I)V

    iget-object p1, p0, Lf/i$d;->b:Lf/i;

    invoke-static {p1}, Lf/i;->b(Lf/i;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v1, p0, Lf/i$d;->a:Landroid/support/wearable/watchface/decomposition/FontComponent;

    invoke-virtual {v1}, Landroid/support/wearable/watchface/decomposition/FontComponent;->f()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lf/i$d;->b:Lf/i;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
