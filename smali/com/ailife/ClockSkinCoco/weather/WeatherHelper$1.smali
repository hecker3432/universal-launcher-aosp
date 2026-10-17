.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchWeatherAsync(Landroid/content/Context;DDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Landroid/content/Context;DDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$latitude:D

    iput-wide p4, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$longitude:D

    iput-object p6, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 50
    const-string v1, "WeatherHelper"

    :try_start_2
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "weatherProvider"

    const-string v3, "metno"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 53
    .local v8, "provider":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching weather from provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$context:Landroid/content/Context;

    iget-wide v4, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$latitude:D

    iget-wide v6, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$longitude:D

    invoke-static/range {v3 .. v8}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->getWeatherData(Landroid/content/Context;DDLjava/lang/String;)Lcom/ailife/ClockSkinCoco/weather/WeatherData;

    move-result-object v2

    .line 56
    .local v2, "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    if-eqz v2, :cond_40

    .line 57
    invoke-static {}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$1;

    invoke-direct {v4, p0, v2}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$1;-><init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;Lcom/ailife/ClockSkinCoco/weather/WeatherData;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 64
    :cond_40
    invoke-static {}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$2;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$2;-><init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4d

    .line 79
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "data":Lcom/ailife/ClockSkinCoco/weather/WeatherData;
    .end local v8    # "provider":Ljava/lang/String;
    :goto_4c
    goto :goto_5f

    .line 71
    :catch_4d
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error fetching weather"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-static {}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$3;

    invoke-direct {v2, p0, v0}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$3;-><init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method
