.class final enum Lcom/ailife/ClockSkinTransfer/b456/a/u;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ailife/ClockSkinTransfer/b456/a/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ailife/ClockSkinTransfer/b456/a/u;

.field public static final enum b:Lcom/ailife/ClockSkinTransfer/b456/a/u;

.field public static final enum c:Lcom/ailife/ClockSkinTransfer/b456/a/u;

.field public static final enum d:Lcom/ailife/ClockSkinTransfer/b456/a/u;

.field private static final synthetic e:[Lcom/ailife/ClockSkinTransfer/b456/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ailife/ClockSkinTransfer/b456/a/u;

    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;

    const-string v2, "Ready"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;->a:Lcom/ailife/ClockSkinTransfer/b456/a/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;

    const-string v2, "NotReady"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;->b:Lcom/ailife/ClockSkinTransfer/b456/a/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;

    const-string v2, "Done"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;->c:Lcom/ailife/ClockSkinTransfer/b456/a/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;

    const-string v2, "Failed"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/a/u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ailife/ClockSkinTransfer/b456/a/u;->d:Lcom/ailife/ClockSkinTransfer/b456/a/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ailife/ClockSkinTransfer/b456/a/u;->e:[Lcom/ailife/ClockSkinTransfer/b456/a/u;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/b456/a/u;
    .locals 1

    const-class v0, Lcom/ailife/ClockSkinTransfer/b456/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ailife/ClockSkinTransfer/b456/a/u;

    return-object p0
.end method

.method public static values()[Lcom/ailife/ClockSkinTransfer/b456/a/u;
    .locals 1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/b456/a/u;->e:[Lcom/ailife/ClockSkinTransfer/b456/a/u;

    invoke-virtual {v0}, [Lcom/ailife/ClockSkinTransfer/b456/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ailife/ClockSkinTransfer/b456/a/u;

    return-object v0
.end method
