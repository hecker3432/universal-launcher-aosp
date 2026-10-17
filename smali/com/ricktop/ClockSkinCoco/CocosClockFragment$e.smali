.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->E1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HR listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->C1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)I

    move-result v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    float-to-int v3, v2

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->D1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;I)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->E1()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HR listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->C1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e$a;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$e;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
