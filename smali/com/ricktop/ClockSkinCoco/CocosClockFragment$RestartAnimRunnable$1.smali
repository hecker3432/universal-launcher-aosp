.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable$1;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$RestartAnimRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "restartAllTextAnimations"

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
