.class public Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenMeteoProvider;
.super Ljava/lang/Object;
.source "WeatherProviderNew.java"

# interfaces
.implements Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenMeteoProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWMODescription(I)Ljava/lang/String;
    .registers 3
    .param p1, "code"    # I

    .line 495
    if-nez p1, :cond_5

    const-string v0, "Clear sky"

    return-object v0

    .line 496
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const-string v0, "Mainly clear"

    return-object v0

    .line 497
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    const-string v0, "Partly cloudy"

    return-object v0

    .line 498
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    const-string v0, "Overcast"

    return-object v0

    .line 499
    :cond_17
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_89

    const/16 v0, 0x30

    if-ne p1, v0, :cond_20

    goto :goto_89

    .line 500
    :cond_20
    const/16 v0, 0x33

    if-lt p1, v0, :cond_2b

    const/16 v0, 0x37

    if-gt p1, v0, :cond_2b

    const-string v0, "Drizzle"

    return-object v0

    .line 501
    :cond_2b
    const/16 v0, 0x38

    if-lt p1, v0, :cond_36

    const/16 v0, 0x39

    if-gt p1, v0, :cond_36

    const-string v0, "Freezing drizzle"

    return-object v0

    .line 502
    :cond_36
    const/16 v0, 0x3d

    if-lt p1, v0, :cond_41

    const/16 v0, 0x41

    if-gt p1, v0, :cond_41

    const-string v0, "Rain"

    return-object v0

    .line 503
    :cond_41
    const/16 v0, 0x42

    if-lt p1, v0, :cond_4c

    const/16 v0, 0x43

    if-gt p1, v0, :cond_4c

    const-string v0, "Freezing rain"

    return-object v0

    .line 504
    :cond_4c
    const/16 v0, 0x47

    if-lt p1, v0, :cond_57

    const/16 v0, 0x4b

    if-gt p1, v0, :cond_57

    const-string v0, "Snow"

    return-object v0

    .line 505
    :cond_57
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_5e

    const-string v0, "Snow grains"

    return-object v0

    .line 506
    :cond_5e
    const/16 v0, 0x50

    if-lt p1, v0, :cond_69

    const/16 v0, 0x52

    if-gt p1, v0, :cond_69

    const-string v0, "Rain showers"

    return-object v0

    .line 507
    :cond_69
    const/16 v0, 0x55

    if-lt p1, v0, :cond_74

    const/16 v0, 0x56

    if-gt p1, v0, :cond_74

    const-string v0, "Snow showers"

    return-object v0

    .line 508
    :cond_74
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_7b

    const-string v0, "Thunderstorm"

    return-object v0

    .line 509
    :cond_7b
    const/16 v0, 0x60

    if-lt p1, v0, :cond_86

    const/16 v0, 0x63

    if-gt p1, v0, :cond_86

    const-string v0, "Thunderstorm with hail"

    return-object v0

    .line 510
    :cond_86
    const-string v0, "Unknown"

    return-object v0

    .line 499
    :cond_89
    :goto_89
    const-string v0, "Fog"

    return-object v0
.end method


# virtual methods
.method public fetch(Landroid/content/Context;DD)Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 434
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 428
    const-string v2, "https://api.open-meteo.com/v1/forecast?latitude=%.4f&longitude=%.4f&current=temperature_2m,relative_humidity_2m,precipitation,cloud_cover,pressure_msl,wind_speed_10m,wind_direction_10m,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=7"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching from Open-Meteo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smfetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 440
    .local v3, "root":Lorg/json/JSONObject;
    new-instance v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    invoke-direct {v4}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;-><init>()V

    .line 441
    .local v4, "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%.4f"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    .line 442
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    .line 445
    const-string v5, "current"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 446
    .local v5, "current":Lorg/json/JSONObject;
    const-string v6, "temperature_2m"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    .line 447
    const-string v6, "wind_direction_10m"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windDirection:F

    .line 448
    const-string v6, "wind_speed_10m"

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide v11, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v9, v11

    double-to-float v6, v9

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windSpeed:F

    .line 449
    const-string v6, "relative_humidity_2m"

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->humidity:F

    .line 450
    const-string v6, "pressure_msl"

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->pressure:F

    .line 451
    const-string v6, "cloud_cover"

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-int v6, v9

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->cloudCover:I

    .line 452
    const-string v6, "precipitation"

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    .line 455
    const-string v6, "weather_code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 458
    .local v7, "currentWeatherCode":I
    const-string v8, "daily"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 459
    .local v8, "daily":Lorg/json/JSONObject;
    const-string v9, "sunrise"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 460
    .local v9, "sunrises":Lorg/json/JSONArray;
    const-string v10, "sunset"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 461
    .local v10, "sunsets":Lorg/json/JSONArray;
    const-string v11, "temperature_2m_min"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 462
    .local v11, "minTemps":Lorg/json/JSONArray;
    const-string v12, "temperature_2m_max"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 463
    .local v12, "maxTemps":Lorg/json/JSONArray;
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 466
    .local v6, "weatherCodes":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 467
    .local v14, "sunriseStr":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 469
    .local v13, "sunsetStr":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v0

    .end local v0    # "url":Ljava/lang/String;
    .local v16, "url":Ljava/lang/String;
    const-string v0, "yyyy-MM-dd\'T\'HH:mm"

    move-object/from16 v17, v1

    .end local v1    # "json":Ljava/lang/String;
    .local v17, "json":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    .local v15, "isoFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    move-object/from16 v18, v3

    .end local v3    # "root":Lorg/json/JSONObject;
    .local v18, "root":Lorg/json/JSONObject;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 472
    .local v0, "outputFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    .line 473
    invoke-virtual {v15, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    .line 476
    iget-object v1, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    iget-object v3, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smisDaytime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 477
    .local v1, "daytime":Z
    const-string v3, "openmeteo"

    move-object/from16 v19, v0

    .end local v0    # "outputFormat":Ljava/text/SimpleDateFormat;
    .local v19, "outputFormat":Ljava/text/SimpleDateFormat;
    invoke-static {v3, v7, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v0

    iput v0, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->weatherIcon:I

    .line 480
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    move/from16 v20, v1

    .end local v1    # "daytime":Z
    .local v20, "daytime":Z
    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 481
    .local v0, "numDays":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12e
    if-ge v1, v0, :cond_184

    .line 482
    move/from16 v21, v0

    .end local v0    # "numDays":I
    .local v21, "numDays":I
    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v1

    move/from16 v22, v7

    move-object/from16 v23, v8

    .end local v7    # "currentWeatherCode":I
    .end local v8    # "daily":Lorg/json/JSONObject;
    .local v22, "currentWeatherCode":I
    .local v23, "daily":Lorg/json/JSONObject;
    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    .line 483
    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v1

    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    .line 484
    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    .line 485
    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v1

    iget-object v7, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    move-object/from16 v8, p0

    invoke-direct {v8, v7}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenMeteoProvider;->getWMODescription(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->description:Ljava/lang/String;

    .line 486
    iget-object v0, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v1

    iget-object v7, v4, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    move/from16 v24, v1

    .end local v1    # "i":I
    .local v24, "i":I
    const/4 v1, 0x1

    invoke-static {v3, v7, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v1

    iput v1, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->weatherIcon:I

    .line 481
    add-int/lit8 v1, v24, 0x1

    move/from16 v0, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    .end local v24    # "i":I
    .restart local v1    # "i":I
    goto :goto_12e

    .end local v21    # "numDays":I
    .end local v22    # "currentWeatherCode":I
    .end local v23    # "daily":Lorg/json/JSONObject;
    .restart local v0    # "numDays":I
    .restart local v7    # "currentWeatherCode":I
    .restart local v8    # "daily":Lorg/json/JSONObject;
    :cond_184
    move/from16 v21, v0

    .line 490
    .end local v0    # "numDays":I
    .end local v1    # "i":I
    .restart local v21    # "numDays":I
    const-string v0, "Open-Meteo data fetched successfully"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v4
.end method
