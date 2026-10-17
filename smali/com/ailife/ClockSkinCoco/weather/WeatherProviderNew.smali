.class public Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;
.super Ljava/lang/Object;
.source "WeatherProviderNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;,
        Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenMeteoProvider;,
        Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenWeatherMapProvider;,
        Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherApiProvider;,
        Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherProvider"


# direct methods
.method static bridge synthetic -$$Nest$smfetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->fetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetLanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->getLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisDaytime(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->isDaytime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 81
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_b
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    if-eqz p1, :cond_17

    .line 83
    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_17
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v2, "reader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v3, "result":Ljava/lang/StringBuilder;
    :goto_2d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    move v5, v4

    .local v5, "c":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3a

    .line 92
    int-to-char v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 94
    :cond_3a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_45

    .line 97
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    return-object v4

    .line 97
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "c":I
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    throw v2
.end method

.method public static fetchLocationByIP(Landroid/content/Context;)[D
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    const-string v0, "http://ip-api.com/json/?fields=lat,lon,city"

    .line 108
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching location by IP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v1, "ClockSkinCoco/4.0 (Android Smartwatch)"

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->fetchJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "json":Ljava/lang/String;
    if-eqz v1, :cond_d4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d4

    .line 112
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "lat"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    const-string v5, "lon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    const-string v6, "city"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 116
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 117
    .local v7, "lat":D
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 118
    .local v4, "lon":D
    const-string v9, "Unknown"

    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "city":Ljava/lang/String;
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 122
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 123
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "autoLocationCity"

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Location fetched successfully from IP: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v11, 0x0

    aput-wide v7, v2, v11

    const/4 v11, 0x1

    aput-wide v4, v2, v11

    return-object v2

    .line 130
    .end local v4    # "lon":D
    .end local v6    # "city":Ljava/lang/String;
    .end local v7    # "lat":D
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_97
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "fail"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 131
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP location API error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "message"

    const-string v6, "Unknown error"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_cc
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "IP location service returned incomplete response"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_d4
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Empty response from IP location service"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getLanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "weatherAutoLanguage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 66
    .local v1, "autoLanguage":Z
    if-eqz v1, :cond_1c

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "lang":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 71
    .end local v2    # "lang":Ljava/lang/String;
    :cond_1c
    const-string v2, "en"

    return-object v2
.end method

.method public static getWeatherData(Landroid/content/Context;DDLjava/lang/String;)Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "provider"    # Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5f

    sparse-switch v0, :sswitch_data_6c

    :cond_7
    goto :goto_35

    :sswitch_8
    :try_start_8
    const-string v0, "openweathermap"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_36

    :sswitch_12
    const-string v0, "openmeteo"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_36

    :sswitch_1c
    const-string v0, "weatherapi"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_36

    :sswitch_26
    const-string v0, "metno"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_30

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_36

    .line 53
    :catch_30
    move-exception v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    goto :goto_63

    .line 37
    :goto_35
    const/4 v0, -0x1

    :goto_36
    packed-switch v0, :pswitch_data_7e

    .line 49
    :try_start_39
    new-instance v0, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherApiProvider;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3b} :catch_5f

    goto :goto_51

    .line 45
    :pswitch_3c
    :try_start_3c
    new-instance v0, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenWeatherMapProvider;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenWeatherMapProvider;-><init>()V

    .line 46
    .local v0, "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    move-object v1, v0

    goto :goto_55

    .line 42
    .end local v0    # "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    :pswitch_43
    new-instance v0, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenMeteoProvider;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$OpenMeteoProvider;-><init>()V

    .line 43
    .restart local v0    # "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    move-object v1, v0

    goto :goto_55

    .line 39
    .end local v0    # "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    :pswitch_4a
    new-instance v0, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;

    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$MetNoProvider;-><init>()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_30

    .line 40
    .restart local v0    # "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    move-object v1, v0

    goto :goto_55

    .line 49
    .end local v0    # "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    :goto_51
    :try_start_51
    invoke-direct {v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherApiProvider;-><init>()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_5f

    move-object v1, v0

    .line 52
    .local v1, "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    :goto_55
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .local v2, "context":Landroid/content/Context;
    .local v3, "latitude":D
    .local v5, "longitude":D
    :try_start_58
    invoke-interface/range {v1 .. v6}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;->fetch(Landroid/content/Context;DD)Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    move-result-object p0

    # Apply temperature rounding if enabled
    invoke-static {v2, p0}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->applyTemperatureRounding(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherData;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_5d

    return-object p0

    .line 53
    .end local v1    # "providerImpl":Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew$WeatherProviderInterface;
    :catch_5d
    move-exception v0

    goto :goto_63

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "latitude":D
    .end local v5    # "longitude":D
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "latitude":D
    .restart local p3    # "longitude":D
    :catch_5f
    move-exception v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 54
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "latitude":D
    .restart local v5    # "longitude":D
    :goto_63
    const-string p0, "WeatherProvider"

    const-string p1, "Error fetching weather data"

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_6c
    .sparse-switch
        0x62fac9d -> :sswitch_26
        0x1904cda6 -> :sswitch_1c
        0x5ce9e37c -> :sswitch_12
        0x64dd4ab2 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_43
        :pswitch_3c
    .end packed-switch
.end method

.method private static applyTemperatureRounding(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherData;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    .line 60
    # Return if data is null
    if-nez p1, :cond_return_if_null

    return-void

    :cond_return_if_null
    # Get shared preferences
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "prefs":Landroid/content/SharedPreferences;
    # Get roundTemperature setting (default false)
    const-string v1, "roundTemperature"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 63
    .local v1, "shouldRound":Z
    # If rounding is not enabled, return
    if-nez v1, :cond_skip_rounding

    return-void

    :cond_skip_rounding
    .line 65
    # Round currentTemp
    iget v2, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    .line 68
    # Round forecast temperatures
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_loop_start
    const/4 v3, 0x6

    if-ge v2, v3, :cond_loop_end

    .line 69
    iget-object v3, p1, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v3, v3, v2

    .line 70
    .local v3, "day":Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;
    if-eqz v3, :cond_next_iteration

    .line 71
    # Round minTemp
    iget v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    .line 73
    # Round maxTemp
    iget v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    .line 68
    .end local v3    # "day":Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;
    :cond_next_iteration
    add-int/lit8 v2, v2, 0x1

    goto :goto_loop_start

    .line 77
    .end local v2    # "i":I
    :cond_loop_end
    return-void
.end method

.method private static isDaytime(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "sunrise"    # Ljava/lang/String;
    .param p1, "sunset"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 147
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 148
    .local v2, "now":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 150
    .local v3, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 151
    .local v4, "sunriseTime":Ljava/util/Date;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 153
    .local v5, "sunsetTime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 154
    .local v6, "sunriseCal":Ljava/util/Calendar;
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 155
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 156
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 160
    .local v9, "sunsetCal":Ljava/util/Calendar;
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 161
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 162
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v9, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 165
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_64

    if-eqz v7, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    return v0

    .line 166
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "now":Ljava/util/Date;
    .end local v3    # "cal":Ljava/util/Calendar;
    .end local v4    # "sunriseTime":Ljava/util/Date;
    .end local v5    # "sunsetTime":Ljava/util/Date;
    .end local v6    # "sunriseCal":Ljava/util/Calendar;
    .end local v9    # "sunsetCal":Ljava/util/Calendar;
    :catch_64
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
