.class Li/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/q$a;
    }
.end annotation


# static fields
.field private static d:Li/q;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;

.field private final c:Li/q$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li/q$a;

    invoke-direct {v0}, Li/q$a;-><init>()V

    iput-object v0, p0, Li/q;->c:Li/q$a;

    iput-object p1, p0, Li/q;->a:Landroid/content/Context;

    iput-object p2, p0, Li/q;->b:Landroid/location/LocationManager;

    return-void
.end method

.method static a(Landroid/content/Context;)Li/q;
    .locals 2

    sget-object v0, Li/q;->d:Li/q;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Li/q;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Li/q;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Li/q;->d:Li/q;

    :cond_0
    sget-object p0, Li/q;->d:Li/q;

    return-object p0
.end method

.method private b()Landroid/location/Location;
    .locals 7

    iget-object v0, p0, Li/q;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lz/c;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-direct {p0, v0}, Li/q;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Li/q;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lz/c;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "gps"

    invoke-direct {p0, v1}, Li/q;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    :try_start_0
    iget-object v0, p0, Li/q;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/q;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TwilightManager"

    const-string v1, "Failed to get last known location"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private e()Z
    .locals 5

    iget-object v0, p0, Li/q;->c:Li/q$a;

    iget-wide v0, v0, Li/q$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 22

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1


    const-string v1, "Skin_Weather_Location_1"

    const-string v2, "London,0.1234,0.1234"

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2


    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18


    const-string v0, "TwilightManager"

    const-string v1, "accessing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I



    move-object/from16 v0, p0

    iget-object v1, v0, Li/q;->c:Li/q$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Li/p;->b()Li/p;

    move-result-object v11

    const-wide/32 v12, 0x5265c00

    sub-long v3, v9, v12

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-object v2, v11

    invoke-virtual {v11, v3, v5, v7}, Li/p;->a(JDD)V

    iget-wide v14, v11, Li/p;->a:J

    move-wide v3, v9

    invoke-virtual {v11, v3, v5, v7}, Li/p;->a(JDD)V

    iget v2, v11, Li/p;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-wide v5, v11, Li/p;->b:J

    iget-wide v3, v11, Li/p;->a:J

    add-long/2addr v12, v9

    move-object v2, v11

    move-wide/from16 v20, v14

    move-wide v14, v3

    move-wide v3, v12

    move-wide v12, v5

    move-wide/from16 v5, v16

    move v0, v7

    move-wide/from16 v7, v18

    invoke-virtual {v11, v7, v5, v7}, Li/p;->a(JDD)V

    iget-wide v5, v11, Li/p;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v12, v2

    if-eqz v4, :cond_4

    cmp-long v4, v14, v2

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v2, v9, v14

    if-lez v2, :cond_2

    move-wide v2, v5

    goto :goto_1

    :cond_2
    cmp-long v2, v9, v12

    if-lez v2, :cond_3

    move-wide v2, v14

    goto :goto_1

    :cond_3
    move-wide v2, v12

    :goto_1
    const-wide/32 v7, 0xea60

    add-long/2addr v2, v7

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/32 v2, 0x2932e00

    add-long/2addr v2, v9

    :goto_3
    iput-boolean v0, v1, Li/q$a;->a:Z

    move-wide/from16 v7, v20

    iput-wide v7, v1, Li/q$a;->b:J

    iput-wide v12, v1, Li/q$a;->c:J

    iput-wide v14, v1, Li/q$a;->d:J

    iput-wide v5, v1, Li/q$a;->e:J

    iput-wide v2, v1, Li/q$a;->f:J

    return-void
.end method


# virtual methods
.method d()Z
    .locals 2

    iget-object v0, p0, Li/q;->c:Li/q$a;

    invoke-direct {p0}, Li/q;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Li/q$a;->a:Z

    return v0

    :cond_0

    invoke-direct {p0}, Li/q;->f()V

    iget-boolean v0, v0, Li/q$a;->a:Z

    return v0

.end method
