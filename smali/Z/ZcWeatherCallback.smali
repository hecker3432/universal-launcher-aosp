.class public LZ/ZcWeatherCallback;
.super Ljava/lang/Object;
.source "ZcWeatherCallback.java"

# interfaces
.implements Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "APIWeather"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weather fetch failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIWeather"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, LZ/c;->e(J)J

    .line 99
    return-void
.end method

.method public onSuccess(Lcom/ailife/ClockSkinCoco/weather/WeatherData;)V
    .registers 13
    .param p1, "data"    # Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    .line 18
    const-string v0, "APIWeather"

    :try_start_2
    const-string v1, "Weather data received successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, LZ/c;->a()[LZ/c$c;

    move-result-object v1

    .line 23
    .local v1, "weatherArray":[LZ/c$c;
    if-eqz v1, :cond_c7

    array-length v2, v1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_14

    goto/16 :goto_c7

    .line 29
    :cond_14
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-nez v3, :cond_20

    .line 30
    new-instance v3, LZ/c$c;

    invoke-direct {v3}, LZ/c$c;-><init>()V

    aput-object v3, v1, v2

    .line 33
    :cond_20
    aget-object v3, v1, v2

    .line 34
    .local v3, "current":LZ/c$c;
    const/4 v4, 0x0

    iput v4, v3, LZ/c$c;->a:F

    .line 35
    iput v4, v3, LZ/c$c;->b:F

    .line 36
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    iput v5, v3, LZ/c$c;->c:F

    .line 37
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windDirection:F

    iput v5, v3, LZ/c$c;->d:F

    .line 38
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windSpeed:F

    iput v5, v3, LZ/c$c;->e:F

    .line 39
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->humidity:F

    iput v5, v3, LZ/c$c;->f:F

    .line 40
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->pressure:F

    iput v5, v3, LZ/c$c;->g:F

    .line 41
    iget-object v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    iput-object v5, v3, LZ/c$c;->h:Ljava/lang/String;

    .line 42
    iget-object v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    iput-object v5, v3, LZ/c$c;->i:Ljava/lang/String;

    .line 43
    const-string v5, ""

    iput-object v5, v3, LZ/c$c;->j:Ljava/lang/String;

    .line 44
    iget-object v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    iput-object v5, v3, LZ/c$c;->k:Ljava/lang/String;

    .line 45
    iget-object v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    iput-object v5, v3, LZ/c$c;->l:Ljava/lang/String;

    .line 46
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->weatherIcon:I

    iput v5, v3, LZ/c$c;->m:I

    .line 47
    iput v2, v3, LZ/c$c;->n:I

    .line 48
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->cloudCover:I

    iput v5, v3, LZ/c$c;->o:I

    .line 49
    iget v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    iput v5, v3, LZ/c$c;->p:F

    .line 50
    iget-wide v5, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    iput-wide v5, v3, LZ/c$c;->q:J

    .line 53
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_62
    const/4 v6, 0x6

    if-ge v5, v6, :cond_b6

    iget-object v6, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    array-length v6, v6

    if-ge v5, v6, :cond_b6

    .line 54
    add-int/lit8 v6, v5, 0x1

    .line 55
    .local v6, "arrayIndex":I
    aget-object v7, v1, v6

    if-nez v7, :cond_77

    .line 56
    new-instance v7, LZ/c$c;

    invoke-direct {v7}, LZ/c$c;-><init>()V

    aput-object v7, v1, v6

    .line 59
    :cond_77
    aget-object v7, v1, v6

    .line 60
    .local v7, "forecast":LZ/c$c;
    iget-object v8, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v8, v8, v5

    .line 62
    .local v8, "forecastDay":Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;
    iget v9, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    iput v9, v7, LZ/c$c;->a:F

    .line 63
    iget v9, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    iput v9, v7, LZ/c$c;->b:F

    .line 64
    iput v4, v7, LZ/c$c;->c:F

    .line 65
    iput v4, v7, LZ/c$c;->d:F

    .line 66
    iput v4, v7, LZ/c$c;->e:F

    .line 67
    iput v4, v7, LZ/c$c;->f:F

    .line 68
    iput v4, v7, LZ/c$c;->g:F

    .line 69
    iget-object v9, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    iput-object v9, v7, LZ/c$c;->h:Ljava/lang/String;

    .line 70
    iget-object v9, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    iput-object v9, v7, LZ/c$c;->i:Ljava/lang/String;

    .line 71
    iget-object v9, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->description:Ljava/lang/String;

    iput-object v9, v7, LZ/c$c;->j:Ljava/lang/String;

    .line 72
    iget-object v9, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    iput-object v9, v7, LZ/c$c;->k:Ljava/lang/String;

    .line 73
    iget-object v9, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    iput-object v9, v7, LZ/c$c;->l:Ljava/lang/String;

    .line 74
    iget v9, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->weatherIcon:I

    iput v9, v7, LZ/c$c;->m:I

    .line 75
    iget v9, v8, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->apiCode:I

    iput v9, v7, LZ/c$c;->n:I

    .line 76
    iput v2, v7, LZ/c$c;->o:I

    .line 77
    iput v4, v7, LZ/c$c;->p:F

    .line 78
    iget-wide v9, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    iput-wide v9, v7, LZ/c$c;->q:J

    .line 53
    .end local v6    # "arrayIndex":I
    .end local v7    # "forecast":LZ/c$c;
    .end local v8    # "forecastDay":Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 82
    .end local v5    # "i":I
    :cond_b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, LZ/c;->f(J)J

    .line 85
    const/4 v2, 0x6

    invoke-static {v2}, LZ/c;->c(I)I

    .line 87
    const-string v2, "Weather data stored successfully in Z.c array"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    # Send broadcast to notify watch face of weather update
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.ricktop.ClockSkinCoco.WEATHER.FOUND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    nop

    .end local v1    # "weatherArray":[LZ/c$c;
    .end local v3    # "current":LZ/c$c;
    goto :goto_d3

    .line 24
    .restart local v1    # "weatherArray":[LZ/c$c;
    :cond_c7
    :goto_c7
    const-string v2, "Weather array not initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_cc} :catch_cd

    .line 25
    return-void

    .line 89
    .end local v1    # "weatherArray":[LZ/c$c;
    :catch_cd
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error processing weather data"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d3
    return-void
.end method
