.class Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/complications/rendering/ComplicationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/wearable/complications/rendering/ComplicationDrawable;


# direct methods
.method constructor <init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;->a:Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;->a:Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setIsHighlighted(Z)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;->a:Landroid/support/wearable/complications/rendering/ComplicationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
