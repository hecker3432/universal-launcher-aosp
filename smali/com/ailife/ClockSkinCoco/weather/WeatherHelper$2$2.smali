.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$2;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$2;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$2;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;

    const-string v1, "Failed to detect location"

    invoke-interface {v0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;->onError(Ljava/lang/String;)V

    .line 107
    return-void
.end method
