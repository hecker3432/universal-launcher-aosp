.class Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;
.super Ljava/lang/Object;
.source "ViewPagerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ViewPagerManager;->sendPagingBroadcast(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    iput-boolean p2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 268
    const-string v0, "ViewPagerManager"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ailife.ClockSkinCoco.SET_PAGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;->val$enabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    # getter for: Lcom/ailife/ClockSkinCoco/ViewPagerManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->access$200(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    const-string v1, "Broadcast sent: enabled=%b"

    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;->val$enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    .line 274
    goto :goto_35

    .line 272
    :catch_2f
    move-exception v1

    .line 273
    const-string v2, "Failed to send paging broadcast"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :goto_35
    return-void
.end method
