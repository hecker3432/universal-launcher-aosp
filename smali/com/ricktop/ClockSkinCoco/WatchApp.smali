.class public Lcom/ricktop/ClockSkinCoco/WatchApp;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static b:Z = false

.field public static c:Z = true

.field public static d:Z = false

.field private static e:Z = false

.field private static f:Z = false

.field private static g:Lcom/ricktop/ClockSkinCoco/MainActivity;

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field private static n:Lcom/ricktop/ClockSkinCoco/WatchApp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/ricktop/ClockSkinCoco/WatchApp;->n:Lcom/ricktop/ClockSkinCoco/WatchApp;

    return-void
.end method

.method public static a()Lcom/ricktop/ClockSkinCoco/WatchApp;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->n:Lcom/ricktop/ClockSkinCoco/WatchApp;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->b:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->e:Z

    return v0
.end method

.method public static d()Lcom/ricktop/ClockSkinCoco/MainActivity;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->g:Lcom/ricktop/ClockSkinCoco/MainActivity;

    return-object v0
.end method

.method public static h()Z
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static i(Z)V
    .locals 0

    sput-boolean p0, Lcom/ricktop/ClockSkinCoco/WatchApp;->b:Z

    return-void
.end method

.method public static j(Z)V
    .locals 0

    sput-boolean p0, Lcom/ricktop/ClockSkinCoco/WatchApp;->e:Z

    return-void
.end method

.method public static k(Lcom/ricktop/ClockSkinCoco/MainActivity;)V
    .locals 3

    sget-object v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->g:Lcom/ricktop/ClockSkinCoco/MainActivity;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "WatchApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old MainActivity found :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ricktop/ClockSkinCoco/WatchApp;->g:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->g:Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sput-object p0, Lcom/ricktop/ClockSkinCoco/WatchApp;->g:Lcom/ricktop/ClockSkinCoco/MainActivity;

    return-void
.end method

.method public static l(Z)V
    .locals 0

    sput-boolean p0, Lcom/ricktop/ClockSkinCoco/WatchApp;->f:Z

    return-void
.end method


# virtual methods
.method public e()I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
