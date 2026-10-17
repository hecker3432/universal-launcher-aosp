.class public Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "WatchFaceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;,
        Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$C;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOLDER:I = 0x0

.field private static final VIEW_TYPE_WATCH_FACE:I = 0x1


# instance fields
.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private displayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private originalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->allItems:Ljava/util/List;

    # Store a copy of the original items for search filtering
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->originalItems:Ljava/util/List;

    .line 30
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->rebuildDisplayList()V

    .line 31
    return-void
.end method

.method private rebuildDisplayList()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->allItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 170
    instance-of v2, v1, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    if-eqz v2, :cond_30

    .line 171
    check-cast v1, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    .line 172
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->isCollapsed()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 174
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_2f
    goto :goto_35

    .line 177
    :cond_30
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_35
    goto :goto_b

    .line 180
    :cond_36
    return-void
.end method

.method private selectWatchFace(Ljava/io/File;)V
    .registers 7

    .line 90
    # Check if this is the demo face (empty path)
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :regular_face

    # This is the demo face - set watch_path to empty string
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "watch_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Show toast
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string v1, "Selected: Demo Face"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    # Send broadcast to refresh
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.watchengine.changeface"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Add faceName extra with empty string for demo face
    const-string v1, "faceName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # Close the activity
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_finish_demo

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_finish_demo
    return-void

    :regular_face
    # Show toast message
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    # Calculate relative path from ClockSkin folder
    # Get ClockSkin base directory
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "ClockSkin"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Get the absolute paths
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    # Calculate relative path: remove base path + "/" from full path
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_use_fullpath

    # Remove the base path to get relative path
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :cond_got_relative

    :cond_use_fullpath
    # Fallback: if not under ClockSkin, use full path
    move-object v0, v1

    :cond_got_relative

    .line 92
    # Send broadcast to trigger watch face change
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.watchengine.changeface"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Add faceName extra (relative path from ClockSkin)
    const-string v3, "faceName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # Add fullPath extra (full absolute path)
    const-string v0, "fullPath"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # Send the broadcast
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    # Close the activity
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_finish_done

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_finish_done

    .line 94
    return-void
.end method

.method private showMoveFolderDialog(Ljava/io/File;)V
    .registers 11

    .line 130
    # Get list of all folders
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->getAllFolders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    # Get current folder of the file
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->getFolderForFile(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # Create list with "Root" folder + all folders + "Create new folder..."
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # Add "Root" option if not already in root
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_skip_root

    const-string v3, "(Root)"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_skip_root
    # Add all folders except current
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_done_loop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    # Skip current folder
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_skip_item

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_skip_item
    goto :goto_loop

    :cond_done_loop
    # Add "Create new folder..." option
    const-string v0, "[ Create new folder... ]"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Convert to array
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    # Show dialog
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Move to folder"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;[Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showRenameDialog(Ljava/io/File;)V
    .registers 6

    .line 128
    # Get current name without extension
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_no_ext

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_no_ext
    # Create EditText
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    # Set current name as default
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    # Select all text
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    # Create dialog
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Rename Watch Face"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Landroid/widget/EditText;Ljava/io/File;)V

    const-string p1, "Rename"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$showMoveFolderDialog$5$com-ailife-ClockSkinCoco-WatchFaceAdapter([Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .registers 8

    .line 145
    # Get selected folder name
    aget-object p1, p1, p4

    # Check if "Create new folder..." was selected
    const-string p3, "[ Create new folder... ]"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_not_create

    # Show create folder dialog, then move
    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showCreateFolderAndMove(Ljava/io/File;)V

    return-void

    :cond_not_create
    # Check if "(Root)" was selected
    const-string p3, "(Root)"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_move_normal

    # Move to root (empty string)
    const-string p1, ""

    :cond_move_normal
    # Move the watch face
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->moveWatchFace(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_failed

    # Success
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_use_name

    const-string p1, "root"

    :cond_use_name
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Refresh list
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_done

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :cond_done

    :cond_failed
    # Failed
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Failed to move watch face"

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_done
    return-void
.end method

.method private showCreateFolderAndMove(Ljava/io/File;)V
    .registers 9

    .line 200
    # Inflate dialog layout
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    # Get EditText
    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    # Create dialog
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Create New Folder"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Landroid/widget/EditText;Ljava/io/File;)V

    const-string p1, "Create & Move"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    # Show keyboard
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_done

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_done
    return-void
.end method

.method synthetic lambda$showCreateFolderAndMove$6$com-ailife-ClockSkinCoco-WatchFaceAdapter(Landroid/widget/EditText;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .registers 7

    .line 210
    # Get folder name
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    # Check if empty
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_validate

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Folder name cannot be empty"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_validate
    # Validate
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->validateFolderName(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_create

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Invalid folder name"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_create
    # Create folder
    iget-object p4, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p4, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->createFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_failed

    # Move watch face
    iget-object p4, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p4, p2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->moveWatchFace(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    # Show success
    iget-object p4, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created folder and moved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Refresh
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_done

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :cond_done

    :cond_failed
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Failed to create folder"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_done
    return-void
.end method

.method synthetic lambda$onBindViewHolder$7$com-ailife-ClockSkinCoco-WatchFaceAdapter(Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showFolderMenu(Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method private showFolderMenu(Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V
    .registers 7

    # Get folder name
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getFolderName()Ljava/lang/String;

    move-result-object v0

    # Don't allow editing special folders (except Other which can only Move All)
    const-string v1, "Pinned"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_skip

    const-string v1, "Demo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_check_other

    :cond_skip
    # Show toast for special folders
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string v0, "Cannot modify special folders"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_check_other
    # Check if this is "Other" folder - only allow Move All
    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_create_menu

    # Create menu with only "Move All" option for Other folder
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Move All"

    aput-object v3, v1, v2

    goto :cond_show_dialog

    :cond_create_menu
    # Create menu options for regular folders
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Rename"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Move All"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Delete"

    aput-object v3, v1, v2

    :cond_show_dialog

    # Show dialog
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$showFolderMenu$8$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;Landroid/content/DialogInterface;I)V
    .registers 6

    # Check if this is "Other" folder (only has Move All option at index 0)
    const-string v0, "Other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_regular_folder

    # For "Other" folder, index 0 is Move All
    if-nez p4, :cond_done

    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showMoveAllDialog(Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    goto :cond_done

    :cond_regular_folder
    # For regular folders, handle all three options
    if-nez p4, :cond_move

    # Rename option
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showRenameFolderDialog(Ljava/lang/String;)V

    goto :cond_done

    :cond_move
    const/4 p3, 0x1

    if-ne p4, p3, :cond_delete

    # Move All option
    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showMoveAllDialog(Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    goto :cond_done

    :cond_delete
    const/4 p3, 0x2

    if-ne p4, p3, :cond_done

    # Delete option
    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showDeleteFolderDialog(Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    :cond_done
    return-void
.end method

.method private showMoveAllDialog(Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V
    .registers 12

    # Check if folder is empty
    invoke-virtual {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_has_files

    # Empty folder
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Folder is empty"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_has_files
    # Get list of all folders
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->getAllFolders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    # Create list with Root + folders (excluding current)
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # Add Root option
    const-string v3, "(Root)"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Add all folders except current
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_done_loop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    # Skip current folder
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_skip_item

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_skip_item
    goto :goto_loop

    :cond_done_loop
    # Convert to array
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    # Get file count for confirmation message
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    # Show dialog
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Move "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " watch face(s) from \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' to:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$showMoveAllDialog$11$com-ailife-ClockSkinCoco-WatchFaceAdapter([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 12

    # Get selected folder name
    aget-object p1, p1, p5

    # Check if Root was selected
    const-string p4, "(Root)"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_move_files

    # Move to root (empty string)
    const-string p1, ""

    :cond_move_files
    # Move all files
    const/4 p4, 0x0

    const/4 p5, 0x0

    move v0, p4

    move v1, v0

    :goto_loop
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_done_loop

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    # Move file
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->moveWatchFace(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_next

    add-int/lit8 v1, v1, 0x1

    :cond_next
    add-int/lit8 v0, v0, 0x1

    goto :goto_loop

    :cond_done_loop
    # Show result toast
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Moved "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " watch face(s) from \'"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "\' to "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_use_name

    const-string p1, "root"

    :cond_use_name
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Refresh list
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_done

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    :cond_done
    return-void
.end method

.method private showRenameFolderDialog(Ljava/lang/String;)V
    .registers 8

    # Inflate dialog layout
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    # Get EditText
    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    # Set current folder name
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    # Select all text
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    # Create dialog
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Rename Folder"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Landroid/widget/EditText;Ljava/lang/String;)V

    const-string p1, "Rename"

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    # Show keyboard
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_done

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_done
    return-void
.end method

.method synthetic lambda$showRenameFolderDialog$9$com-ailife-ClockSkinCoco-WatchFaceAdapter(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 7

    # Get new name in v0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    # Check if empty
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_validate

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p3, "Folder name cannot be empty"

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_validate
    # Check if same name
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_check_valid

    return-void

    :cond_check_valid
    # Validate name
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->validateFolderName(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_rename

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p3, "Invalid folder name"

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_rename
    # Rename folder
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p3, p2, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->renameFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_failed

    # Success
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Renamed \'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\' to \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "\'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Refresh
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_done

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :cond_done

    :cond_failed
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p3, "Failed to rename folder"

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_done
    return-void
.end method

.method private showDeleteFolderDialog(Ljava/lang/String;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V
    .registers 7

    # Check if folder is empty
    invoke-virtual {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_not_empty

    # Empty folder - show simple confirmation
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Delete Folder"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete folder \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/lang/String;)V

    const-string p1, "Delete"

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :cond_done

    :cond_not_empty
    # Folder not empty - show warning
    invoke-virtual {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Delete Folder"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " watch face(s). Move them first before deleting the folder."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "OK"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_done
    return-void
.end method

.method synthetic lambda$showDeleteFolderDialog$10$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 7

    # Get folder path
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    const-string v1, "ClockSkin"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Delete folder
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_failed

    # Success
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleted folder \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Refresh
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_done

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :cond_done

    :cond_failed
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Failed to delete folder"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_done
    return-void
.end method



.method private renameWatchFace(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    # Add .watch extension if not present
    const-string v1, ".watch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_has_ext

    move-object v1, p2

    goto :cond_done_ext

    :cond_has_ext
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_done_ext
    # Create new file with new name in same directory
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if target already exists
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_do_rename

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "A watch face with this name already exists"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_do_rename
    # Perform rename
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_failed

    # Success - show toast
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renamed to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    # Update pin if watch face was pinned
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_update_pin

    # Remove old pin
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->togglePin(Landroid/content/Context;Ljava/lang/String;)Z

    # Add new pin
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->togglePin(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_update_pin
    # Refresh list
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_done

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :cond_done

    :cond_failed
    # Failed - show error toast
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Failed to rename watch face"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_done
    return-void
.end method

.method private showWatchFaceMenu(Ljava/io/File;)V
    .registers 6

    .line 96
    # Check if this is demo face (empty path) - don't show menu
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :not_demo_face

    # This is demo face - don't show menu, just return
    return-void

    :not_demo_face
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 99
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v1, :cond_12

    const-string v1, "Unpin"

    goto :goto_14

    :cond_12
    const-string v1, "Pin"

    :goto_14
    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "Move to..."

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "Delete"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "Rename"

    aput-object v3, v2, v1

    .line 101
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/lang/String;Ljava/io/File;)V

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)V
    .registers 9

    .line 132
    if-eqz p1, :cond_73

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_73

    .line 138
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    # ALWAYS filter from originalItems, not allItems
    # This ensures backspace/text changes filter from full list
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->originalItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 142
    instance-of v3, v2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    if-eqz v3, :cond_69

    .line 143
    check-cast v2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-virtual {v2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 147
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_56
    goto :goto_39

    .line 150
    :cond_57
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    .line 151
    new-instance v4, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    invoke-virtual {v2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_69
    goto :goto_1c

    .line 156
    :cond_6a
    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->allItems:Ljava/util/List;

    .line 157
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->rebuildDisplayList()V

    .line 158
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->j()V

    .line 159
    return-void

    .line 133
    :cond_73
    :goto_73
    # Restore allItems from originalItems when search is cleared
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->originalItems:Ljava/util/List;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->allItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->rebuildDisplayList()V

    .line 134
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->j()V

    .line 135
    return-void
.end method

.method public e()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g(I)I
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    # Bounds check: return VIEW_TYPE_WATCH_FACE (1) if position is invalid
    if-ltz p1, :bounds_error

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :valid_position

    :bounds_error
    const/4 v0, 0x1

    return v0

    :valid_position
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i(I)I
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    # Bounds check: return VIEW_TYPE_WATCH_FACE (1) if position is invalid
    if-ltz p1, :bounds_error_i

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :valid_position_i

    :bounds_error_i
    const/4 v2, 0x1

    return v2

    :valid_position_i
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    xor-int/lit8 v2, v1, 0x1

    # Debug logging
    const-string v3, "WatchFaceAdapter"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x3

    const-string v0, "folder=0 watch=1"

    aput-object v0, v4, p1

    const-string p1, "getItemViewType pos=%d item=%s type=%d (%s)"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method synthetic lambda$onBindViewHolder$0$com-ailife-ClockSkinCoco-WatchFaceAdapter(Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;Landroid/view/View;)V
    .registers 3

    .line 64
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->toggleCollapsed()V

    .line 65
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->rebuildDisplayList()V

    .line 66
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->j()V

    .line 67
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/io/File;Landroid/view/View;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->selectWatchFace(Ljava/io/File;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$2$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/io/File;Landroid/view/View;)Z
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showWatchFaceMenu(Ljava/io/File;)V

    .line 79
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$showWatchFaceMenu$3$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 117
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_20

    .line 118
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :goto_20

    .line 121
    :cond_14
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p2, "Failed to delete"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 123
    :cond_20
    :goto_20
    return-void
.end method

.method synthetic lambda$showWatchFaceMenu$4$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .registers 6

    if-nez p4, :cond_15

    # Pin/Unpin
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->togglePin(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->refreshList()V

    goto :goto_57

    :cond_15
    const/4 p3, 0x1

    if-ne p4, p3, :cond_1c

    # Move to folder
    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showMoveFolderDialog(Ljava/io/File;)V

    goto :goto_57

    :cond_1c
    const/4 p3, 0x2

    if-ne p4, p3, :cond_check_rename

    .line 112
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    const-string p4, "Delete Watch Face"

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delete "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "?"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/io/File;)V

    .line 115
    const-string p2, "Delete"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 124
    const-string p2, "Cancel"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_57

    :cond_check_rename
    const/4 p3, 0x3

    if-ne p4, p3, :cond_57

    # Rename
    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->showRenameDialog(Ljava/io/File;)V

    .line 127
    :cond_57
    :goto_57
    return-void
.end method

.method synthetic lambda$showRenameDialog$12$com-ailife-ClockSkinCoco-WatchFaceAdapter(Landroid/widget/EditText;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .registers 7

    # Get new name from EditText
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    # Check if empty
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_validate

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const-string p3, "Name cannot be empty"

    invoke-static {p2, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_validate
    # Get current name without extension
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, ".watch"

    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_no_ext

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x6

    invoke-virtual {p3, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_no_ext
    # Check if same name
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_rename

    return-void

    :cond_rename
    # Perform rename
    invoke-direct {p0, p2, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->renameWatchFace(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$C;I)V
    .registers 11

    .line 53
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->displayItems:Ljava/util/List;

    # Bounds check: return early if position is invalid
    if-ltz p2, :bounds_error_m

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :valid_position_m

    :bounds_error_m
    return-void

    :valid_position_m
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 55
    instance-of v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;

    if-eqz v0, :cond_43

    instance-of v0, p2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    if-nez v0, :cond_holder_ok_1

    return-void

    :cond_holder_ok_1

    # Set full span for folders in StaggeredGridLayoutManager
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$C;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-eqz v1, :skip_fullspan_folder

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z

    :skip_fullspan_folder

    .line 56
    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;

    .line 57
    check-cast p2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    .line 59
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->folderName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->folderCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->expandIcon:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "\u25b6"

    goto :goto_35

    :cond_33
    const-string v1, "\u25bc"

    :goto_35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;->b:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Add long-press listener for folder menu
    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_7e

    .line 68
    :cond_43
    instance-of v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;

    if-eqz v0, :cond_7e

    instance-of v0, p2, Ljava/io/File;

    if-nez v0, :cond_holder_ok_2

    return-void

    :cond_holder_ok_2

    # Set non-full span for watch faces in StaggeredGridLayoutManager
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$C;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-eqz v1, :skip_fullspan_watch

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z

    :skip_fullspan_watch

    .line 69
    check-cast p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;

    .line 70
    check-cast p2, Ljava/io/File;

    .line 72
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->watchFaceName:Landroid/widget/TextView;

    # Check if this is the demo face (empty path)
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :not_demo_name

    const-string v1, "Demo"

    goto :set_name

    :not_demo_name
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :set_name
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    # Build indicator string with emojis
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # Check if pinned
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_not_pinned

    const-string v1, "\ud83d\udccc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_not_pinned

    .line 74
    # Check if currently selected
    # Get stored watch_path (relative path)
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "watch_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # Calculate relative path for current file using high registers (v5-v8)
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "ClockSkin"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    # Build base path with "/"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # Check if file path starts with base path and get relative path
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_use_fullpath_check

    # Get relative path by removing base path
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :cond_got_path_to_check

    :cond_use_fullpath_check
    # Use full path as fallback
    move-object v2, v6

    :cond_got_path_to_check

    # Compare relative path with stored watch_path
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_not_selected

    const-string v1, "\u2705"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_not_selected

    # Set text and visibility
    iget-object v1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->pinIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_hide_indicator

    const/4 v0, 0x0

    goto :goto_set_visibility

    :cond_hide_indicator
    const/16 v0, 0x8

    :goto_set_visibility
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->watchFacePreview:Landroid/widget/ImageView;

    # Load preview image from .watch file
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/ZipHelper;->extractPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_no_preview

    # Set the extracted preview bitmap
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :cond_preview_done

    :cond_no_preview
    # Fallback to default icon if preview not found
    const v1, 0x1080041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_preview_done

    .line 76
    iget-object v0, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->b:Landroid/view/View;

    new-instance v1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;->b:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_7f

    .line 68
    :cond_7e
    :goto_7e
    nop

    .line 82
    :goto_7f
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$C;
    .registers 5

    .line 40
    const/4 v0, 0x0

    if-nez p2, :cond_18

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 42
    const v1, 0x7f0d0084

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$FolderHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 45
    :cond_18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 46
    const v1, 0x7f0d0085

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;

    invoke-direct {p2, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$WatchFaceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->allItems:Ljava/util/List;

    # Also update originalItems with a copy for filtering
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->originalItems:Ljava/util/List;

    .line 163
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->rebuildDisplayList()V

    .line 164
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->j()V

    .line 165
    return-void
.end method
