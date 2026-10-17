.class public Lcom/ricktop/ClockSkinCoco/ScreenControl$LockAppDeviceAdmin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/ScreenControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockAppDeviceAdmin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/t;->a(Landroid/content/Context;)V

    invoke-static {p1}, LO/a;->b(Landroid/content/Context;)LO/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "BROADCAST_ADMIN_DISABLED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, LO/a;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, LO/a;->b(Landroid/content/Context;)LO/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "BROADCAST_ADMIN_ENABLED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, LO/a;->c(Landroid/content/Intent;)Z

    return-void
.end method
