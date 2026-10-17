.class public final Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;
.super Li/b;


# instance fields
.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li/b;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    return-void
.end method

.method private final b()V
    .locals 10

    const-string v0, "clockskin"
    const-string v1, "ClockSkin"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2f

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "folder.list()"

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Comparable;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/a/c;->a([Ljava/lang/Comparable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "it"

    invoke-static {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ".zip"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v3, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->l:Z

    goto :goto_2

    :cond_6

    const-string v2, ".watch"

    invoke-static {v1, v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->l:Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final a(Ljava/util/List;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v2, "windowManager"

    invoke-static {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-int v7, v1, v6

    new-instance v8, Lcom/ailife/ClockSkinTransfer/b;

    iget-boolean v9, v0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->k:Z

    iget-boolean v10, v0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->l:Z

    invoke-direct {v8, v9, v10}, Lcom/ailife/ClockSkinTransfer/b;-><init>(ZZ)V

    mul-int v5, v5, v7

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    check-cast v11, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_0

    div-int v13, v10, v6

    mul-int v13, v13, v7

    add-int/2addr v13, v1

    rem-int/2addr v10, v6

    mul-int v10, v10, v7

    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    move/from16 v16, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v15, v9, v9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, v10, v7

    add-int v9, v13, v7

    invoke-direct {v0, v10, v13, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v11, v15, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move/from16 v16, v1

    :goto_1
    move v10, v12

    move/from16 v1, v16

    move-object/from16 v0, p0

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "bmp"

    invoke-static {v2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.watchengine.changeface"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "faceName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fullPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, p1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->n:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Li/b;->onCreate(Landroid/os/Bundle;)V
    
    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->b()V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "intent.data"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ailife/ClockSkinTransfer/b;

    iget-boolean v1, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->k:Z

    iget-boolean v2, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->l:Z

    invoke-direct {v0, v1, v2}, Lcom/ailife/ClockSkinTransfer/b;-><init>(ZZ)V

    const/4 v2, 0x1

    const-string v1, ".zip"

    invoke-static {p1, v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".watch"

    invoke-static {p1, v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    :cond_5


    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-static {v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inStream"

    invoke-static {v1, v3}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->m:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " installed"

    const-string v0, "watchface installed successfully"

    goto/16 :goto_2

    :cond_3

    const-string v0, "Invalid watchface"

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    
    new-instance v0, Landroid/content/Intent;
    
    const-class v2, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    

    :cond_4
    :goto_3

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/InstallWatchFromIntentActivity;->finish()V
    return-void
.end method
