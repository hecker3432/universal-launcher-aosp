.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;->onError(Ljava/lang/String;)V

    .line 116
    return-void
.end method
