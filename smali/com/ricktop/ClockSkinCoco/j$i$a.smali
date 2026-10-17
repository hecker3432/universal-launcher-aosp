.class Lcom/ricktop/ClockSkinCoco/j$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j$i;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/j$i;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j$i;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$i$a;->a:Lcom/ricktop/ClockSkinCoco/j$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$i$a;->a:Lcom/ricktop/ClockSkinCoco/j$i;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/j$i;->b:Ljava/lang/String;

    const-string v1, "__G__RESETSKIN__"

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
