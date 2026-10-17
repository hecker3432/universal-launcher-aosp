.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchLocationByIPAsync(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 92
    const-string v0, "WeatherHelper"

    :try_start_2
    const-string v1, "Fetching location by IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherProviderNew;->fetchLocationByIP(Landroid/content/Context;)[D

    move-result-object v1

    .line 95
    .local v1, "location":[D
    if-eqz v1, :cond_20

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 96
    invoke-static {}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;

    invoke-direct {v3, p0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;-><init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;[D)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    .line 103
    :cond_20
    invoke-static {}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$2;

    invoke-direct {v3, p0}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$2;-><init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 118
    .end local v1    # "location":[D
    :goto_2c
    goto :goto_3f

    .line 110
    :catch_2d
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error fetching location by IP"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-static {}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;

    invoke-direct {v2, p0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;-><init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method
