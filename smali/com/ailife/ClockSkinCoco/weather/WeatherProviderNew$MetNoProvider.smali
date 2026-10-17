.class public Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;
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
    name = "MetNoProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildForecastFromHourly(Lcom/ailife/ClockSkinCoco/weather/WeatherData;Lorg/json/JSONArray;)V
    .registers 26
    .param p1, "data"    # Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .param p2, "timeseries"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    move-object/from16 v0, p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 345
    .local v1, "dayFormat":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    .line 346
    .local v3, "dayKeys":[Ljava/lang/String;
    new-array v4, v2, [F

    .line 347
    .local v4, "minTemps":[F
    new-array v5, v2, [F

    .line 348
    .local v5, "maxTemps":[F
    new-array v6, v2, [I

    .line 349
    .local v6, "symbolCodes":[I
    new-array v7, v2, [Ljava/lang/String;

    .line 352
    .local v7, "descriptions":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_17
    const/4 v9, 0x1

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v11, 0x1

    if-ge v8, v2, :cond_3d

    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 354
    .local v12, "cal":Ljava/util/Calendar;
    const/4 v13, 0x5

    invoke-virtual {v12, v13, v8}, Ljava/util/Calendar;->add(II)V

    .line 355
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v8

    .line 356
    aput v10, v4, v8

    .line 357
    aput v9, v5, v8

    .line 358
    aput v11, v6, v8

    .line 359
    const-string v9, "Clear"

    aput-object v9, v7, v8

    .line 352
    .end local v12    # "cal":Ljava/util/Calendar;
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 363
    .end local v8    # "i":I
    :cond_3d
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v8, v12, :cond_109

    .line 364
    move-object/from16 v12, p2

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 365
    .local v13, "entry":Lorg/json/JSONObject;
    const-string v14, "time"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 366
    .local v14, "time":Ljava/lang/String;
    const/4 v15, 0x0

    move/from16 v16, v9

    const/16 v9, 0xa

    invoke-virtual {v14, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "day":Ljava/lang/String;
    const/4 v15, -0x1

    .line 370
    .local v15, "dayIndex":I
    const/16 v17, 0x0

    move/from16 v18, v10

    move/from16 v10, v17

    .local v10, "d":I
    :goto_60
    if-ge v10, v2, :cond_70

    .line 371
    aget-object v11, v3, v10

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 372
    move v15, v10

    .line 373
    goto :goto_70

    .line 370
    :cond_6c
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_60

    .line 377
    .end local v10    # "d":I
    :cond_70
    :goto_70
    if-ltz v15, :cond_f1

    .line 378
    const-string v10, "data"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v2, "instant"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v11, "details"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 379
    .local v2, "details":Lorg/json/JSONObject;
    const-string v11, "air_temperature"

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "dayKeys":[Ljava/lang/String;
    .end local v4    # "minTemps":[F
    .local v19, "dayKeys":[Ljava/lang/String;
    .local v20, "minTemps":[F
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 381
    .local v3, "temp":F
    aget v4, v20, v15

    cmpg-float v4, v3, v4

    if-gez v4, :cond_97

    aput v3, v20, v15

    .line 382
    :cond_97
    aget v4, v5, v15

    cmpl-float v4, v3, v4

    if-lez v4, :cond_9f

    aput v3, v5, v15

    .line 385
    :cond_9f
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v11, "next_6_hours"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 386
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 387
    const-string v10, "summary"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "symbol_code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "symbol":Ljava/lang/String;
    move-object/from16 v10, p0

    invoke-direct {v10, v4}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;->mapMetNoSymbol(Ljava/lang/String;)I

    move-result v11

    aput v11, v6, v15

    .line 389
    const-string v11, "_day"

    move-object/from16 v21, v1

    .end local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .local v21, "dayFormat":Ljava/text/SimpleDateFormat;
    const-string v1, ""

    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v2

    .end local v2    # "details":Lorg/json/JSONObject;
    .local v22, "details":Lorg/json/JSONObject;
    const-string v2, "_night"

    invoke-virtual {v11, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "_polartwilight"

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v11, 0x20

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v15

    goto :goto_f9

    .line 385
    .end local v4    # "symbol":Ljava/lang/String;
    .end local v21    # "dayFormat":Ljava/text/SimpleDateFormat;
    .end local v22    # "details":Lorg/json/JSONObject;
    .restart local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .restart local v2    # "details":Lorg/json/JSONObject;
    :cond_ea
    move-object/from16 v10, p0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "details":Lorg/json/JSONObject;
    .restart local v21    # "dayFormat":Ljava/text/SimpleDateFormat;
    .restart local v22    # "details":Lorg/json/JSONObject;
    goto :goto_f9

    .line 377
    .end local v19    # "dayKeys":[Ljava/lang/String;
    .end local v20    # "minTemps":[F
    .end local v21    # "dayFormat":Ljava/text/SimpleDateFormat;
    .end local v22    # "details":Lorg/json/JSONObject;
    .restart local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .local v3, "dayKeys":[Ljava/lang/String;
    .local v4, "minTemps":[F
    :cond_f1
    move-object/from16 v10, p0

    move-object/from16 v21, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 363
    .end local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dayKeys":[Ljava/lang/String;
    .end local v4    # "minTemps":[F
    .end local v9    # "day":Ljava/lang/String;
    .end local v13    # "entry":Lorg/json/JSONObject;
    .end local v14    # "time":Ljava/lang/String;
    .end local v15    # "dayIndex":I
    .restart local v19    # "dayKeys":[Ljava/lang/String;
    .restart local v20    # "minTemps":[F
    .restart local v21    # "dayFormat":Ljava/text/SimpleDateFormat;
    :goto_f9
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v16

    move/from16 v10, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v1, v21

    const/4 v2, 0x6

    const/4 v11, 0x1

    goto/16 :goto_3e

    .end local v19    # "dayKeys":[Ljava/lang/String;
    .end local v20    # "minTemps":[F
    .end local v21    # "dayFormat":Ljava/text/SimpleDateFormat;
    .restart local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "dayKeys":[Ljava/lang/String;
    .restart local v4    # "minTemps":[F
    :cond_109
    move-object/from16 v12, p2

    move-object/from16 v21, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v16, v9

    move/from16 v18, v10

    move-object/from16 v10, p0

    .line 395
    .end local v1    # "dayFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "dayKeys":[Ljava/lang/String;
    .end local v4    # "minTemps":[F
    .end local v8    # "i":I
    .restart local v19    # "dayKeys":[Ljava/lang/String;
    .restart local v20    # "minTemps":[F
    .restart local v21    # "dayFormat":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_118
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15c

    .line 396
    iget-object v3, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v3, v3, v1

    aget v4, v20, v1

    cmpl-float v4, v4, v18

    const/4 v8, 0x0

    if-eqz v4, :cond_129

    aget v4, v20, v1

    goto :goto_12a

    :cond_129
    move v4, v8

    :goto_12a
    iput v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    .line 397
    iget-object v3, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v3, v3, v1

    aget v4, v5, v1

    cmpl-float v4, v4, v16

    if-eqz v4, :cond_138

    aget v8, v5, v1

    :cond_138
    iput v8, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    .line 398
    iget-object v3, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v3, v3, v1

    aget v4, v6, v1

    iput v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    .line 399
    iget-object v3, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v3, v3, v1

    aget-object v4, v7, v1

    iput-object v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->description:Ljava/lang/String;

    .line 400
    iget-object v3, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v3, v3, v1

    const-string v4, "metno"

    aget v8, v6, v1

    const/4 v9, 0x1

    invoke-static {v4, v8, v9}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v4

    iput v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->weatherIcon:I

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 402
    .end local v1    # "i":I
    :cond_15c
    return-void
.end method

.method private mapMetNoSymbol(Ljava/lang/String;)I
    .registers 7
    .param p1, "symbol"    # Ljava/lang/String;

    .line 406
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 408
    .local v0, "base":Ljava/lang/String;
    const-string v1, "clearsky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    return v2

    .line 409
    :cond_13
    const-string v1, "fair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    return v1

    .line 410
    :cond_1d
    const-string v1, "partlycloudy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x3

    return v1

    .line 411
    :cond_27
    const-string v1, "cloudy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x4

    return v1

    .line 412
    :cond_31
    const-string v1, "rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "snow"

    const-string v4, "sleet"

    if-eqz v1, :cond_4b

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x5

    return v1

    .line 413
    :cond_4b
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    const/4 v1, 0x7

    return v1

    .line 414
    :cond_59
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/16 v1, 0x9

    return v1

    .line 415
    :cond_62
    const-string v1, "fog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v1, 0xa

    return v1

    .line 416
    :cond_6d
    const-string v1, "thunder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    const/16 v1, 0xb

    return v1

    .line 418
    :cond_78
    return v2
.end method


# virtual methods
.method public fetch(Landroid/content/Context;DD)Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 262
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 260
    const-string v3, "https://api.met.no/weatherapi/locationforecast/2.0/compact?lat=%.4f&lon=%.4f"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "forecastUrl":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 266
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 264
    const-string v4, "https://api.met.no/weatherapi/sunrise/3.0/sun?lat=%.4f&lon=%.4f&date=%s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "sunUrl":Ljava/lang/String;
    const-string v4, "ClockSkinCoco/4.0 (Android Smartwatch)"

    .line 270
    .local v4, "userAgent":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetching from MET.no: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WeatherProvider"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {v2, v4}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smfetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "forecastJson":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 274
    .local v7, "forecastRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;-><init>()V

    move-object v8, v0

    .line 275
    .local v8, "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%.4f"

    invoke-static {v0, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    .line 276
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v0, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    .line 278
    const-string v0, "properties"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "timeseries"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 281
    .local v9, "timeseries":Lorg/json/JSONArray;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 282
    const-string v12, "instant"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v12, "details"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 284
    .local v10, "current":Lorg/json/JSONObject;
    const-string v13, "air_temperature"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-float v13, v13

    iput v13, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    .line 285
    const-string v13, "wind_from_direction"

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windDirection:F

    .line 286
    const-string v0, "wind_speed"

    invoke-virtual {v10, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v17, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, v17

    double-to-float v0, v0

    iput v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windSpeed:F

    .line 287
    const-string v0, "relative_humidity"

    invoke-virtual {v10, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->humidity:F

    .line 288
    const-string v0, "air_pressure_at_sea_level"

    invoke-virtual {v10, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->pressure:F

    .line 289
    const-string v0, "cloud_area_fraction"

    invoke-virtual {v10, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->cloudCover:I

    .line 290
    const/4 v0, 0x0

    iput v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v17, 0x3e8

    div-long v0, v0, v17

    iput-wide v0, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    .line 294
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v13, "next_1_hours"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 295
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    .local v0, "next1h":Lorg/json/JSONObject;
    const-string v1, "precipitation_amount"

    invoke-virtual {v0, v1, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    double-to-float v1, v14

    iput v1, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    .line 301
    .end local v0    # "next1h":Lorg/json/JSONObject;
    :cond_11f
    const-string v0, "clearsky_day"

    .line 302
    .local v0, "symbolCode":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14a

    .line 303
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v11, "summary"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 305
    const-string v11, "symbol_code"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_14b

    .line 302
    :cond_14a
    move-object v1, v0

    .line 310
    .end local v0    # "symbolCode":Ljava/lang/String;
    .local v1, "symbolCode":Ljava/lang/String;
    :goto_14b
    :try_start_14b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fetching sunrise/sunset from MET.no: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {v3, v4}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smfetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "sunJson":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    .local v11, "sunRoot":Lorg/json/JSONObject;
    # API v3.0: properties.sunrise.time and properties.sunset.time
    const-string v12, "properties"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 314
    .local v12, "properties":Lorg/json/JSONObject;
    const-string v13, "sunrise"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "time"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, "sunrise":Ljava/lang/String;
    const-string v14, "sunset"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "time"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 319
    .local v14, "sunset":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v0

    .end local v0    # "sunJson":Ljava/lang/String;
    .local v16, "sunJson":Ljava/lang/String;
    # v3.0 API format: 2025-11-07T07:38+00:00 (no seconds)
    const-string v0, "yyyy-MM-dd\'T\'HH:mmXXX"
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_193} :catch_1c0

    move-object/from16 v17, v2

    .end local v2    # "forecastUrl":Ljava/lang/String;
    .local v17, "forecastUrl":Ljava/lang/String;
    :try_start_195
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 320
    .local v15, "isoFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19e} :catch_1bc

    move-object/from16 v18, v3

    .end local v3    # "sunUrl":Ljava/lang/String;
    .local v18, "sunUrl":Ljava/lang/String;
    :try_start_1a0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 322
    .local v0, "outputFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v15, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    .line 323
    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1b9} :catch_1ba

    .line 328
    .end local v0    # "outputFormat":Ljava/text/SimpleDateFormat;
    .end local v11    # "sunRoot":Lorg/json/JSONObject;
    .end local v12    # "sunData":Lorg/json/JSONObject;
    .end local v13    # "sunrise":Ljava/lang/String;
    .end local v14    # "sunset":Ljava/lang/String;
    .end local v15    # "isoFormat":Ljava/text/SimpleDateFormat;
    .end local v16    # "sunJson":Ljava/lang/String;
    goto :goto_1d2

    .line 324
    :catch_1ba
    move-exception v0

    goto :goto_1c5

    .end local v18    # "sunUrl":Ljava/lang/String;
    .restart local v3    # "sunUrl":Ljava/lang/String;
    :catch_1bc
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "sunUrl":Ljava/lang/String;
    .restart local v18    # "sunUrl":Ljava/lang/String;
    goto :goto_1c5

    .end local v17    # "forecastUrl":Ljava/lang/String;
    .end local v18    # "sunUrl":Ljava/lang/String;
    .restart local v2    # "forecastUrl":Ljava/lang/String;
    .restart local v3    # "sunUrl":Ljava/lang/String;
    :catch_1c0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 325
    .end local v2    # "forecastUrl":Ljava/lang/String;
    .end local v3    # "sunUrl":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "forecastUrl":Ljava/lang/String;
    .restart local v18    # "sunUrl":Ljava/lang/String;
    :goto_1c5
    const-string v2, "Error fetching sunrise/sunset, using defaults"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const-string v2, "06:00"

    iput-object v2, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    .line 327
    const-string v2, "18:00"

    iput-object v2, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d2
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;->mapMetNoSymbol(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "symbolCodeInt":I
    iget-object v3, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    iget-object v11, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    invoke-static {v3, v11}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smisDaytime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 333
    .local v3, "daytime":Z
    const-string v11, "metno"

    invoke-static {v11, v0, v3}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v11

    iput v11, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->weatherIcon:I

    .line 337
    invoke-direct {v2, v8, v9}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;->buildForecastFromHourly(Lcom/ailife/ClockSkinCoco/weather/WeatherData;Lorg/json/JSONArray;)V

    .line 339
    const-string v11, "MET.no data fetched successfully"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-object v8
.end method
