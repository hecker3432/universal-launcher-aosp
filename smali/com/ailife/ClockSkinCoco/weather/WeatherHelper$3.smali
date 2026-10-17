.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchWeatherWithAutoLocation(Landroid/content/Context;ZDDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location detection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;->onError(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onSuccess(DD)V
    .registers 13
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-location detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Save location to preferences and send broadcast
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    # Get city name from preferences (saved by fetchLocationByIP)
    const-string v1, "autoLocationCity"

    const-string v2, "Unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # Build location string: "CityName,Latitude,Longitude"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # Save to Skin_Weather_Location_1 preference
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Skin_Weather_Location_1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$3;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .local v3, "latitude":D
    .local v5, "longitude":D
    invoke-static/range {v2 .. v7}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;->fetchWeatherAsync(Landroid/content/Context;DDLcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;)V

    .line 137
    return-void
.end method
