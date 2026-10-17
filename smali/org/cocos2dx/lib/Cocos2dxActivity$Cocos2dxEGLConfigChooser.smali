.class Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cocos2dxEGLConfigChooser"
.end annotation


# instance fields
.field private final EGL_OPENGL_ES2_BIT:I

.field private final EGL_OPENGL_ES3_BIT:I

.field private mConfigAttributes:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 p1, 0x40

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES3_BIT:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    return-void
.end method

.method private doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v0, v0, [I

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget p2, v0, p1

    if-lez p2, :cond_0

    aget-object p1, v7, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    const/4 v2, 0x0

    aget v22, v1, v2

    const/16 v23, 0x1

    aget v24, v1, v23

    const/16 v25, 0x2

    aget v26, v1, v25

    const/16 v27, 0x3

    aget v28, v1, v27

    const/4 v14, 0x4

    aget v12, v1, v14

    const/4 v3, 0x5

    aget v29, v1, v3

    const/4 v3, 0x6

    aget v1, v1, v3

    if-lez v1, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const/16 v20, 0x4

    const/16 v21, 0x3038

    const/16 v3, 0x3024

    const/16 v5, 0x3023

    const/16 v7, 0x3022

    const/16 v9, 0x3021

    const/16 v11, 0x3025

    const/16 v13, 0x3026

    const/16 v15, 0x3032

    const/16 v17, 0x3031

    const/16 v19, 0x3040

    move/from16 v4, v22

    move/from16 v6, v24

    move/from16 v8, v26

    move/from16 v10, v28

    move/from16 v30, v12

    const/4 v2, 0x4

    move/from16 v14, v29

    move/from16 v18, v1

    filled-new-array/range {v3 .. v21}, [I

    move-result-object v31

    const/16 v32, 0x10

    const/16 v14, 0x18

    if-lt v12, v14, :cond_1

    const/16 v16, 0x10

    goto :goto_1

    :cond_1
    move/from16 v16, v12

    :goto_1
    if-lez v1, :cond_2

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    const/16 v20, 0x4

    const/16 v21, 0x3038

    const/16 v3, 0x3024

    const/16 v5, 0x3023

    const/16 v7, 0x3022

    const/16 v9, 0x3021

    const/16 v11, 0x3025

    const/16 v13, 0x3026

    const/16 v15, 0x3032

    const/16 v17, 0x3031

    const/16 v19, 0x3040

    move/from16 v4, v22

    move/from16 v6, v24

    move/from16 v8, v26

    move/from16 v10, v28

    move v2, v12

    move/from16 v12, v16

    move/from16 v14, v29

    move/from16 v16, v18

    move/from16 v18, v1

    filled-new-array/range {v3 .. v21}, [I

    move-result-object v1

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    const/16 v12, 0x10

    goto :goto_3

    :cond_3
    move v12, v2

    :goto_3
    const/16 v20, 0x4

    const/16 v21, 0x3038

    const/16 v3, 0x3024

    const/16 v5, 0x3023

    const/16 v7, 0x3022

    const/16 v9, 0x3021

    const/16 v11, 0x3025

    const/16 v13, 0x3026

    const/16 v15, 0x3032

    const/16 v16, 0x0

    const/16 v17, 0x3031

    const/16 v18, 0x0

    const/16 v19, 0x3040

    move/from16 v4, v22

    move/from16 v6, v24

    move/from16 v8, v26

    move/from16 v10, v28

    move/from16 v14, v29

    filled-new-array/range {v3 .. v21}, [I

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [[I

    const/4 v5, 0x0

    aput-object v31, v4, v5

    aput-object v1, v4, v23

    aput-object v2, v4, v25

    const/16 v1, 0x3040

    const/16 v2, 0x3038

    filled-new-array {v1, v3, v2}, [I

    move-result-object v1

    aput-object v1, v4, v27

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_5

    aget-object v1, v4, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct {v0, v5, v6, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const-string v1, "device_policy"

    const-string v2, "Can not select an EGLConfig for rendering."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method
