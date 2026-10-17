.class public Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;
.super Ljava/lang/Object;
.source "WatchFaceFolderUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllFolders(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    # Get ClockSkin directory
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ClockSkin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Create result list
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # Check if directory exists
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_done

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_has_dir

    goto :cond_done

    :cond_has_dir
    # List all files/directories
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_has_files

    goto :cond_done

    :cond_has_files
    # Iterate through files
    array-length v2, v0

    const/4 v3, 0x0

    :goto_loop
    if-ge v3, v2, :cond_done

    aget-object v4, v0, v3

    # Check if it's a directory (not a file)
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_next

    # Get directory name
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    # Skip special folder names
    const-string v5, "Demo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_check_name

    goto :cond_next

    :cond_check_name
    # Add to list
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_loop

    :cond_done
    return-object v1
.end method

.method public static validateFolderName(Ljava/lang/String;)Z
    .registers 5

    # Check if null or empty
    const/4 v0, 0x0

    if-eqz p0, :cond_invalid

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_check_chars

    goto :cond_invalid

    :cond_check_chars
    # Check for invalid characters: / \ : * ? " < > |
    const-string v1, "[/\\\\:*?\"<>|]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_check_reserved

    goto :cond_invalid

    :cond_check_reserved
    # Check reserved names
    const-string v1, "Pinned"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_check_other

    goto :cond_invalid

    :cond_check_other
    const-string v1, "Other"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_check_demo

    goto :cond_invalid

    :cond_check_demo
    const-string v1, "Demo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_valid

    goto :cond_invalid

    :cond_valid
    const/4 v0, 0x1

    :cond_invalid
    return v0
.end method

.method public static getFolderForFile(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    # Get parent file
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    # If no parent, return empty string
    const-string v1, ""

    if-nez v0, :cond_has_parent

    return-object v1

    :cond_has_parent
    # Get ClockSkin base directory
    new-instance v2, Ljava/io/File;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "ClockSkin"

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if parent is ClockSkin root
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_get_name

    # Parent is ClockSkin root, return empty string (represents "Other" folder)
    return-object v1

    :cond_get_name
    # Return parent folder name
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createFolder(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    # Validate folder name
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->validateFolderName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_validated

    return v1

    :cond_validated
    # Get ClockSkin directory
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v2, "ClockSkin"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Create new folder
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if already exists
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_try_create

    return v1

    :cond_try_create
    # Create directory
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0
.end method

.method public static moveWatchFace(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    # Get ClockSkin base directory
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "ClockSkin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Build target directory
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_has_folder

    # Empty string means move to root (ClockSkin/)
    move-object p0, v0

    goto :cond_target_ready

    :cond_has_folder
    # Create File object for target folder
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_target_ready
    # Ensure target directory exists
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_create_target

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_create_target

    return v1

    :cond_create_target
    # Build target file path
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if target already exists
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_do_move

    # Target file already exists, fail
    return v1

    :cond_do_move
    # Move file using renameTo
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static renameFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    # Validate new folder name
    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->validateFolderName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_validated

    return v1

    :cond_validated
    # Get ClockSkin directory
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v2, "ClockSkin"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Get old folder
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if old folder exists
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_check_is_dir

    return v1

    :cond_check_is_dir
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_create_new

    return v1

    :cond_create_new
    # Create new folder path
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if new folder already exists
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_do_rename

    return v1

    :cond_do_rename
    # Rename folder
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
