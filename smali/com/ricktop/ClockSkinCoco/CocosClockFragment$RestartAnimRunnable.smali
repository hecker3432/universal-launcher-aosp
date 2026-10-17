.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # Get the GLSurfaceView
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->access$getGLSurfaceView(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_end

    # Create a runnable to call on the GL thread
    new-instance v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable$1;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable$1;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_end
    return-void
.end method
