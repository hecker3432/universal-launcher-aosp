.class Lcom/ricktop/ClockSkinCoco/MainActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/MainActivity;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BroadcastReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "watch_app_list_change"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "watch_app_list_style"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/o;->J1()I

    move-result p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p2}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ricktop/ClockSkinCoco/o;->P1(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->Q1()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$b;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->N1()V

    :cond_3
    :goto_1
    return-void
.end method
