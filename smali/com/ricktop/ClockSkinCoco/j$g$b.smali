.class Lcom/ricktop/ClockSkinCoco/j$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j$g;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/j$g;

# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j$g;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$g$b;->a:Lcom/ricktop/ClockSkinCoco/j$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 2

    # Call FORCERELOAD on the GL thread for thread-safe scene recreation
    const-string v0, "__G__FORCERELOAD__"

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
