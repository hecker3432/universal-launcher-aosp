.class public Lcom/ailife/ClockSkinCoco/weather/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;
    }
.end annotation


# instance fields
.field public cloudCover:I

.field public currentTemp:F

.field public forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

.field public humidity:F

.field public lastUpdated:J

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public precipitation:F

.field public pressure:F

.field public sunrise:Ljava/lang/String;

.field public sunset:Ljava/lang/String;

.field public weatherIcon:I

.field public windDirection:F

.field public windSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x6

    new-array v1, v0, [Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_17

    .line 37
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    new-instance v3, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    invoke-direct {v3}, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;-><init>()V

    aput-object v3, v2, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 39
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private static mapMetNoCode(IZ)I
    .registers 5
    .param p0, "symbolCode"    # I
    .param p1, "isDaytime"    # Z

    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x37

    const/16 v2, 0x57

    packed-switch p0, :pswitch_data_2c

    .line 170
    return v0

    .line 168
    :pswitch_9
    const/16 v0, 0x2c

    return v0

    .line 166
    :pswitch_c
    const/16 v0, 0x26

    return v0

    .line 164
    :pswitch_f
    const/16 v0, 0x61

    return v0

    .line 162
    :pswitch_12
    return v1

    .line 160
    :pswitch_13
    return v1

    .line 158
    :pswitch_14
    return v2

    .line 156
    :pswitch_15
    return v2

    .line 154
    :pswitch_16
    if-eqz p1, :cond_1b

    const/16 v0, 0xd

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x8f

    :goto_1d
    return v0

    .line 152
    :pswitch_1e
    if-eqz p1, :cond_23

    const/16 v0, 0xb

    goto :goto_25

    :cond_23
    const/16 v0, 0x8d

    :goto_25
    return v0

    .line 150
    :pswitch_26
    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    const/16 v0, 0x82

    :goto_2b
    return v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1e
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private static mapOpenMeteoCode(IZ)I
    .registers 6
    .param p0, "wmoCode"    # I
    .param p1, "isDaytime"    # Z

    .line 178
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 179
    if-eqz p1, :cond_6

    goto :goto_8

    :cond_6
    const/16 v0, 0x82

    :goto_8
    return v0

    .line 180
    :cond_9
    const/4 v1, 0x3

    if-gt p0, v1, :cond_28

    .line 181
    packed-switch p0, :pswitch_data_68

    .line 187
    goto :goto_64

    :pswitch_10
    if-eqz p1, :cond_15

    const/16 v0, 0xd

    goto :goto_17

    :cond_15
    const/16 v0, 0x8f

    :goto_17
    return v0

    .line 185
    :pswitch_18
    if-eqz p1, :cond_1d

    const/16 v0, 0xc

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x8e

    :goto_1f
    return v0

    .line 183
    :pswitch_20
    if-eqz p1, :cond_25

    const/16 v0, 0xb

    goto :goto_27

    :cond_25
    const/16 v0, 0x8d

    :goto_27
    return v0

    .line 189
    :cond_28
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_65

    const/16 v1, 0x30

    if-ne p0, v1, :cond_31

    goto :goto_65

    .line 191
    :cond_31
    const/16 v1, 0x33

    const/16 v2, 0x57

    if-lt p0, v1, :cond_3c

    const/16 v1, 0x43

    if-gt p0, v1, :cond_3c

    .line 192
    return v2

    .line 193
    :cond_3c
    const/16 v1, 0x47

    const/16 v3, 0x37

    if-lt p0, v1, :cond_47

    const/16 v1, 0x4d

    if-gt p0, v1, :cond_47

    .line 194
    return v3

    .line 195
    :cond_47
    const/16 v1, 0x50

    if-lt p0, v1, :cond_50

    const/16 v1, 0x52

    if-gt p0, v1, :cond_50

    .line 196
    return v2

    .line 197
    :cond_50
    const/16 v1, 0x55

    if-lt p0, v1, :cond_59

    const/16 v1, 0x56

    if-gt p0, v1, :cond_59

    .line 198
    return v3

    .line 199
    :cond_59
    const/16 v1, 0x5f

    if-lt p0, v1, :cond_64

    const/16 v1, 0x63

    if-gt p0, v1, :cond_64

    .line 200
    const/16 v0, 0x2c

    return v0

    .line 202
    :cond_64
    :goto_64
    return v0

    .line 190
    :cond_65
    :goto_65
    const/16 v0, 0x26

    return v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_20
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method private static mapOpenWeatherMapCode(IZ)I
    .registers 5
    .param p0, "code"    # I
    .param p1, "isDaytime"    # Z

    .line 63
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_b

    const/16 v0, 0xe8

    if-gt p0, v0, :cond_b

    .line 64
    const/16 v0, 0x2c

    return v0

    .line 67
    :cond_b
    const/16 v0, 0x12c

    const/16 v1, 0x57

    if-lt p0, v0, :cond_16

    const/16 v0, 0x141

    if-gt p0, v0, :cond_16

    .line 68
    return v1

    .line 71
    :cond_16
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_1f

    const/16 v0, 0x213

    if-gt p0, v0, :cond_1f

    .line 72
    return v1

    .line 75
    :cond_1f
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3a

    const/16 v0, 0x26e

    if-gt p0, v0, :cond_3a

    .line 76
    const/16 v0, 0x263

    if-eq p0, v0, :cond_37

    const/16 v0, 0x264

    if-eq p0, v0, :cond_37

    const/16 v0, 0x265

    if-ne p0, v0, :cond_34

    goto :goto_37

    .line 77
    :cond_34
    const/16 v0, 0x37

    return v0

    .line 76
    :cond_37
    :goto_37
    const/16 v0, 0x61

    return v0

    .line 80
    :cond_3a
    const/16 v0, 0x2bd

    if-lt p0, v0, :cond_53

    const/16 v1, 0x30d

    if-gt p0, v1, :cond_53

    .line 81
    if-eq p0, v0, :cond_50

    const/16 v0, 0x2d1

    if-eq p0, v0, :cond_50

    const/16 v0, 0x2e5

    if-ne p0, v0, :cond_4d

    goto :goto_50

    .line 82
    :cond_4d
    const/16 v0, 0x4b

    return v0

    .line 81
    :cond_50
    :goto_50
    const/16 v0, 0x26

    return v0

    .line 85
    :cond_53
    const/16 v0, 0x320

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5e

    .line 86
    if-eqz p1, :cond_5b

    goto :goto_5d

    :cond_5b
    const/16 v1, 0x82

    :goto_5d
    return v1

    .line 89
    :cond_5e
    const/16 v0, 0x321

    if-lt p0, v0, :cond_88

    const/16 v0, 0x324

    if-gt p0, v0, :cond_88

    .line 90
    const/16 v0, 0xc

    const/16 v2, 0x8e

    packed-switch p0, :pswitch_data_8a

    goto :goto_88

    .line 98
    :pswitch_6e
    if-eqz p1, :cond_73

    const/16 v0, 0xd

    goto :goto_75

    :cond_73
    const/16 v0, 0x8f

    :goto_75
    return v0

    .line 96
    :pswitch_76
    if-eqz p1, :cond_79

    goto :goto_7a

    :cond_79
    move v0, v2

    :goto_7a
    return v0

    .line 94
    :pswitch_7b
    if-eqz p1, :cond_7e

    goto :goto_7f

    :cond_7e
    move v0, v2

    :goto_7f
    return v0

    .line 92
    :pswitch_80
    if-eqz p1, :cond_85

    const/16 v0, 0xb

    goto :goto_87

    :cond_85
    const/16 v0, 0x8d

    :goto_87
    return v0

    .line 101
    :cond_88
    :goto_88
    return v1

    nop

    :pswitch_data_8a
    .packed-switch 0x321
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_6e
    .end packed-switch
.end method

.method private static mapWeatherApiCode(IZ)I
    .registers 4
    .param p0, "code"    # I
    .param p1, "isDaytime"    # Z

    .line 106
    const/4 v0, 0x0

    const/16 v1, 0x57

    sparse-switch p0, :sswitch_data_3a

    .line 136
    return v0

    .line 132
    :sswitch_7
    return v1

    .line 130
    :sswitch_8
    const/16 v0, 0x4b

    return v0

    .line 134
    :sswitch_b
    const/16 v0, 0x42

    return v0

    .line 128
    :sswitch_e
    const/16 v0, 0x2c

    return v0

    .line 126
    :sswitch_11
    const/16 v0, 0x61

    return v0

    .line 122
    :sswitch_14
    const/16 v0, 0x37

    return v0

    .line 119
    :sswitch_17
    return v1

    .line 116
    :sswitch_18
    const/16 v0, 0x26

    return v0

    .line 114
    :sswitch_1b
    if-eqz p1, :cond_20

    const/16 v0, 0xd

    goto :goto_22

    :cond_20
    const/16 v0, 0x8f

    :goto_22
    return v0

    .line 112
    :sswitch_23
    if-eqz p1, :cond_28

    const/16 v0, 0xc

    goto :goto_2a

    :cond_28
    const/16 v0, 0x8e

    :goto_2a
    return v0

    .line 110
    :sswitch_2b
    if-eqz p1, :cond_30

    const/16 v0, 0xb

    goto :goto_32

    :cond_30
    const/16 v0, 0x8d

    :goto_32
    return v0

    .line 108
    :sswitch_33
    if-eqz p1, :cond_36

    goto :goto_38

    :cond_36
    const/16 v0, 0x82

    :goto_38
    return v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x3e8 -> :sswitch_33
        0x3eb -> :sswitch_2b
        0x3ee -> :sswitch_23
        0x3f1 -> :sswitch_1b
        0x406 -> :sswitch_18
        0x427 -> :sswitch_17
        0x42a -> :sswitch_14
        0x42d -> :sswitch_11
        0x430 -> :sswitch_11
        0x43f -> :sswitch_e
        0x45a -> :sswitch_14
        0x45d -> :sswitch_b
        0x46f -> :sswitch_8
        0x47b -> :sswitch_8
        0x47e -> :sswitch_7
        0x481 -> :sswitch_7
        0x490 -> :sswitch_11
        0x493 -> :sswitch_11
        0x49c -> :sswitch_17
        0x49f -> :sswitch_17
        0x4a2 -> :sswitch_17
        0x4a5 -> :sswitch_17
        0x4a8 -> :sswitch_17
        0x4ab -> :sswitch_7
        0x4ae -> :sswitch_11
        0x4b1 -> :sswitch_11
        0x4b4 -> :sswitch_11
        0x4b7 -> :sswitch_11
        0x4ba -> :sswitch_14
        0x4bd -> :sswitch_14
        0x4c0 -> :sswitch_14
        0x4c3 -> :sswitch_14
        0x4c6 -> :sswitch_14
        0x4c9 -> :sswitch_14
        0x4d5 -> :sswitch_11
        0x4d8 -> :sswitch_17
        0x4db -> :sswitch_17
        0x4de -> :sswitch_17
        0x4e1 -> :sswitch_11
        0x4e4 -> :sswitch_11
        0x4e7 -> :sswitch_14
        0x4ea -> :sswitch_14
        0x4ed -> :sswitch_11
        0x4f0 -> :sswitch_11
        0x4f9 -> :sswitch_e
        0x4fc -> :sswitch_e
        0x4ff -> :sswitch_e
        0x502 -> :sswitch_e
    .end sparse-switch
.end method

.method public static mapWeatherCode(Ljava/lang/String;IZ)I
    .registers 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "apiCode"    # I
    .param p2, "isDaytime"    # Z

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_4a

    :cond_8
    goto :goto_31

    :sswitch_9
    const-string v0, "openweathermap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_32

    :sswitch_13
    const-string v0, "openmeteo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "weatherapi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_32

    :sswitch_27
    const-string v0, "metno"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_32

    :goto_31
    const/4 v0, -0x1

    :goto_32
    packed-switch v0, :pswitch_data_5c

    .line 56
    return v1

    .line 54
    :pswitch_36
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapOpenWeatherMapCode(IZ)I

    move-result v0

    return v0

    .line 52
    :pswitch_3b
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapOpenMeteoCode(IZ)I

    move-result v0

    return v0

    .line 50
    :pswitch_40
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapMetNoCode(IZ)I

    move-result v0

    return v0

    .line 48
    :pswitch_45
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->mapWeatherApiCode(IZ)I

    move-result v0

    return v0

    :sswitch_data_4a
    .sparse-switch
        0x62fac9d -> :sswitch_27
        0x1904cda6 -> :sswitch_1d
        0x5ce9e37c -> :sswitch_13
        0x64dd4ab2 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "=== CURRENT WEATHER ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "Temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->currentTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0C\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "Wind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " km/h from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->windDirection:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "Humidity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->humidity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "Pressure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->pressure:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mb\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "Cloud Cover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->cloudCover:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "Precipitation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->precipitation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mm\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "Sunrise: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunrise:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "Sunset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->sunset:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->latitude:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "Icon Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->weatherIcon:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, "Last Updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->lastUpdated:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "\n=== FORECAST (6 DAYS) ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d9
    const/4 v2, 0x6

    if-ge v1, v2, :cond_132

    .line 223
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v2, v2, v1

    if-eqz v2, :cond_12f

    .line 224
    const-string v2, "Day "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->minTemp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0C / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->maxTemp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0C - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherData;->forecast:[Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;->weatherIcon:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d9

    .line 232
    .end local v1    # "i":I
    :cond_132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
