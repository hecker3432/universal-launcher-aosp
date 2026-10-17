.class public final Lcom/ailife/ClockSkinTransfer/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ailife/ClockSkinTransfer/b;->a:Z

    iput-boolean p2, p0, Lcom/ailife/ClockSkinTransfer/b;->b:Z

    return-void
.end method

.method private final a(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;
    .locals 4

    const/4 v0, 0x0

    check-cast v0, Ljava/util/zip/ZipEntry;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    :cond_1
    return-object v2
.end method

.method private final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/clock_skin_model.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/img_clock_preview.png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    const-string v1, ""

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clock_skin_model.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "img_clock_preview.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br/>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    move-object p1, v0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "exception"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    const-string v1, ""

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preview.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br/>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".zip"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinTransfer/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, ".watch"

    invoke-static {p1, v0, v1}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinTransfer/b;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinTransfer/b;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "zf"

    invoke-static {v1, v4}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fileName"

    invoke-static {v2, v4}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseFolder"

    invoke-static {v3, v4}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    const-string v6, "zf.entries()"

    invoke-static {v5, v6}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "java.util.Collections.list(this)"

    invoke-static {v5, v6}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    const-string v13, "it"

    invoke-static {v8, v13}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "it.name"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "/"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14, v12, v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "it.name"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "it.name"

    invoke-static {v14, v15}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    const-string v17, "/"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v14

    if-eqz v13, :cond_1

    invoke-virtual {v13, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v13, ""

    :goto_1
    const-string v14, "__MACOSX/"

    invoke-static {v13, v14, v12, v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "it.name"

    invoke-static {v14, v15}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    add-int v15, v15, v16

    if-eqz v14, :cond_a

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v14, v15}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "clock_skin_model.png"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "img_clock_preview.png"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "it.name"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, ".watch"

    invoke-static {v13, v14, v9}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-boolean v13, v0, Lcom/ailife/ClockSkinTransfer/b;->b:Z

    if-eqz v13, :cond_6

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "watchName"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v13

    check-cast v15, Ljava/lang/CharSequence;

    const-string v14, "/"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v15, v14, v12, v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v16, 0x2f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v13, v9}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    const-string v10, "zf.getInputStream(it)"

    invoke-static {v8, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v8}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    const-string v8, "watchName"

    invoke-static {v13, v8}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "it.name"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, ".zip"

    invoke-static {v13, v14, v9}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "it.name"

    invoke-static {v13, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "/"

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14, v12, v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "it.name"

    invoke-static {v10, v12}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "it.name"

    invoke-static {v12, v13}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    const/16 v15, 0x2f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v12

    add-int/2addr v12, v9

    if-eqz v10, :cond_7

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_3
    const/4 v10, 0x7

    invoke-static {v11, v11, v11, v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v1, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    const-string v11, "zf.getInputStream(it)"

    invoke-static {v8, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v8}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/io/File;Ljava/io/InputStream;)V

    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string v11, "originalName"

    invoke-static {v9, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9, v3}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_9
    :goto_4
    invoke-interface {v4, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    return-object v6

    :cond_c
    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_d

    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, ".zip"

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v8

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v13, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v8, v13}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v13}, Lcom/ailife/ClockSkinTransfer/b456/c/g;->b(Ljava/io/File;)Z

    goto :goto_8

    :cond_d
    move-object v15, v7

    check-cast v15, Ljava/lang/CharSequence;

    const-string v8, "/"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v15, v8, v12, v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v16, "/"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v8

    add-int/2addr v8, v9

    if-eqz v7, :cond_e

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v13, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v13}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v8, v7

    :goto_7
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_8
    iget-boolean v13, v0, Lcom/ailife/ClockSkinTransfer/b;->a:Z

    if-eqz v13, :cond_19

    new-instance v13, Ljava/util/zip/ZipOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v15, Ljava/io/OutputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v14, Ljava/io/OutputStream;

    invoke-direct {v13, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    const-string v11, "it"

    invoke-static {v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v14, "it.name"

    invoke-static {v11, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    const-string v14, "/"

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v2, v15}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v11, "it.name"

    invoke-static {v2, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v14, "it.name"

    invoke-static {v11, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v11

    check-cast v15, Ljava/lang/CharSequence;

    const-string v16, "/"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    if-eqz v2, :cond_10

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string v2, ""

    :goto_a
    invoke-static {v2, v7}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v14, "it.name"

    invoke-static {v11, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v11, :cond_15

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v11, v14}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "/"

    move-object/from16 v22, v4

    const/4 v4, 0x2

    const/4 v15, 0x0

    invoke-static {v11, v14, v12, v4, v15}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "it.name"

    invoke-static {v4, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x1

    add-int/2addr v2, v11

    if-eqz v4, :cond_12

    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v4}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "it.name"

    invoke-static {v4, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v4, :cond_14

    goto :goto_b

    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v1, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v10, "zf.getInputStream(it)"

    invoke-static {v4, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v2, v4}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->flush()V

    goto :goto_d

    :cond_14
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move-object/from16 v22, v4

    :cond_17
    :goto_d
    move-object/from16 v4, v22

    move-object/from16 v2, p2

    goto/16 :goto_9

    :cond_18
    move-object/from16 v22, v4

    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".zip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    goto/16 :goto_12

    :cond_19
    move-object/from16 v22, v4

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    const-string v9, "it"

    invoke-static {v4, v9}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "it.name"

    invoke-static {v9, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "/"

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v13, 0x2

    invoke-static {v9, v10, v12, v13, v11}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "it.name"

    invoke-static {v9, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.name"

    invoke-static {v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    const-string v14, "/"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v10

    if-eqz v9, :cond_1b

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_1b
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    const-string v9, ""

    :goto_f
    invoke-static {v9, v7}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.name"

    invoke-static {v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v10, :cond_20

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "/"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v10, v11, v12, v14, v13}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.name"

    invoke-static {v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    if-eqz v10, :cond_1d

    :goto_10
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_1d
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.name"

    invoke-static {v10, v11}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v10, :cond_1f

    goto :goto_10

    :goto_11
    const-string v10, ""

    invoke-static {v9, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    if-eqz v10, :cond_1a

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v10, v9, v4}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    goto/16 :goto_e

    :cond_1f
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    goto/16 :goto_e

    :cond_22
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    move-object v11, v13

    move-object/from16 v4, v22

    move-object/from16 v2, p2

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_5

    :cond_23
    return-object v6
.end method

.method public final a(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    # Ensure parent directory exists
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p2, p1}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const-string v0, "fis"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fos"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stream"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/io/File;Ljava/io/InputStream;)V

    return-void
.end method

.method public final a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "zip"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressedFileName"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputStream"

    invoke-static {p3, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move-object p2, p1

    check-cast p2, Ljava/io/OutputStream;

    invoke-virtual {p0, p3, p2}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 2

    const-string v0, "folder"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object p1, p2

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p3, p1}, Lcom/ailife/ClockSkinTransfer/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    const/4 p1, 0x1

    return p1
.end method
