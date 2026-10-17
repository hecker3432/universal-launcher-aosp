.class public Lcom/ailife/ClockSkinCoco/weather/WeatherData$ForecastDay;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForecastDay"
.end annotation


# instance fields
.field public apiCode:I

.field public description:Ljava/lang/String;

.field public maxTemp:F

.field public minTemp:F

.field public weatherIcon:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
