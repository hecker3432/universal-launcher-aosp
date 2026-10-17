.class public final synthetic Lcom/ailife/ClockSkinTransfer/b456/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/a/u;->values()[Lcom/ailife/ClockSkinTransfer/b456/a/u;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ailife/ClockSkinTransfer/b456/a/b;->a:[I

    sget-object v0, Lcom/ailife/ClockSkinTransfer/b456/a/b;->a:[I

    sget-object v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;->c:Lcom/ailife/ClockSkinTransfer/b456/a/u;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinTransfer/b456/a/u;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/b456/a/b;->a:[I

    sget-object v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;->a:Lcom/ailife/ClockSkinTransfer/b456/a/u;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinTransfer/b456/a/u;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
