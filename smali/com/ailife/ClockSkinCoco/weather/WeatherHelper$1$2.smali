.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$2;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$2;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1$2;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$1;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;

    const-string v1, "Failed to fetch weather data"

    invoke-interface {v0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$WeatherCallback;->onError(Ljava/lang/String;)V

    .line 68
    return-void
.end method
