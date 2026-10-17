.class Lcom/ailife/ClockSkinTransfer/b456/c/j;
.super Lcom/ailife/ClockSkinTransfer/b456/c/i;


# direct methods
.method public static final a(Ljava/io/File;)Lcom/ailife/ClockSkinTransfer/b456/c/d;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ailife/ClockSkinTransfer/b456/c/f;->b:Lcom/ailife/ClockSkinTransfer/b456/c/f;

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinTransfer/b456/c/g;->a(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;)Lcom/ailife/ClockSkinTransfer/b456/c/d;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;)Lcom/ailife/ClockSkinTransfer/b456/c/d;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d;-><init>(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;)V

    return-object v0
.end method
