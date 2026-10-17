.class Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;
.super Ljava/lang/Object;
.source "ViewPagerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingForAll(Z)V
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

    .line 146
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    iput-boolean p2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 149
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    monitor-enter v0

    .line 150
    nop

    .line 152
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    # getter for: Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;
    invoke-static {v2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->access$000(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 153
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    iget-boolean v6, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->val$enabled:Z

    # invokes: Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingEnabled(Ljava/lang/Object;Z)Z
    invoke-static {v5, v4, v6}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->access$100(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Ljava/lang/Object;Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 156
    :cond_2b
    goto :goto_15

    .line 157
    :cond_2c
    const-string v1, "ViewPagerManager"

    const-string v4, "Set paging=%b on %d ViewPagers"

    iget-boolean v5, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;->val$enabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    goto :goto_4f

    :goto_4e
    throw v1

    :goto_4f
    goto :goto_4e
.end method
