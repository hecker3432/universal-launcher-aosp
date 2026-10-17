.class public Lcom/ailife/healthapi/healthapi;
.super Ljava/lang/Object;
.source "healthapi.java"


# static fields
.field static calorie:D

.field static distance:D

.field static heartRate:I

.field static bloodOxygen:I

.field static lastUpdate:J

.field static receiver:Landroid/content/BroadcastReceiver;

.field static step:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ailife/healthapi/healthapi;->lastUpdate:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ailife/healthapi/healthapi;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ailife/healthapi/healthapi;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "healthAPI"

    const-string v1, "Receiver unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getData(Landroid/content/Context;)V
    .locals 7

    sget-object v0, Lcom/ailife/healthapi/healthapi;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    # Get current time
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # Get last update time
    sget-wide v2, Lcom/ailife/healthapi/healthapi;->lastUpdate:J

    # Calculate elapsed time
    sub-long/2addr v0, v2

    # Read update interval from SharedPreferences
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    # Get healthUpdateInterval preference (default "10")
    const-string v3, "healthUpdateInterval"

    const-string v4, "10"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # Parse to int (minutes)
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # Convert minutes to milliseconds: v2 * 60000
    const v3, 0xea60

    mul-int/2addr v2, v3

    # Convert to long for comparison
    int-to-long v2, v2

    # Compare elapsed time with interval
    cmp-long v0, v0, v2

    # If elapsed < interval, return early
    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ailife/healthapi/healthapi;->lastUpdate:J

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ailife.betterhealth.GET_DATA_API"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.ailife.betterhealth"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "stepEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "healthAPI"

    const-string v5, "TYPE"

    const-string v6, "DATA"

    if-eqz v2, :cond_3

    const-string v2, "STEP"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rawStep"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RAW"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "TODAY"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "DISTANCE"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "CALORIE"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "Requested step"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "heartEnabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "HR"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rawHeart"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AUTO"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v2, "LAST"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "Requested heart rate"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ailife.betterhealth.DATA_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/ailife/healthapi/healthapi$1;

    invoke-direct {v1}, Lcom/ailife/healthapi/healthapi$1;-><init>()V

    sput-object v1, Lcom/ailife/healthapi/healthapi;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/ailife/healthapi/healthapi;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_3

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_3

    :old_api_registerReceiver_compat_3
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_3

    const-string v1, "healthAPI"

    const-string v2, "Receiver registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Initialize heart rate shift register
    invoke-static {p0}, Lcom/ailife/healthapi/HeartRateShiftRegister;->init(Landroid/content/Context;)V

    return-void
.end method
