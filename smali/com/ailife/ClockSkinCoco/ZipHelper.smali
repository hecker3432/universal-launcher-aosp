.class public Lcom/ailife/ClockSkinCoco/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# Find watch.xml in the zip file, searching root and one level deep
# Returns: "" if in root, "subfolder/" if in subfolder, null if not found
.method public static findWatchXmlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "zipPath"    # Ljava/lang/String;

    const-string v0, "ZipHelper"

    # Log start
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Searching for watch.xml in: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Try to open the zip file
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    # First check root: watch.xml
    :try_start_1
    const-string v2, "watch.xml"
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    move-result-object v3

    if-eqz v3, :cond_not_in_root

    # Found in root
    const-string v2, "Found watch.xml in root"
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    const-string v2, ""
    return-object v2

    :cond_not_in_root
    # Not in root, search one level deep
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    move-result-object v2

    const/4 v3, 0x0  # foundPath = null

    :loop_entries
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    move-result v4
    if-eqz v4, :end_loop

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
    move-result-object v5

    # Check if this entry ends with /watch.xml (one level deep)
    const-string v6, "/watch.xml"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v7

    if-eqz v7, :loop_entries

    # Found watch.xml in subfolder, extract the subfolder path
    # Entry name is like "SubFolder/watch.xml", we want "SubFolder/"
    const-string v6, "watch.xml"
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v6
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v7
    sub-int/2addr v7, v6
    const/4 v6, 0x0
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3

    # Check that this is exactly one level deep (no more slashes before the final one)
    const/4 v6, 0x0
    const-string v7, "/"
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v6

    # If indexOf("/") equals length-1, it's exactly one level deep
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    move-result v7
    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :loop_entries

    # Found valid subfolder path
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Found watch.xml in subfolder: "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    return-object v3

    :end_loop
    # Not found
    const-string v2, "watch.xml not found in zip"
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0
    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Error searching zip file: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0
    return-object v2
.end method

# Extract preview image from zip file, searching root and one level deep
# Searches for: preview.jpg, preview.png, thumb.png, img_clock_preview.png
# Returns: Bitmap or null if not found
# Find clock_skin.xml in the zip file, searching root and one level deep
# Returns: "" if in root, "subfolder/" if in subfolder, null if not found
.method public static findClockSkinXmlPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "zipPath"    # Ljava/lang/String;

    const-string v0, "ZipHelper"

    # Log start
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Searching for clock_skin.xml in: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # Try to open the zip file
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    # First check root: clock_skin.xml
    :try_start_1
    const-string v2, "clock_skin.xml"
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    move-result-object v3

    if-eqz v3, :cond_not_in_root

    # Found in root
    const-string v2, "Found clock_skin.xml in root"
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    const-string v2, ""
    return-object v2

    :cond_not_in_root
    # Not in root, search one level deep
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    move-result-object v2

    const/4 v3, 0x0  # foundPath = null

    :loop_entries
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    move-result v4
    if-eqz v4, :end_loop

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
    move-result-object v5

    # Check if this entry ends with /clock_skin.xml (one level deep)
    const-string v6, "/clock_skin.xml"
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v7

    if-eqz v7, :loop_entries

    # Found clock_skin.xml in subfolder, extract the subfolder path
    # Entry name is like "SubFolder/clock_skin.xml", we want "SubFolder/"
    const-string v6, "clock_skin.xml"
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v6
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v7
    sub-int/2addr v7, v6
    const/4 v6, 0x0
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v3

    # Check that this is exactly one level deep (no more slashes before the final one)
    const/4 v6, 0x0
    const-string v7, "/"
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v6

    # If indexOf("/") equals length-1, it's exactly one level deep
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    move-result v7
    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :loop_entries

    # Found valid subfolder path
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Found clock_skin.xml in subfolder: "
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    return-object v3

    :end_loop
    # Not found
    const-string v2, "clock_skin.xml not found in zip"
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0
    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Error searching zip file: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0
    return-object v2
.end method

# Extract preview image from zip file, searching root and one level deep
# Searches for: preview.jpg, preview.png, thumb.png, img_clock_preview.png
# Returns: Bitmap or null if not found
.method public static extractPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "zipPath"    # Ljava/lang/String;

    const-string v0, "ZipHelper"

    # Try to open the zip file
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    # Create array of preview image names to search (5 elements now)
    const/4 v2, 0x5
    new-array v2, v2, [Ljava/lang/String;
    const/4 v3, 0x0
    const-string v4, "preview.jpg"
    aput-object v4, v2, v3
    const/4 v3, 0x1
    const-string v4, "preview.png"
    aput-object v4, v2, v3
    const/4 v3, 0x2
    const-string v4, "thumb.png"
    aput-object v4, v2, v3
    const/4 v3, 0x3
    const-string v4, "img_clock_preview.png"
    aput-object v4, v2, v3
    const/4 v3, 0x4
    const-string v4, "clock_skin_model.png"
    aput-object v4, v2, v3

    # First check root for each preview name
    const/4 v3, 0x0
    array-length v4, v2

    :loop_root_names
    if-ge v3, v4, :cond_check_subfolders

    aget-object v5, v2, v3
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    move-result-object v6

    if-eqz v6, :cond_next_root_name

    # Found in root, extract bitmap
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "Found preview in root: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    move-result-object v7
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    move-result-object v8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    return-object v8

    :cond_next_root_name
    add-int/lit8 v3, v3, 0x1
    goto :loop_root_names

    :cond_check_subfolders
    # Not found in root, search one level deep
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    move-result-object v3

    :loop_entries
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    move-result v4
    if-eqz v4, :end_loop

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
    move-result-object v5

    # Check each preview name pattern
    const/4 v6, 0x0
    array-length v7, v2

    :loop_subfolder_names
    if-ge v6, v7, :cond_next_entry

    aget-object v8, v2, v6

    # Build pattern: "/" + previewName
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    const-string p0, "/"
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result p0

    if-eqz p0, :cond_next_subfolder_name

    # Found preview in subfolder, check it's exactly one level deep
    # Count slashes in the path
    const/4 p0, 0x0
    const/4 v9, 0x0

    :loop_count_slashes
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v8
    if-ge p0, v8, :end_count_slashes

    invoke-virtual {v5, p0}, Ljava/lang/String;->charAt(I)C
    move-result v8
    const/16 v0, 0x2f  # '/'

    if-ne v8, v0, :cond_not_slash
    add-int/lit8 v9, v9, 0x1

    :cond_not_slash
    add-int/lit8 p0, p0, 0x1
    goto :loop_count_slashes

    :end_count_slashes
    # If exactly one slash, it's one level deep
    const/4 p0, 0x1
    if-ne v9, p0, :cond_next_subfolder_name

    # Extract bitmap
    const-string v0, "ZipHelper"
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "Found preview in subfolder: "
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    move-result-object v8
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    move-result-object v9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    return-object v9

    :cond_next_subfolder_name
    add-int/lit8 v6, v6, 0x1
    goto :loop_subfolder_names

    :cond_next_entry
    goto :loop_entries

    :end_loop
    # Not found
    const-string v0, "ZipHelper"
    const-string v2, "Preview image not found in zip"
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0
    return-object v2

    :catch_0
    move-exception v1

    const-string v0, "ZipHelper"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Error extracting preview: "
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0
    return-object v2
.end method
