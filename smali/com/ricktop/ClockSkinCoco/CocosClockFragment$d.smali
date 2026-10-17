.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->b2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

.field final synthetic b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StaticReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "I\'m not the main App this:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.ricktop.ClockSkinCoco.SET.SKIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "com.ricktop.ClockSkinCoco.LAUNCH.ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "com.ricktop.ClockSkinCoco.SCREENTOUCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "com.ricktop.ClockSkinCoco.SET.SCALE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "com.ricktop.ClockSkinCoco.WEATHER.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "com.ricktop.ClockSkinCoco.UPDATE.WEATHER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "com.ricktop.ClockSkinCoco.INIT.WATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object p1

    new-instance p2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$e;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$e;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "action"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object p2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;

    invoke-direct {v0, p0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->O1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;J)J

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$g;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$g;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;)V

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_3

    const-string p1, "scale"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object p2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;

    invoke-direct {v0, p0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object p1

    new-instance p2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$a;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$a;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->M1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Lcom/ricktop/ClockSkinCoco/D;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/D;->f()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->L1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->N1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)LZ/c;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->S()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object p1

    new-instance p2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$f;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$f;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g1()Landroidx/fragment/app/d;

    move-result-object p1

    new-instance p2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$b;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$b;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d83cc3f -> :sswitch_6
        -0x3ff9e6e1 -> :sswitch_5
        -0x29f0bea8 -> :sswitch_4
        -0x1b4e92f2 -> :sswitch_3
        0x2c897ea2 -> :sswitch_2
        0x61fda161 -> :sswitch_1
        0x6a797519 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
