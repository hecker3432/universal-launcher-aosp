.class Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;


# direct methods
.method constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$a;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$a;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
