.class Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$2;
.super Ljava/lang/Object;
.source "UltraBatterySaverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->setLuaLocked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

.field final synthetic val$luaArg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$2;->this$0:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$2;->val$luaArg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 232
    const-string v0, "__G__SETUBSLOCKED__"

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$2;->val$luaArg:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method
