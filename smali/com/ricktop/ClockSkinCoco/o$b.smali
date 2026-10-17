.class Lcom/ricktop/ClockSkinCoco/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/o;->c0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/o;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$b;->a:Lcom/ricktop/ClockSkinCoco/o;

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

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$b;->a:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/o;->G1(Lcom/ricktop/ClockSkinCoco/o;I)I

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "today_steps"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v3, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->steps:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    sput v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->steps:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New steps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "steps"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_clock_lastcurrent"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$b;->a:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->C1(Lcom/ricktop/ClockSkinCoco/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$b;->a:Lcom/ricktop/ClockSkinCoco/o;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/o;->F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->Y1()V

    :cond_2
    return-void
.end method
