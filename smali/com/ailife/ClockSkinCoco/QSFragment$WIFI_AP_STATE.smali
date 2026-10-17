.class public final enum Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;
.super Ljava/lang/Enum;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/QSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WIFI_AP_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_DISABLED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_DISABLING:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_ENABLED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_ENABLING:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

.field public static final enum WIFI_AP_STATE_FAILED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;


# direct methods
.method private static synthetic $values()[Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;
    .registers 3

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    sget-object v1, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_DISABLING:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_DISABLED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLING:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_FAILED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 118
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const-string v1, "WIFI_AP_STATE_DISABLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_DISABLING:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    .line 119
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const-string v1, "WIFI_AP_STATE_DISABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_DISABLED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    .line 120
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const-string v1, "WIFI_AP_STATE_ENABLING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLING:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    .line 121
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const-string v1, "WIFI_AP_STATE_ENABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    .line 122
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    const-string v1, "WIFI_AP_STATE_FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_FAILED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    .line 117
    invoke-static {}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->$values()[Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->$VALUES:[Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;
    .registers 2

    .line 117
    const-class v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    return-object p0
.end method

.method public static values()[Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;
    .registers 1

    .line 117
    sget-object v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->$VALUES:[Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    invoke-virtual {v0}, [Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    return-object v0
.end method
