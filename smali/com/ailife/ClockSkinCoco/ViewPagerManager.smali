.class public Lcom/ailife/ClockSkinCoco/ViewPagerManager;
.super Ljava/lang/Object;
.source "ViewPagerManager.java"


# static fields
.field private static final ACTION_GO_HOME:Ljava/lang/String; = "com.ailife.ClockSkinCoco.GO_HOME"

.field private static final ACTION_SET_PAGING:Ljava/lang/String; = "com.ailife.ClockSkinCoco.SET_PAGING"

.field private static final DEFAULT_BROADCAST_DELAY_MS:J = 0x320L

.field private static final GO_HOME_DELAY_MS:J = 0x64L

.field public static final LOCKED:I = 0x1

.field public static final LOCKED_BY_UBS:I = 0x2

.field public static final SOURCE_AOD:I = 0x1

.field public static final SOURCE_MANUAL:I = 0x3

.field public static final SOURCE_UBS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPagerManager"

.field public static final UNLOCKED:I

.field private static instance:Lcom/ailife/ClockSkinCoco/ViewPagerManager;


# instance fields
.field private context:Landroid/content/Context;

.field private currentState:I

.field private handler:Landroid/os/Handler;

.field private lockSource:I

.field private registeredViewPagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    .line 55
    iput v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lockSource:I

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->context:Landroid/content/Context;

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->handler:Landroid/os/Handler;

    .line 63
    const-string p1, "ViewPagerManager"

    const-string v0, "ViewPagerManager initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)Ljava/util/Set;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Ljava/lang/Object;Z)Z
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingEnabled(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;
    .registers 3

    const-class v0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->instance:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    if-nez v1, :cond_e

    .line 68
    new-instance v1, Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->instance:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    .line 70
    :cond_e
    sget-object p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->instance:Lcom/ailife/ClockSkinCoco/ViewPagerManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 66
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private sendGoHomeBroadcast(J)V
    .registers 7

    .line 291
    new-instance v0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$3;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager$3;-><init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)V

    .line 304
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_26

    .line 305
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "GO_HOME broadcast scheduled with %dms delay"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewPagerManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 308
    :cond_26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 310
    :goto_29
    return-void
.end method

.method private sendPagingBroadcast(ZJ)V
    .registers 7

    .line 264
    new-instance v0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager$2;-><init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Z)V

    .line 278
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_26

    .line 279
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Broadcast scheduled with %dms delay"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewPagerManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 282
    :cond_26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 284
    :goto_29
    return-void
.end method

.method private setPagingEnabled(Ljava/lang/Object;Z)Z
    .registers 9

    .line 172
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setPagingEnabled"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 174
    return v3

    .line 175
    :catch_1e
    move-exception p2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set paging on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPagerManager"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return v0
.end method

.method private setPagingForAll(Z)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager$1;-><init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;-><init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method


# virtual methods
.method public declared-synchronized canOperate(I)Z
    .registers 5

    monitor-enter p0

    .line 87
    :try_start_1
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 101
    monitor-exit p0

    return v1

    .line 98
    :pswitch_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    monitor-exit p0

    return v1

    .line 94
    :pswitch_10
    if-eq p1, v2, :cond_15

    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    :cond_15
    const/4 v1, 0x1

    :cond_16
    monitor-exit p0

    return v1

    .line 90
    :pswitch_18
    monitor-exit p0

    return v2

    .line 86
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method public declared-synchronized getState()I
    .registers 2

    monitor-enter p0

    .line 78
    :try_start_1
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 78
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isLocked()Z
    .registers 2

    monitor-enter p0

    .line 329
    :try_start_1
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 329
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized isLockedByUBS()Z
    .registers 3

    monitor-enter p0

    .line 336
    :try_start_1
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    .line 336
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public lock(I)Z
    .registers 4

    .line 248
    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lock(IJ)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized lock(IJ)Z
    .registers 9

    monitor-enter p0

    .line 188
    :try_start_1
    const-string p2, "ViewPagerManager"

    const-string p3, "lock() called by source=%d, current state=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-wide/16 p2, 0x64

    if-ne p1, v2, :cond_3b

    .line 192
    iput v2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    .line 193
    iput v2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lockSource:I

    .line 194
    invoke-direct {p0, p2, p3}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->sendGoHomeBroadcast(J)V

    .line 195
    invoke-direct {p0, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingForAll(Z)V

    .line 196
    const-string p1, "ViewPager locked"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->showToast(Ljava/lang/String;)V

    .line 197
    const-string p1, "ViewPagerManager"

    const-string p2, "ViewPager locked by UBS"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_77

    .line 198
    monitor-exit p0

    return v0

    .line 202
    :cond_3b
    :try_start_3b
    iget v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    if-ne v1, v2, :cond_48

    .line 203
    const-string p1, "ViewPagerManager"

    const-string p2, "Cannot lock - already locked by UBS"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_77

    .line 204
    monitor-exit p0

    return v4

    .line 208
    :cond_48
    :try_start_48
    iget v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    if-eqz v1, :cond_53

    iget v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_77

    if-ne v1, v0, :cond_51

    goto :goto_53

    .line 218
    :cond_51
    monitor-exit p0

    return v4

    .line 209
    :cond_53
    :goto_53
    :try_start_53
    iput v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    .line 210
    iput p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lockSource:I

    .line 211
    invoke-direct {p0, p2, p3}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->sendGoHomeBroadcast(J)V

    .line 212
    invoke-direct {p0, v4}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingForAll(Z)V

    .line 213
    const-string p2, "ViewPager locked"

    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->showToast(Ljava/lang/String;)V

    .line 214
    const-string p2, "ViewPagerManager"

    const-string p3, "ViewPager locked by source=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_77

    .line 215
    monitor-exit p0

    return v0

    .line 187
    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p1
.end method

.method public declared-synchronized registerViewPager(Ljava/lang/Object;)V
    .registers 10

    monitor-enter p0

    .line 111
    if-nez p1, :cond_c

    .line 112
    :try_start_3
    const-string p1, "ViewPagerManager"

    const-string v0, "Cannot register null ViewPager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_53

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 120
    :goto_1a
    invoke-direct {p0, p1, v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingEnabled(Ljava/lang/Object;Z)Z

    .line 122
    const-string v3, "ViewPagerManager"

    const-string v4, "ViewPager registered: %s, paging=%b (state=%d, total=%d)"

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v5, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v0, v7, v1

    const/4 p1, 0x2

    aput-object v5, v7, p1

    const/4 p1, 0x3

    aput-object v6, v7, p1

    .line 122
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_c .. :try_end_51} :catchall_53

    .line 124
    monitor-exit p0

    return-void

    .line 110
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public unlock(I)Z
    .registers 4

    .line 255
    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->unlock(IJ)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized unlock(IJ)Z
    .registers 9

    monitor-enter p0

    .line 228
    :try_start_1
    const-string p2, "ViewPagerManager"

    const-string p3, "unlock() called by source=%d, current state=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->canOperate(I)Z

    move-result p2

    if-nez p2, :cond_42

    .line 232
    const-string p2, "ViewPagerManager"

    const-string p3, "Source %d cannot unlock from state %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v1, v2, v0

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_57

    .line 233
    monitor-exit p0

    return v4

    .line 236
    :cond_42
    :try_start_42
    iput v4, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->currentState:I

    .line 237
    iput v4, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->lockSource:I

    .line 238
    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->setPagingForAll(Z)V

    .line 239
    const-string p1, "ViewPager unlocked"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->showToast(Ljava/lang/String;)V

    .line 240
    const-string p1, "ViewPagerManager"

    const-string p2, "ViewPager unlocked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_57

    .line 241
    monitor-exit p0

    return v0

    .line 227
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public declared-synchronized unregisterViewPager(Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 132
    if-nez p1, :cond_5

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 136
    const-string v0, "ViewPagerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " (total: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registeredViewPagers:Ljava/util/Set;

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_42

    .line 138
    monitor-exit p0

    return-void

    .line 131
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method
