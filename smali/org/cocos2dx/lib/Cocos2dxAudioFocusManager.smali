.class abstract Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->nativeOnAudioFocusChange(I)V

    return-void
.end method

.method private static native nativeOnAudioFocusChange(I)V
.end method

.method static registerAudioFocusListener(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    const-string v0, "AudioFocusManager"

    if-ne p0, v2, :cond_0

    const-string p0, "requestAudioFocus succeed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string p0, "requestAudioFocus failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method static unregisterAudioFocusListener(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "AudioFocusManager"

    if-ne p0, v0, :cond_0

    const-string p0, "abandonAudioFocus succeed!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "abandonAudioFocus failed!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;-><init>()V

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
