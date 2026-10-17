.class Lorg/cocos2dx/lib/Cocos2dxVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    if-ne p2, p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    :cond_2
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1402(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1402(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$800(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V

    return-void
.end method
