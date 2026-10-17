.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$2;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CocosClockFragment"

    const-string v1, "Delayed resume of GLSurfaceView (onResume)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get the fragment instance
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$2;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    # Check if GLSurfaceView exists
    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->access$getGLSurfaceView(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v1

    if-nez v1, :check_dimensions

    const-string v1, "GLSurfaceView is null, cannot resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :check_dimensions
    # Check if view has non-zero dimensions
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gtz v2, :has_width

    const-string v1, "View has zero width, skipping resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :has_width
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :has_dimensions

    const-string v1, "View has zero height, skipping resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :has_dimensions
    const-string v2, "Resuming GLSurfaceView with proper dimensions"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Resume Cocos2dxHelper
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    # Resume the GLSurfaceView
    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    return-void
.end method
