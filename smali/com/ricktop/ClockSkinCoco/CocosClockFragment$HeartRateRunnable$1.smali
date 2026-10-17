.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable$1;->this$0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$HeartRateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # This runs on GL thread - safe to call Lua bridge
    const-string v0, "HeartRateGLThread"

    const-string v1, "Running on GL thread, calling Lua bridge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Get all 10 heart rate values as comma-separated string
    invoke-static {}, Lcom/ailife/healthapi/HeartRateShiftRegister;->getValuesAsString()Ljava/lang/String;

    move-result-object v0

    # Log the value being sent to Lua
    const-string v2, "HeartRateGLThread"
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Call Lua function with all 10 values
    const-string v1, "__G__SETHEARTRATE__"

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HeartRateGLThread"

    const-string v1, "Lua bridge call completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
