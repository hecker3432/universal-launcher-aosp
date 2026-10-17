.class public final Lcom/ailife/ClockSkinTransfer/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ailife/ClockSkinTransfer/a123/a$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ailife/ClockSkinTransfer/a123/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const-string v0, "executorService"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/a;->a:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/ClockSkinTransfer/a123/a$b;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinTransfer/a123/a$b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/ailife/ClockSkinTransfer/a123/a$b;)V
    .locals 1

    const-string v0, "clientHandler"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/ailife/ClockSkinTransfer/a123/a$b;)V
    .locals 2

    const-string v0, "clientHandler"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a;->b:Ljava/util/concurrent/ExecutorService;

    move-object v1, p1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
