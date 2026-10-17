.class public Lorg/cocos2dx/lib/Cocos2dxDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onSceneLoaderBegin()V
    .locals 2

    const-string v0, "load_scene"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    return-void
.end method

.method public static onSceneLoaderEnd()V
    .locals 2

    const-string v0, "load_scene"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    return-void
.end method

.method public static onShaderLoaderBegin()V
    .locals 2

    const-string v0, "shader_compile"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    return-void
.end method

.method public static onShaderLoaderEnd()V
    .locals 2

    const-string v0, "shader_compile"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    return-void
.end method

.method public static setFrameSize(II)V
    .locals 0

    mul-int p0, p0, p1

    int-to-float p0, p0

    const-string p1, "buffer_size"

    invoke-static {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    return-void
.end method

.method public static setOptimise(Ljava/lang/String;F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LY/c;->d()LY/c;

    move-result-object p1

    invoke-virtual {p1, p0}, LY/c;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public static setProcessID(I)V
    .locals 1

    int-to-float p0, p0

    const-string v0, "render_pid"

    invoke-static {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxDataManager;->setOptimise(Ljava/lang/String;F)V

    return-void
.end method
