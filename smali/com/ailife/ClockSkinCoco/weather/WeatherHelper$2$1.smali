.class Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;
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

.field final synthetic val$location:[D


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;[D)V
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

    .line 96
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;->val$location:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;->this$0:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;

    iget-object v0, v0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2;->val$callback:Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;->val$location:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$2$1;->val$location:[D

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/ailife/ClockSkinCoco/weather/WeatherHelper$LocationCallback;->onSuccess(DD)V

    .line 100
    return-void
.end method
