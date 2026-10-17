.class public Lcom/ricktop/ClockSkinCoco/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/ricktop/ClockSkinCoco/p;

.field private static final sbnCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/p;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/p;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/r;->sbnCache:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/ricktop/ClockSkinCoco/p$b;)I
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    invoke-virtual {v0, p0}, Lcom/ricktop/ClockSkinCoco/p;->a(Lcom/ricktop/ClockSkinCoco/p$b;)I

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;IJ)I
    .locals 6

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ricktop/ClockSkinCoco/p;->c(Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result p0

    return p0
.end method

.method static c(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "app_icon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static d(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    const-string v0, "android.largeIcon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static e()Lcom/ricktop/ClockSkinCoco/p;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    return-object v0
.end method

.method static f(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "android.picture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static g(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "android.showChronometer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static h(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "android.text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static i(Landroid/os/Bundle;)[Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "android.textLines"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static j(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "android.title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/app/Notification;)[J
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method static l(Landroid/app/Notification;)Z
    .locals 0

    iget p0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;
    .locals 6

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ricktop/ClockSkinCoco/p;->e(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/ricktop/ClockSkinCoco/p$b;)I
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    invoke-virtual {v0, p0}, Lcom/ricktop/ClockSkinCoco/p;->g(Lcom/ricktop/ClockSkinCoco/p$b;)I

    move-result p0

    return p0
.end method


.method public static clear()V
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    # Remove p0 from the invocation - instance is already in v0
    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/p;->clear()V

    return-void
.end method

.method public static length()I
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->a:Lcom/ricktop/ClockSkinCoco/p;

    # Remove p0 from the invocation - instance is already in v0
    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v0

    return v0
.end method

.method public static cacheSbn(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 4

    # Generate cache key from SBN: "package|tag|id|postTime"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # Store SBN in cache
    sget-object v1, Lcom/ricktop/ClockSkinCoco/r;->sbnCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # Return cache key
    return-object v0
.end method

.method public static getCachedSbn(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    .locals 1

    # Retrieve SBN from cache
    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->sbnCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public static removeCachedSbn(Ljava/lang/String;)V
    .locals 1

    # Remove SBN from cache
    sget-object v0, Lcom/ricktop/ClockSkinCoco/r;->sbnCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method