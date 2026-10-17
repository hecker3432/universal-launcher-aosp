.class public Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;,
        Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherHelper"

.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field private static final mainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmainHandler()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->executor:Ljava/util/concurrent/ExecutorService;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchLocationByIPAsync(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;

    .line 88
    sget-object v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;-><init>(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public static fetchWeatherAsync(Landroid/content/Context;DDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "callback"    # Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    .line 45
    sget-object v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .end local p5    # "callback":Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;
    .local v2, "context":Landroid/content/Context;
    .local v3, "latitude":D
    .local v5, "longitude":D
    .local v7, "callback":Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;
    invoke-direct/range {v1 .. v7}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;-><init>(Landroid/content/Context;DDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public static fetchWeatherWithAutoLocation(Landroid/content/Context;ZDDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useAutoLocation"    # Z
    .param p2, "manualLat"    # D
    .param p4, "manualLon"    # D
    .param p6, "callback"    # Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    .line 130
    if-eqz p1, :cond_f

    .line 132
    new-instance v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;

    invoke-direct {v0, p0, p6}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;-><init>(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchLocationByIPAsync(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;)V

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    goto :goto_16

    .line 146
    :cond_f
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "manualLat":D
    .end local p4    # "manualLon":D
    .end local p6    # "callback":Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;
    .local v1, "context":Landroid/content/Context;
    .local v2, "manualLat":D
    .local v4, "manualLon":D
    .local v6, "callback":Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;
    invoke-static/range {v1 .. v6}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchWeatherAsync(Landroid/content/Context;DDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V

    .line 148
    :goto_16
    return-void
.end method

.method public static getOpenWeatherMapApiKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 198
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "openWeatherMapApiKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "apiKey":Ljava/lang/String;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    .line 203
    :cond_19
    return-object v1

    .line 201
    :cond_1a
    :goto_1a
    const-string v2, "ba2412b4dbc464d10202d6dc04658618"

    return-object v2
.end method

.method public static getSelectedProvider(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 154
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "weatherProvider"

    const-string v2, "metno"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWeatherApiKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "apiKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "apiKey":Ljava/lang/String;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    .line 191
    :cond_19
    return-object v1

    .line 189
    :cond_1a
    :goto_1a
    const-string v2, "f9c3f11c61d9453da3d45340252402"

    return-object v2
.end method

.method public static isAutoLanguageEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 170
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "weatherAutoLanguage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAutoLocationEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "weatherAutoLocation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isWeatherEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 178
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "weatherEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
