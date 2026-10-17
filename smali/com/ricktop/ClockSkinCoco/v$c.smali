.class Lcom/ricktop/ClockSkinCoco/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final b:Ly/v$a;


# direct methods
.method constructor <init>(Ly/v$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v$c;->b:Ly/v$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v$c;->b:Ly/v$a;

    iget-object v0, v0, Ly/v$a;->k:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    # Get context from the clicked view
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    # Check Android version for proper PendingIntent handling
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22  # API 34 (Android 14)

    if-lt p1, v1, :legacy_send

    # Android 14+: Use ActivityOptions to allow background activity start
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    # Set background activity start mode to allowed
    const/4 v1, 0x1  # MODE_BACKGROUND_ACTIVITY_START_ALLOWED

    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    # Convert to Bundle
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    # Call 7-parameter send(Context, int, Intent, OnFinished, Handler, String, Bundle)
    const/4 v3, 0x0  # code = 0
    const/4 v4, 0x0  # intent = null
    const/4 v5, 0x0  # onFinished = null
    const/4 v6, 0x0  # handler = null
    const/4 v7, 0x0  # requiredPermission = null

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :cond_0

    :legacy_send
    # Android < 14: Use simple send()
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
