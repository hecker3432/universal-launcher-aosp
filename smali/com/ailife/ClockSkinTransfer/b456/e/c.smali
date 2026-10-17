.class public final Lcom/ailife/ClockSkinTransfer/b456/e/c;
.super Lcom/ailife/ClockSkinTransfer/b456/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinTransfer/b456/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ailife/ClockSkinTransfer/b456/e/a;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ailife/ClockSkinTransfer/b456/e/c$a;

.field private static final c:Lcom/ailife/ClockSkinTransfer/b456/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ailife/ClockSkinTransfer/b456/e/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ailife/ClockSkinTransfer/b456/e/c$a;-><init>(Lcom/ailife/ClockSkinTransfer/b456/d/b/a;)V

    sput-object v0, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b:Lcom/ailife/ClockSkinTransfer/b456/e/c$a;

    new-instance v0, Lcom/ailife/ClockSkinTransfer/b456/e/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/e/c;-><init>(II)V

    sput-object v0, Lcom/ailife/ClockSkinTransfer/b456/e/c;->c:Lcom/ailife/ClockSkinTransfer/b456/e/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/e/a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/ailife/ClockSkinTransfer/b456/e/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/e/c;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->a()I

    move-result v0

    check-cast p1, Lcom/ailife/ClockSkinTransfer/b456/e/c;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
