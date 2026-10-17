.class abstract Li/f$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "l"
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;)V
    .locals 0

    iput-object p1, p0, Li/f$l;->b:Li/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Li/f$l;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Li/f$l;->b:Li/f;

    iget-object v1, v1, Li/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Li/f$l;->a:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method abstract b()Landroid/content/IntentFilter;
.end method

.method abstract c()I
.end method

.method abstract d()V
.end method

.method e()V
    .locals 7

    invoke-virtual {p0}, Li/f$l;->a()V

    invoke-virtual {p0}, Li/f$l;->b()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Li/f$l;->a:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Li/f$l$a;

    invoke-direct {v1, p0}, Li/f$l$a;-><init>(Li/f$l;)V

    iput-object v1, p0, Li/f$l;->a:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v1, p0, Li/f$l;->b:Li/f;

    iget-object v1, v1, Li/f;->f:Landroid/content/Context;

    iget-object v2, p0, Li/f$l;->a:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v4, 0x21
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v15, v4, :old_api_registerReceiver_compat_1

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_1

    :old_api_registerReceiver_compat_1
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_1

    :cond_2
    :goto_0
    return-void
.end method
