.class public LZ/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ/b$c;
    }
.end annotation


# static fields
.field private static a:D = 0.0

.field private static b:D = 0.0

.field private static c:Ljava/lang/String; = null

.field private static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, LZ/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p1, LZ/b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, LZ/b;->d:Z

    invoke-direct {p0, p1, p2}, LZ/b;->f(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    sput-boolean p1, LZ/b;->d:Z

    return-void
.end method

.method static synthetic a()D
    .locals 2

    sget-wide v0, LZ/b;->a:D

    return-wide v0
.end method

.method static synthetic b(D)D
    .locals 0

    sput-wide p0, LZ/b;->a:D

    return-wide p0
.end method

.method static synthetic c()D
    .locals 2

    sget-wide v0, LZ/b;->b:D

    return-wide v0
.end method

.method static synthetic d(D)D
    .locals 0

    sput-wide p0, LZ/b;->b:D

    return-wide p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, LZ/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;Z)V
    .locals 7

    #stop gps from being activated
    return-void

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AccuLocation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "gps"

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Please enable Fine Location"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, LZ/b$a;

    invoke-direct {p2, p0}, LZ/b$a;-><init>(LZ/b;)V

    const-string v1, "Open Location"

    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    new-instance p1, LZ/b$b;

    invoke-direct {p1, p0}, LZ/b$b;-><init>(LZ/b;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p2, v1}, Lz/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    :try_start_1
    const-string v2, "network"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x42c80000    # 100.0f

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x42c80000    # 100.0f

    move-object v1, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
