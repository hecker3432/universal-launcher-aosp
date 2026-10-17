.class public Lcom/ailife/healthapi/HeartRateShiftRegister;
.super Ljava/lang/Object;
.source "HeartRateShiftRegister.java"


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "heart_rate_shift_register"

.field private static final REGISTER_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HeartRateShiftRegister"

.field private static shiftRegister:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/ailife/healthapi/HeartRateShiftRegister;->shiftRegister:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addValue(Landroid/content/Context;I)V
    .registers 5

    .line 22
    const/16 v0, 0x9

    :goto_2
    if-lez v0, :cond_f

    .line 23
    sget-object v1, Lcom/ailife/healthapi/HeartRateShiftRegister;->shiftRegister:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 26
    :cond_f
    sget-object v0, Lcom/ailife/healthapi/HeartRateShiftRegister;->shiftRegister:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", register now: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ailife/healthapi/HeartRateShiftRegister;->getValuesAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeartRateShiftRegister"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Lcom/ailife/healthapi/HeartRateShiftRegister;->saveToPreferences(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static getValuesAsString()Ljava/lang/String;
    .registers 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1d

    .line 35
    sget-object v2, Lcom/ailife/healthapi/HeartRateShiftRegister;->shiftRegister:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1a

    .line 37
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 40
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-static {p0}, Lcom/ailife/healthapi/HeartRateShiftRegister;->loadFromPreferences(Landroid/content/Context;)V

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initialized with values: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ailife/healthapi/HeartRateShiftRegister;->getValuesAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HeartRateShiftRegister"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method private static loadFromPreferences(Landroid/content/Context;)V
    .registers 5

    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 52
    const-string v0, "heart_rate_shift_register"

    const-string v1, "0,0,0,0,0,0,0,0,0,0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14
    array-length v2, p0

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 56
    :try_start_1d
    sget-object v2, Lcom/ailife/healthapi/HeartRateShiftRegister;->shiftRegister:[I

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_27} :catch_28

    .line 59
    goto :goto_2d

    .line 57
    :catch_28
    move-exception v2

    .line 58
    sget-object v2, Lcom/ailife/healthapi/HeartRateShiftRegister;->shiftRegister:[I

    aput v0, v2, v1

    .line 54
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 61
    :cond_30
    return-void
.end method

.method private static saveToPreferences(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 46
    invoke-static {}, Lcom/ailife/healthapi/HeartRateShiftRegister;->getValuesAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "heart_rate_shift_register"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method
