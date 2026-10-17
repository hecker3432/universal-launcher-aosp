.class Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;
.super Ljava/lang/Object;
.source "UltraBatterySaverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->notifyLuaIfLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

.field final synthetic val$finalPassword:Ljava/lang/String;

.field final synthetic val$passwordType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;->this$0:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;->val$finalPassword:Ljava/lang/String;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;->val$passwordType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 201
    const-string v0, "UBSManager"

    const-string v1, "Notifying Lua of locked state (delayed)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;->this$0:Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;->val$finalPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager$1;->val$passwordType:Ljava/lang/String;

    # invokes: Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->setLuaLocked(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;->access$000(Lcom/ailife/ClockSkinCoco/UltraBatterySaverManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
