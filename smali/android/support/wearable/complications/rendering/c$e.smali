.class Landroid/support/wearable/complications/rendering/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/complications/rendering/c;->z()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/wearable/complications/rendering/c;


# direct methods
.method constructor <init>(Landroid/support/wearable/complications/rendering/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/c$e;->a:Landroid/support/wearable/complications/rendering/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/complications/rendering/c$e;->a:Landroid/support/wearable/complications/rendering/c;

    invoke-static {v0, p1}, Landroid/support/wearable/complications/rendering/c;->h(Landroid/support/wearable/complications/rendering/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/c$e;->a:Landroid/support/wearable/complications/rendering/c;

    invoke-static {p1}, Landroid/support/wearable/complications/rendering/c;->c(Landroid/support/wearable/complications/rendering/c;)V

    return-void
.end method
