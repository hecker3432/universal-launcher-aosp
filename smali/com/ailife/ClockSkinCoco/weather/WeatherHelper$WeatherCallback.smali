.class public interface abstract Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WeatherCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/ailife/ClockSkinCoco/weather/WeatherData;)V
.end method
