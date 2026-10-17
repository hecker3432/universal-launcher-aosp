.class Lcom/ricktop/ClockSkinCoco/j$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j$g;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$g$a;->a:Lcom/ricktop/ClockSkinCoco/j$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$g$a;->a:Lcom/ricktop/ClockSkinCoco/j$g;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/j;->c(Lcom/ricktop/ClockSkinCoco/j;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__G__SETSCALE__"

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
