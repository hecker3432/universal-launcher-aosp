.class Lorg/cocos2dx/lib/Cocos2dxHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, LV/a$a;->i(Landroid/os/IBinder;)LV/a;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$002(LV/a;)LV/a;

    const/4 p1, 0x7

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->fastLoading(I)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$200()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$100()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
