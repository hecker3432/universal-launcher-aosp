.class public Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;,
        Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->e:Z

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    invoke-direct {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;-><init>()V

    const v2, 0x7f08008a

    iput v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->b:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createStoreLink()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    invoke-direct {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;-><init>()V

    const v2, 0x7f080060

    iput v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->b:I

    const/4 v2, 0x1

    iput v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z



    new-instance v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    invoke-direct {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;-><init>()V

    const v2, 0x7f080061

    iput v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->b:I

    const/4 v2, 0x2

    iput v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private scanDirectoryRecursive(Ljava/io/File;Ljava/util/List;)V
    .locals 5

    # Check if directory is null or not a directory
    if-eqz p1, :cond_end

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_continue

    :cond_end
    return-void

    :cond_continue
    # Get list of files in current directory
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_return

    # Iterate through all files
    const/4 v1, 0x0

    :goto_loop
    array-length v2, v0

    if-ge v1, v2, :cond_return

    aget-object v3, v0, v1

    # Check if it's a directory - recurse into it
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_check_file

    # Recursive call for subdirectory
    invoke-direct {p0, v3, p2}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->scanDirectoryRecursive(Ljava/io/File;Ljava/util/List;)V

    goto :goto_next

    :cond_check_file
    # Check if file ends with .watch, .zip, or .face
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v2, ".watch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_add_file

    const-string v2, ".zip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_add_file

    const-string v2, ".face"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_next

    :cond_add_file
    # Add this file to the list
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_next
    :goto_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_loop

    :cond_return
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "ClockSkin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    # Create a temporary list to hold File objects from recursive scan
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # Recursively scan the ClockSkin directory
    invoke-direct {p0, v1, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->scanDirectoryRecursive(Ljava/io/File;Ljava/util/List;)V

    # Convert ArrayList to array for compatibility with rest of code
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/io/File;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    if-eqz v1, :cond_5

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "sp_clock_skin_sort_method"

    const-string v5, "false"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2


    goto :goto_0

    :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v2, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;

    invoke-direct {v2, p0, v3}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$b;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;I)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/clock_skin_model.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".watch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".face"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v4, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    invoke-direct {v4}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;-><init>()V

    iput-object v3, v4, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->d:Ljava/lang/String;

    # Calculate relative path from ClockSkin folder
    # Get the ClockSkin folder path
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "ClockSkin"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    # Get the file's absolute path
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    # Calculate relative path by removing the ClockSkin folder path
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_use_filename

    # Remove the ClockSkin folder path and leading separator
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :cond_set_filename

    :cond_use_filename
    # Fallback to just filename if path calculation fails
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_set_filename
    iput-object v3, v4, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->e:Ljava/lang/String;

    iput v2, v4, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method static synthetic c(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    const/4 v0, 0x0

    #get default watch
    iput-boolean v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->e:Z

    iget-object v4, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z


    #get store link
    iget-object v4, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->createStoreLink()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z


    #get from storage
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/ClockSkin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "mkdir"

    const-string v1, "can\'t create clockskin dir"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8

    const/4 v0, 0x0
    
    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    iput v0, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->c:I

    iget v2, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->b:I

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private e()V
    .locals 8

    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    new-instance v1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;

    invoke-direct {v1, p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/ClickableViewPager;->setOnItemClickListener(Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "allowDelete"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v7, Lcom/ricktop/myclockskinApp/widgetprovider/a;

    iget-object v5, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->b:Ljava/util/List;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/ricktop/myclockskinApp/widgetprovider/a;-><init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/ClickableViewPager;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/ricktop/ClockSkinCoco/H;->setAdapter(Landroidx/viewpager/widget/a;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "watch_path"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->e:Z

    if-eqz v2, :cond_1

    const-string v1, "default.watch"

    :cond_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    iget-object v4, v3, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->e:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v1, v3, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->c:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3f3

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->d()V

    invoke-direct {p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->e()V

    new-instance p1, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$a;

    invoke-direct {p1, p0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$a;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;)V

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->f:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->f:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v2, 0x21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v2, :old_api_registerReceiver_compat_40

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_40

    :old_api_registerReceiver_compat_40
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_40

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
