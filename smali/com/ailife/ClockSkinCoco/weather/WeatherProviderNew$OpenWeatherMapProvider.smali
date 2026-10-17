.class public Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenWeatherMapProvider;
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
    name = "OpenWeatherMapProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Landroid/content/Context;DD)Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    invoke-static/range {p1 .. p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->getOpenWeatherMapApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "apiKey":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smgetLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "lang":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 526
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 524
    const-string v4, "https://api.openweathermap.org/data/3.0/onecall?lat=%.4f&lon=%.4f&appid=%s&units=metric&lang=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching from OpenWeatherMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WeatherProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smfetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 532
    .local v5, "root":Lorg/json/JSONObject;
    new-instance v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    invoke-direct {v6}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;-><init>()V

    .line 533
    .local v6, "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.4f"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    .line 534
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    .line 537
    const-string v7, "current"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 538
    .local v7, "current":Lorg/json/JSONObject;
    const-string v8, "temp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    .line 539
    const-string v9, "wind_deg"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v9, v12

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windDirection:F

    .line 540
    const-string v9, "wind_speed"

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-wide v14, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v12, v14

    double-to-float v9, v12

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windSpeed:F

    .line 541
    const-string v9, "humidity"

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v9, v12

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->humidity:F

    .line 542
    const-string v9, "pressure"

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v9, v12

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->pressure:F

    .line 543
    const-string v9, "clouds"

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->cloudCover:I

    .line 544
    const-string v9, "dt"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    .line 547
    const/4 v9, 0x0

    .line 548
    .local v9, "rain":F
    const-string v13, "rain"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "1h"

    if-eqz v14, :cond_0

    .line 549
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v15, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    double-to-float v9, v13

    .line 551
    :cond_0
    const/4 v13, 0x0

    .line 552
    .local v13, "snow":F
    const-string v14, "snow"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 553
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v15, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v13, v10

    .line 555
    :cond_1
    add-float v10, v9, v13

    iput v10, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    .line 558
    const-string v10, "weather"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 559
    .local v11, "weatherArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    const-string v15, "openweathermap"

    const-string v12, "id"

    if-lez v14, :cond_2

    .line 560
    move-object/from16 v17, v0

    const/4 v14, 0x0

    .end local v0    # "apiKey":Ljava/lang/String;
    .local v17, "apiKey":Ljava/lang/String;
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 561
    .local v0, "weather":Lorg/json/JSONObject;
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 564
    .local v14, "weatherId":I
    move-object/from16 v18, v0

    .end local v0    # "weather":Lorg/json/JSONObject;
    .local v18, "weather":Lorg/json/JSONObject;
    const-string v0, "sunrise"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 565
    .local v19, "sunriseEpoch":J
    const-string v0, "sunset"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 567
    .local v21, "sunsetEpoch":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    move-object/from16 v23, v1

    .end local v1    # "lang":Ljava/lang/String;
    .local v23, "lang":Ljava/lang/String;
    const-string v1, "HH:mm"

    move-object/from16 v24, v2

    .end local v2    # "url":Ljava/lang/String;
    .local v24, "url":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 568
    .local v0, "outputFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    const-wide/16 v25, 0x3e8

    move-object/from16 v27, v3

    .end local v3    # "json":Ljava/lang/String;
    .local v27, "json":Ljava/lang/String;
    mul-long v2, v19, v25

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    .line 569
    new-instance v1, Ljava/util/Date;

    mul-long v2, v21, v25

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    .line 571
    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    iget-object v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smisDaytime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 572
    .local v1, "daytime":Z
    invoke-static {v15, v14, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v2

    iput v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->weatherIcon:I

    goto :goto_0

    .line 559
    .end local v14    # "weatherId":I
    .end local v17    # "apiKey":Ljava/lang/String;
    .end local v18    # "weather":Lorg/json/JSONObject;
    .end local v19    # "sunriseEpoch":J
    .end local v21    # "sunsetEpoch":J
    .end local v23    # "lang":Ljava/lang/String;
    .end local v24    # "url":Ljava/lang/String;
    .end local v27    # "json":Ljava/lang/String;
    .local v0, "apiKey":Ljava/lang/String;
    .local v1, "lang":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v3    # "json":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v27, v3

    .line 576
    .end local v0    # "apiKey":Ljava/lang/String;
    .end local v1    # "lang":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "json":Ljava/lang/String;
    .restart local v17    # "apiKey":Ljava/lang/String;
    .restart local v23    # "lang":Ljava/lang/String;
    .restart local v24    # "url":Ljava/lang/String;
    .restart local v27    # "json":Ljava/lang/String;
    :goto_0
    const-string v0, "daily"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 577
    .local v0, "daily":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 579
    .local v1, "numDays":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 580
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 582
    .local v3, "day":Lorg/json/JSONObject;
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 583
    .local v14, "temp":Lorg/json/JSONObject;
    move-object/from16 v18, v0

    .end local v0    # "daily":Lorg/json/JSONArray;
    .local v18, "daily":Lorg/json/JSONArray;
    iget-object v0, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v2

    move/from16 v19, v1

    .end local v1    # "numDays":I
    .local v19, "numDays":I
    const-string v1, "min"

    move/from16 v20, v2

    .end local v2    # "i":I
    .local v20, "i":I
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    .line 584
    iget-object v0, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v20

    const-string v1, "max"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    .line 587
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 588
    .local v0, "dayWeatherArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 589
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 590
    .local v2, "dayWeather":Lorg/json/JSONObject;
    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v1, v1, v20

    move-object/from16 v21, v0

    .end local v0    # "dayWeatherArray":Lorg/json/JSONArray;
    .local v21, "dayWeatherArray":Lorg/json/JSONArray;
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    .line 591
    iget-object v0, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v20

    const-string v1, "description"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->description:Ljava/lang/String;

    .line 592
    iget-object v0, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v20

    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v1, v1, v20

    iget v1, v1, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    move-object/from16 v22, v2

    .end local v2    # "dayWeather":Lorg/json/JSONObject;
    .local v22, "dayWeather":Lorg/json/JSONObject;
    const/4 v2, 0x1

    invoke-static {v15, v1, v2}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v1

    iput v1, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->weatherIcon:I

    goto :goto_2

    .line 588
    .end local v21    # "dayWeatherArray":Lorg/json/JSONArray;
    .end local v22    # "dayWeather":Lorg/json/JSONObject;
    .restart local v0    # "dayWeatherArray":Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v21, v0

    .line 579
    .end local v0    # "dayWeatherArray":Lorg/json/JSONArray;
    .end local v3    # "day":Lorg/json/JSONObject;
    .end local v14    # "temp":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    .end local v20    # "i":I
    .local v2, "i":I
    goto :goto_1

    .end local v18    # "daily":Lorg/json/JSONArray;
    .end local v19    # "numDays":I
    .local v0, "daily":Lorg/json/JSONArray;
    .restart local v1    # "numDays":I
    :cond_4
    move-object/from16 v18, v0

    .line 597
    .end local v0    # "daily":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .restart local v18    # "daily":Lorg/json/JSONArray;
    const-string v0, "OpenWeatherMap data fetched successfully"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-object v6
.end method
