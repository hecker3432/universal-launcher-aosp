.class public LZ/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ/c$c;,
        LZ/c$b;
    }
.end annotation


# static fields
.field private static a:J = 0x0L

.field private static b:J = 0x0L

.field private static c:[LZ/c$c; = null

.field private static d:I = -0x1

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [LZ/c$c;

    sput-object v0, LZ/c;->c:[LZ/c$c;

    sput-object p1, LZ/c;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creation :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APIWeather"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a()[LZ/c$c;
    .locals 1

    sget-object v0, LZ/c;->c:[LZ/c$c;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, LZ/c;->d:I

    return v0
.end method

.method static synthetic c(I)I
    .locals 0

    sput p0, LZ/c;->d:I

    return p0
.end method

.method static synthetic d(J)J
    .locals 0

    sput-wide p0, LZ/c;->g:J

    return-wide p0
.end method

.method static synthetic e(J)J
    .locals 0

    sput-wide p0, LZ/c;->f:J

    return-wide p0
.end method

.method static synthetic f(J)J
    .locals 0

    sput-wide p0, LZ/c;->a:J

    return-wide p0
.end method

.method private static h(I)I
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sget-wide v2, LZ/c;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sget-wide v3, LZ/c;->f:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sparse-switch p0, :sswitch_data_0

    return v4

    :sswitch_0
    const/16 p0, 0x42

    return p0

    :sswitch_1
    const/16 p0, 0x37

    return p0

    :sswitch_2
    const/16 p0, 0x4b

    return p0

    :sswitch_3
    const/16 p0, 0x2c

    return p0

    :sswitch_4
    const/16 p0, 0x61

    return p0

    :sswitch_5
    const/16 p0, 0x57

    return p0

    :sswitch_6
    const/16 p0, 0x26

    return p0

    :sswitch_7
    if-eqz v3, :cond_1

    const/16 p0, 0xd

    return p0

    :cond_1
    const/16 p0, 0x8f

    return p0

    :sswitch_8
    if-eqz v3, :cond_2

    const/16 p0, 0xc

    return p0

    :cond_2
    const/16 p0, 0x8e

    return p0

    :sswitch_9
    if-eqz v3, :cond_3

    const/16 p0, 0xb

    return p0

    :cond_3
    const/16 p0, 0x8d

    return p0

    :sswitch_a
    if-eqz v3, :cond_4

    return v4

    :cond_4
    const/16 p0, 0x82

    return p0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_a
        0x3eb -> :sswitch_9
        0x3ee -> :sswitch_8
        0x3f1 -> :sswitch_7
        0x406 -> :sswitch_6
        0x427 -> :sswitch_9
        0x42a -> :sswitch_9
        0x42d -> :sswitch_9
        0x430 -> :sswitch_9
        0x43f -> :sswitch_9
        0x45a -> :sswitch_5
        0x45d -> :sswitch_6
        0x46f -> :sswitch_6
        0x47b -> :sswitch_6
        0x47e -> :sswitch_4
        0x481 -> :sswitch_4
        0x490 -> :sswitch_4
        0x493 -> :sswitch_4
        0x49c -> :sswitch_3
        0x49f -> :sswitch_3
        0x4a2 -> :sswitch_3
        0x4a5 -> :sswitch_3
        0x4a8 -> :sswitch_2
        0x4ab -> :sswitch_2
        0x4ae -> :sswitch_4
        0x4b1 -> :sswitch_4
        0x4b4 -> :sswitch_3
        0x4b7 -> :sswitch_3
        0x4ba -> :sswitch_5
        0x4bd -> :sswitch_5
        0x4c0 -> :sswitch_5
        0x4c3 -> :sswitch_5
        0x4c6 -> :sswitch_5
        0x4c9 -> :sswitch_5
        0x4d5 -> :sswitch_5
        0x4d8 -> :sswitch_1
        0x4db -> :sswitch_1
        0x4de -> :sswitch_1
        0x4e1 -> :sswitch_1
        0x4e4 -> :sswitch_1
        0x4e7 -> :sswitch_1
        0x4ea -> :sswitch_5
        0x4ed -> :sswitch_5
        0x4f0 -> :sswitch_5
        0x4f9 -> :sswitch_0
        0x4fc -> :sswitch_0
        0x4ff -> :sswitch_0
        0x502 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public g(I)LZ/c$c;
    .locals 2

    sget-object v0, LZ/c;->c:[LZ/c$c;

    if-eqz v0, :cond_1

    sget v1, LZ/c;->d:I

    if-gt p1, v1, :cond_1

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    # REMOVED: Old weather icon mapping that was overwriting the correct icon
    # The new weather system (WeatherHelper + ZcWeatherCallback) already sets
    # the correct weatherIcon in field m, so we don't need to remap it here.
    # OLD CODE:
    #   iget v1, v0, LZ/c$c;->n:I
    #   invoke-static {v1}, LZ/c;->h(I)I
    #   move-result v1
    #   iput v1, v0, LZ/c$c;->m:I

    sget-object v0, LZ/c;->c:[LZ/c$c;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()F
    .locals 2

    sget-object v0, LZ/c;->c:[LZ/c$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, v0, LZ/c$c;->c:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrieve from :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LZ/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIWeather"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, LZ/c;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request in progress since : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, LZ/c;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1

    # check auto or manual

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v3, "weatherEnabled"

    const/4 v2, 0x1

    invoke-interface {v10, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "weather update disabled"

    const-string v1, "APIWeather"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    # NEW WEATHER SYSTEM - Using WeatherHelper with multi-provider support

    # Read weatherAutoLocation preference (default true - auto location enabled by default)
    const-string v3, "weatherAutoLocation"

    const/4 v2, 0x1

    invoke-interface {v10, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    # v1 now contains autoLocation boolean

    # If not auto-location, get manual coordinates
    if-eqz v1, :use_auto_location

    # Auto-location enabled - set coordinates to 0,0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    goto :call_weather_helper

    :use_auto_location

    # Get manual lat/lon from Skin_Weather_Location_1
    const-string v2, "Skin_Weather_Location_1"

    const-string v3, "London,0.1234,0.1234"

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    # Get latitude from index 1
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    # Get longitude from index 2
    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :call_weather_helper

    # Get context
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    # Create callback
    new-instance v8, LZ/ZcWeatherCallback;

    invoke-direct {v8}, LZ/ZcWeatherCallback;-><init>()V

    # Reorganize registers to be consecutive for /range
    # v2 = Context
    # v3 = boolean (autoLocation)
    # v4-v5 = double (latitude)
    # v6-v7 = double (longitude)
    # v8 = WeatherCallback

    move v3, v1

    # Call WeatherHelper.fetchWeatherWithAutoLocation(Context, boolean, double, double, WeatherCallback)
    # Parameters: Context(v2), Z(v3), D(v4-v5), D(v6-v7), Callback(v8)
    # Total: 7 parameter words (v2=1, v3=1, v4-v5=2, v6-v7=2, v8=1)
    invoke-static/range {v2 .. v8}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchWeatherWithAutoLocation(Landroid/content/Context;ZDDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V

    # Update request timestamp
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LZ/c;->b:J

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no internet connection :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LZ/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public k(Ljava/lang/String;Z)Z
    .locals 8

    #go to j directly use weatherapi but keep update interval(configurable)

    # Get current time
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # Get last update time
    sget-wide v6, LZ/c;->a:J

    # Calculate elapsed time (stored in v2)
    sub-long/2addr v2, v6

    # Get Context from WatchApp singleton
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    # Get SharedPreferences
    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    # Get weatherUpdateInterval preference (default "10")
    const-string v4, "weatherUpdateInterval"

    const-string v5, "10"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # Parse to int (minutes)
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    # Convert minutes to milliseconds: v0 * 60000
    const v4, 0xea60

    mul-int/2addr v0, v4

    # Convert to long for comparison
    int-to-long v6, v0

    # Compare elapsed time (v2) with interval (v6)
    cmp-long p2, v2, v6

    # If elapsed < interval, skip update
    if-gez p2, :cond_1

    const-string p1, "No need to update"

    const-string v1, "APIWeather"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_1
    sput-object p1, LZ/c;->e:Ljava/lang/String;

    const-wide/16 p1, 0x0

    sput-wide p1, LZ/c;->a:J

    invoke-virtual {p0}, LZ/c;->j()V

    const/4 v4, 0x0

    return v4
.end method
