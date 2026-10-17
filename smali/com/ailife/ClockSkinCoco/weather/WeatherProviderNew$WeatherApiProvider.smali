.class public Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherApiProvider;
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
    name = "WeatherApiProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Landroid/content/Context;DD)Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->getWeatherApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "apiKey":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smgetLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "lang":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 182
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v0, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 180
    const-string v4, "https://api.weatherapi.com/v1/forecast.json?key=%s&q=%.4f,%.4f&days=7&aqi=no&alerts=no&lang=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching from WeatherAPI: "

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

    .line 185
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smfetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v5, "root":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 193
    new-instance v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    invoke-direct {v6}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;-><init>()V

    .line 196
    .local v6, "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    const-string v7, "location"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 197
    .local v7, "location":Lorg/json/JSONObject;
    const-string v8, "lat"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    .line 198
    const-string v8, "lon"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    .line 201
    const-string v8, "current"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 202
    .local v8, "current":Lorg/json/JSONObject;
    const-string v9, "temp_c"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    .line 203
    const-string v9, "wind_degree"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windDirection:F

    .line 204
    const-string v9, "wind_kph"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windSpeed:F

    .line 205
    const-string v9, "humidity"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->humidity:F

    .line 206
    const-string v9, "pressure_mb"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->pressure:F

    .line 207
    const-string v9, "cloud"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->cloudCover:I

    .line 208
    const-string v9, "precip_mm"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    .line 209
    const-string v9, "last_updated_epoch"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    .line 211
    const-string v9, "condition"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "code"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 214
    .local v10, "conditionCode":I
    const-string v12, "forecast"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "forecastday"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 215
    .local v12, "forecastDays":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 217
    .local v13, "numDays":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_1

    .line 218
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 219
    .local v15, "dayObj":Lorg/json/JSONObject;
    move-object/from16 v16, v0

    .end local v0    # "apiKey":Ljava/lang/String;
    .local v16, "apiKey":Ljava/lang/String;
    const-string v0, "day"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 221
    .local v0, "day":Lorg/json/JSONObject;
    move-object/from16 v17, v1

    .end local v1    # "lang":Ljava/lang/String;
    .local v17, "lang":Ljava/lang/String;
    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v1, v1, v14

    move-object/from16 v18, v2

    .end local v2    # "url":Ljava/lang/String;
    .local v18, "url":Ljava/lang/String;
    const-string v2, "mintemp_c"

    move-object/from16 v19, v3

    .end local v3    # "json":Ljava/lang/String;
    .local v19, "json":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    .line 222
    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v1, v1, v14

    const-string v2, "maxtemp_c"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    .line 223
    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v1, v1, v14

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->description:Ljava/lang/String;

    .line 224
    iget-object v1, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v1, v1, v14

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    .line 227
    const-string v1, "weatherapi"

    if-nez v14, :cond_0

    .line 228
    const-string v2, "astro"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 229
    .local v2, "astro":Lorg/json/JSONObject;
    new-instance v3, Ljava/text/SimpleDateFormat;

    move-object/from16 v20, v0

    .end local v0    # "day":Lorg/json/JSONObject;
    .local v20, "day":Lorg/json/JSONObject;
    const-string v0, "hh:mm a"

    move-object/from16 v21, v7

    .end local v7    # "location":Lorg/json/JSONObject;
    .local v21, "location":Lorg/json/JSONObject;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 230
    .local v3, "inputFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm"

    move-object/from16 v22, v8

    .end local v8    # "current":Lorg/json/JSONObject;
    .local v22, "current":Lorg/json/JSONObject;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 232
    .local v0, "outputFormat":Ljava/text/SimpleDateFormat;
    const-string v7, "sunrise"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 233
    .local v7, "sunriseDate":Ljava/util/Date;
    const-string v8, "sunset"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 235
    .local v8, "sunsetDate":Ljava/util/Date;
    move-object/from16 v23, v2

    .end local v2    # "astro":Lorg/json/JSONObject;
    .local v23, "astro":Lorg/json/JSONObject;
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    .line 239
    iget-object v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    move-object/from16 v24, v0

    .end local v0    # "outputFormat":Ljava/text/SimpleDateFormat;
    .local v24, "outputFormat":Ljava/text/SimpleDateFormat;
    iget-object v0, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->-$$Nest$smisDaytime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 240
    .local v0, "daytime":Z
    invoke-static {v1, v10, v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v2

    iput v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->weatherIcon:I

    goto :goto_1

    .line 227
    .end local v3    # "inputFormat":Ljava/text/SimpleDateFormat;
    .end local v20    # "day":Lorg/json/JSONObject;
    .end local v21    # "location":Lorg/json/JSONObject;
    .end local v22    # "current":Lorg/json/JSONObject;
    .end local v23    # "astro":Lorg/json/JSONObject;
    .end local v24    # "outputFormat":Ljava/text/SimpleDateFormat;
    .local v0, "day":Lorg/json/JSONObject;
    .local v7, "location":Lorg/json/JSONObject;
    .local v8, "current":Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .line 244
    .end local v0    # "day":Lorg/json/JSONObject;
    .end local v7    # "location":Lorg/json/JSONObject;
    .end local v8    # "current":Lorg/json/JSONObject;
    .restart local v20    # "day":Lorg/json/JSONObject;
    .restart local v21    # "location":Lorg/json/JSONObject;
    .restart local v22    # "current":Lorg/json/JSONObject;
    :goto_1
    iget-object v0, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v0, v0, v14

    iget-object v2, v6, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v2, v2, v14

    iget v2, v2, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherCode(Ljava/lang/String;IZ)I

    move-result v1

    iput v1, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->weatherIcon:I

    .line 217
    .end local v15    # "dayObj":Lorg/json/JSONObject;
    .end local v20    # "day":Lorg/json/JSONObject;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    goto/16 :goto_0

    .end local v16    # "apiKey":Ljava/lang/String;
    .end local v17    # "lang":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "json":Ljava/lang/String;
    .end local v21    # "location":Lorg/json/JSONObject;
    .end local v22    # "current":Lorg/json/JSONObject;
    .local v0, "apiKey":Ljava/lang/String;
    .restart local v1    # "lang":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    .restart local v7    # "location":Lorg/json/JSONObject;
    .restart local v8    # "current":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v16, v0

    .line 248
    .end local v0    # "apiKey":Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v16    # "apiKey":Ljava/lang/String;
    const-string v0, "WeatherAPI data fetched successfully"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v6

    .line 190
    .end local v6    # "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .end local v7    # "location":Lorg/json/JSONObject;
    .end local v8    # "current":Lorg/json/JSONObject;
    .end local v10    # "conditionCode":I
    .end local v12    # "forecastDays":Lorg/json/JSONArray;
    .end local v13    # "numDays":I
    .end local v16    # "apiKey":Ljava/lang/String;
    .restart local v0    # "apiKey":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v0    # "apiKey":Ljava/lang/String;
    .end local v1    # "lang":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "json":Ljava/lang/String;
    .restart local v16    # "apiKey":Ljava/lang/String;
    .restart local v17    # "lang":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    .restart local v19    # "json":Ljava/lang/String;
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
