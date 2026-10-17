.class public Lcom/ailife/ClockSkinTransfer/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteRecursive(Ljava/io/File;)Z
    .registers 6

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1d

    .line 265
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 266
    invoke-static {v4}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->deleteRecursive(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 267
    return v2

    .line 265
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 272
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 279
    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 280
    :cond_5
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 281
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 282
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 283
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 284
    const-string v0, "\'"

    const-string v1, "&#39;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 280
    return-object p0
.end method

.method public static generateWatchFaceListHtml(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 4

    .line 67
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/ailife/ClockSkinTransfer/WatchFaceServer;->generateMainPageHtml(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static handleFolderCreate(Ljava/util/Map;Landroid/content/Context;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    .line 87
    :goto_23
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v3, "text/html"

    const/4 v4, 0x3

    if-eqz p0, :cond_8b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_8b

    .line 91
    :cond_35
    invoke-static {p1, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->createFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 93
    if-eqz p1, :cond_63

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder \'"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 95
    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' created successfully"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/String;

    aput-object v3, p1, v2

    aput-object p0, p1, v1

    const-string p0, "200"

    aput-object p0, p1, v0

    .line 94
    return-object p1

    .line 97
    :cond_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create folder \'"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 98
    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/String;

    aput-object v3, p1, v2

    aput-object p0, p1, v1

    const-string p0, "500"

    aput-object p0, p1, v0

    .line 97
    return-object p1

    .line 88
    :cond_8b
    :goto_8b
    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v2

    const-string p1, "Missing parameter: name"

    aput-object p1, p0, v1

    const-string p1, "400"

    aput-object p1, p0, v0

    return-object p0
.end method

.method private static handleFolderDelete(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 106
    const-string p2, "name"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object p0, v1

    .line 108
    :goto_24
    const/4 p2, 0x2

    const/4 v0, 0x1

    const-string v3, "text/html"

    const/4 v4, 0x3

    if-eqz p0, :cond_d5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_37

    goto/16 :goto_d5

    .line 113
    :cond_37
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClockSkin/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "Folder \'"

    if-nez p1, :cond_81

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 117
    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/String;

    aput-object v3, p1, v2

    aput-object p0, p1, v0

    const-string p0, "404"

    aput-object p0, p1, p2

    .line 116
    return-object p1

    .line 121
    :cond_81
    invoke-static {v5}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->deleteRecursive(Ljava/io/File;)Z

    move-result p1

    .line 123
    if-eqz p1, :cond_ad

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 125
    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' deleted successfully"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/String;

    aput-object v3, p1, v2

    aput-object p0, p1, v0

    const-string p0, "200"

    aput-object p0, p1, p2

    .line 124
    return-object p1

    .line 127
    :cond_ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete folder \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 128
    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/String;

    aput-object v3, p1, v2

    aput-object p0, p1, v0

    const-string p0, "500"

    aput-object p0, p1, p2

    .line 127
    return-object p1

    .line 109
    :cond_d5
    :goto_d5
    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v2

    const-string p1, "Missing parameter: name"

    aput-object p1, p0, v0

    const-string p1, "400"

    aput-object p1, p0, p2

    return-object p0
.end method

.method private static handleFolderList(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .line 77
    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/WatchFaceServer;->getFoldersAsJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/json"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "200"

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static handleFolderRename(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 136
    const-string p2, "oldname"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object p2, v1

    .line 137
    :goto_24
    const-string v0, "newname"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 139
    :cond_45
    const/4 p0, 0x2

    const/4 v0, 0x1

    const-string v3, "text/html"

    const/4 v4, 0x3

    if-eqz p2, :cond_d1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d1

    if-eqz v1, :cond_d1

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_d1

    .line 144
    :cond_63
    invoke-static {p1, p2, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->renameFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 146
    const-string v5, "\'"

    const-string v6, "\' to \'"

    if-eqz p1, :cond_9f

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder renamed from \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 148
    invoke-static {p2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/String;

    aput-object v3, p2, v2

    aput-object p1, p2, v0

    const-string p1, "200"

    aput-object p1, p2, p0

    .line 147
    return-object p2

    .line 150
    :cond_9f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename folder from \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 151
    invoke-static {p2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/String;

    aput-object v3, p2, v2

    aput-object p1, p2, v0

    const-string p1, "500"

    aput-object p1, p2, p0

    .line 150
    return-object p2

    .line 141
    :cond_d1
    :goto_d1
    new-array p1, v4, [Ljava/lang/String;

    aput-object v3, p1, v2

    const-string p2, "Missing parameters: oldname or newname"

    aput-object p2, p1, v0

    const-string p2, "400"

    aput-object p2, p1, p0

    return-object p1
.end method

.method public static handleRequest(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 31
    :cond_4
    const-string v1, "/folder/list"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 32
    invoke-static {p2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleFolderList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_11
    const-string v1, "/folder/create"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 35
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleFolderCreate(Ljava/util/Map;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1e
    const-string v1, "/folder/delete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 38
    invoke-static {p1, p2, p3}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleFolderDelete(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_2b
    const-string v1, "/folder/rename"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 41
    invoke-static {p1, p2, p3}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleFolderRename(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_38
    const-string v1, "/watchface/rename"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 45
    invoke-static {p1, p3}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleWatchFaceRename(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_45
    const-string v1, "/watchface/move"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 48
    invoke-static {p1, p2, p3}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleWatchFaceMove(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_52
    const-string p2, "/watchface/delete"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 51
    invoke-static {p1, p3}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->handleWatchFaceDelete(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_5f
    return-object v0
.end method

.method private static handleWatchFaceDelete(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    const-string v0, "file"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    .line 238
    :goto_23
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v3, "text/html"

    const/4 v4, 0x3

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_6d

    .line 242
    :cond_35
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_4d

    .line 245
    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v2

    const-string p1, "File not found"

    aput-object p1, p0, v1

    const-string p1, "404"

    aput-object p1, p0, v0

    return-object p0

    .line 248
    :cond_4d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_60

    .line 249
    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v2

    const-string p1, "File deleted"

    aput-object p1, p0, v1

    const-string p1, "200"

    aput-object p1, p0, v0

    return-object p0

    .line 251
    :cond_60
    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v2

    const-string p1, "Error deleting file"

    aput-object p1, p0, v1

    const-string p1, "500"

    aput-object p1, p0, v0

    return-object p0

    .line 239
    :cond_6d
    :goto_6d
    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v2

    const-string p1, "Missing parameter: file"

    aput-object p1, p0, v1

    const-string p1, "400"

    aput-object p1, p0, v0

    return-object p0
.end method

.method private static handleWatchFaceMove(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 201
    const-string v0, "file"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object v0, v2

    .line 202
    :goto_24
    const-string v1, "folder"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 204
    :cond_45
    const/4 p0, 0x2

    const/4 v1, 0x1

    const-string v4, "text/html"

    const/4 v5, 0x3

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_58

    goto/16 :goto_e0

    .line 209
    :cond_58
    if-nez v2, :cond_5c

    const-string v2, ""

    .line 212
    :cond_5c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_8f

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 216
    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' does not exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/String;

    aput-object v4, p2, v3

    aput-object p1, p2, v1

    const-string p1, "404"

    aput-object p1, p2, p0

    .line 215
    return-object p2

    .line 220
    :cond_8f
    invoke-static {p1, v6, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->moveWatchFace(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    .line 222
    if-eqz p1, :cond_d3

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9d

    const-string v2, "Root"

    .line 224
    :cond_9d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Watch face \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 225
    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' moved to \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/String;

    aput-object v4, p2, v3

    aput-object p1, p2, v1

    const-string p1, "200"

    aput-object p1, p2, p0

    .line 224
    return-object p2

    .line 227
    :cond_d3
    new-array p1, v5, [Ljava/lang/String;

    aput-object v4, p1, v3

    const-string p2, "Failed to move watch face"

    aput-object p2, p1, v1

    const-string p2, "500"

    aput-object p2, p1, p0

    return-object p1

    .line 205
    :cond_e0
    :goto_e0
    new-array p1, v5, [Ljava/lang/String;

    aput-object v4, p1, v3

    const-string p2, "Missing parameter: file"

    aput-object p2, p1, v1

    const-string p2, "400"

    aput-object p2, p1, p0

    return-object p1
.end method

.method private static handleWatchFaceRename(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 161
    const-string v0, "file"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object v0, v2

    .line 162
    :goto_24
    const-string v1, "newname"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 164
    :cond_45
    const/4 p0, 0x2

    const/4 v1, 0x1

    const-string v4, "text/html"

    const/4 v5, 0x3

    if-eqz v0, :cond_117

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_117

    if-eqz v2, :cond_117

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_64

    goto/16 :goto_117

    .line 170
    :cond_64
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_97

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 174
    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    aput-object v4, v0, v3

    aput-object p1, v0, v1

    const-string p1, "404"

    aput-object p1, v0, p0

    .line 173
    return-object v0

    .line 178
    :cond_97
    new-instance p1, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {p1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A file with name \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 182
    invoke-static {v2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    aput-object v4, v0, v3

    aput-object p1, v0, v1

    const-string p1, "409"

    aput-object p1, v0, p0

    .line 181
    return-object v0

    .line 186
    :cond_ce
    invoke-virtual {v6, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    .line 188
    if-eqz p1, :cond_10a

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Watch face renamed from \'"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 190
    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' to \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v2}, Lcom/ailife/ClockSkinTransfer/RequestHandler;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    aput-object v4, v0, v3

    aput-object p1, v0, v1

    const-string p1, "200"

    aput-object p1, v0, p0

    .line 189
    return-object v0

    .line 192
    :cond_10a
    new-array p1, v5, [Ljava/lang/String;

    aput-object v4, p1, v3

    const-string v0, "Failed to rename watch face"

    aput-object v0, p1, v1

    const-string v0, "500"

    aput-object v0, p1, p0

    return-object p1

    .line 166
    :cond_117
    :goto_117
    new-array p1, v5, [Ljava/lang/String;

    aput-object v4, p1, v3

    const-string v0, "Missing parameters: file or newname"

    aput-object v0, p1, v1

    const-string v0, "400"

    aput-object v0, p1, p0

    return-object p1
.end method
