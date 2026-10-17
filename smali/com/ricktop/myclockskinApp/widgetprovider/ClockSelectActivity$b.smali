.class Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->b()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;


# direct methods
.method constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;->b:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    iput p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3

    const/4 v1, -0x1

    return v1

    :cond_2

    iget v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
