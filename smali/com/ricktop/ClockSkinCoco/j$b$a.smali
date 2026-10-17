.class Lcom/ricktop/ClockSkinCoco/j$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields

.field final synthetic b:Lcom/ricktop/ClockSkinCoco/j$b;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j$b;Lcom/ricktop/ClockSkinCoco/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$b$a;->b:Lcom/ricktop/ClockSkinCoco/j$b;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$b$a;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method





# virtual methods
.method public run()V
    .locals 5

    # Get FPS from S1() which checks dim mode state and returns appropriate value
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->S1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "__G__SETDISPLAY__"

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method