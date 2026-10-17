.class Lcom/ricktop/ClockSkinCoco/MainActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/MainActivity$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ricktop/ClockSkinCoco/MainActivity$a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/MainActivity$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a$a;->b:Lcom/ricktop/ClockSkinCoco/MainActivity$a;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "__G__SETSKIN__"

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
