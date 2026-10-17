.class abstract Lcom/ailife/ClockSkinTransfer/b456/c/d$a;
.super Lcom/ailife/ClockSkinTransfer/b456/c/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/b456/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "rootDir"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d$c;-><init>(Ljava/io/File;)V

    sget-boolean v0, Lcom/ailife/ClockSkinTransfer/b456/e;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    sget-boolean v0, Lcom/ailife/ClockSkinTransfer/b456/e;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "rootDir must be verified to be directory beforehand."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
