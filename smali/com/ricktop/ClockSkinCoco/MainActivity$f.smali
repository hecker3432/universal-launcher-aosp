.class public Lcom/ricktop/ClockSkinCoco/MainActivity$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ricktop/ClockSkinCoco/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$f;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/b;->e(Landroid/content/Context;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$f;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$f;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->H()Lcom/ricktop/ClockSkinCoco/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/o;->N1()V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$f;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "com.ricktop.ClockSkinCoco"

    const-string v0, "com.ricktop.ClockSkinCoco.MainActivity"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainActivity$f;->a:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
