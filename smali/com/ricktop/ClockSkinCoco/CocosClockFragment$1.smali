.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->setUserVisibleHint(Z)V
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$1;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    # Get the fragment instance
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$1;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    # Check if GLSurfaceView exists
    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->access$getGLSurfaceView(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    if-nez v0, :resume_view

    return-void

    :resume_view
    const-string v1, "CocosClockFragment"

    const-string v0, "Delayed resume of GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Resume Cocos2dxHelper
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    # Get the fragment instance again
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$1;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    # Get GLSurfaceView
    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->access$getGLSurfaceView(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    # Resume the GLSurfaceView
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    return-void
.end method
