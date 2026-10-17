.class Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/ScreenSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;->a:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;->a:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->a(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;->a:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->b(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)V

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService$c;->a:Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;->c(Lcom/ricktop/ClockSkinCoco/ScreenSensorService;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTileSensorListener  s = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
