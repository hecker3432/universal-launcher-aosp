.class public Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;
.super Landroid/app/Activity;
.source "WatchFaceSelectionActivity.java"


# instance fields
.field private adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private btnCloseSearch:Landroid/widget/Button;

.field private btnNewFolder:Landroid/widget/Button;

.field private btnRandom:Landroid/widget/Button;

.field private btnSearch:Landroid/widget/Button;

.field private btnStore:Landroid/widget/Button;

.field private btnTransfer:Landroid/widget/Button;

.field private buttonBar:Landroid/widget/LinearLayout;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchBar:Landroid/widget/LinearLayout;

.field private searchInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->allItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->filterItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->createFolder(Ljava/lang/String;)V

    return-void
.end method

.method private addPinnedFolder(Ljava/util/List;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->checkPin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_36
    goto :goto_1d

    .line 162
    :cond_37
    goto :goto_d

    .line 163
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_48

    .line 164
    new-instance p2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    const-string v1, "Pinned"

    invoke-direct {p2, v1, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_48
    return-void
.end method

.method private filterItems(Ljava/lang/String;)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    invoke-virtual {v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->filter(Ljava/lang/String;)V

    .line 99
    :cond_9
    return-void
.end method

.method private loadWatchFaces()V
    .registers 9

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "ClockSkin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_f0

    .line 112
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-direct {p0, v1, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->scanWatchFilesRecursive(Ljava/io/File;Ljava/util/List;)V

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_48

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    :cond_48
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_56
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_30

    .line 126
    :cond_60
    # Add empty folders to the map
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->getAllFolders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_empty_loop
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_empty_done

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    # Check if folder already in map
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_skip_empty

    # Add empty folder to map
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_skip_empty
    goto :goto_empty_loop

    :cond_empty_done

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->addPinnedFolder(Ljava/util/List;Ljava/util/Map;)V

    .line 129
    # Remove Demo from map so it's not added with other folders
    const-string v2, "Demo"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_7c
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 137
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b0

    .line 138
    new-instance v7, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v7, v6, v4}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_b0
    goto :goto_84

    .line 143
    :cond_b1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_c5
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_d4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e4

    .line 147
    new-instance v1, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    const-string v3, "Other"

    invoke-direct {v1, v3, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_e4
    # Add Demo folder at the bottom with special demo face
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # Create a special demo file marker with empty path
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # Create Demo folder with the demo face
    new-instance v2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    const-string v3, "Demo"

    invoke-direct {v2, v3, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->allItems:Ljava/util/List;

    .line 151
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    invoke-virtual {v1, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->setItems(Ljava/util/List;)V

    .line 152
    :cond_ef
    return-void

    .line 106
    :cond_f0
    :goto_f0
    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->allItems:Ljava/util/List;

    .line 107
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    invoke-virtual {v1, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->setItems(Ljava/util/List;)V

    .line 108
    :cond_fb
    return-void
.end method

.method private scanWatchFilesRecursive(Ljava/io/File;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 170
    if-nez p1, :cond_7

    return-void

    .line 171
    :cond_7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_29

    aget-object v2, p1, v1

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 173
    invoke-direct {p0, v2, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->scanWatchFilesRecursive(Ljava/io/File;Ljava/util/List;)V

    goto :goto_26

    .line 174
    :cond_17
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    # Check for .watch extension
    const-string v4, ".watch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_check_zip

    .line 175
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_check_zip
    # Check for .zip extension
    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    # Add .zip file to list
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 178
    :cond_29
    return-void
.end method

.method private toggleSearchBar()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 84
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->buttonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->filterItems(Ljava/lang/String;)V

    goto :goto_2f

    .line 89
    :cond_20
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->buttonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 93
    :goto_2f
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-ailife-ClockSkinCoco-WatchFaceSelectionActivity(Landroid/view/View;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->toggleSearchBar()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-ailife-ClockSkinCoco-WatchFaceSelectionActivity(Landroid/view/View;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->toggleSearchBar()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-ailife-ClockSkinCoco-WatchFaceSelectionActivity(Landroid/view/View;)V
    .registers 4

    .line 67
    # Open watch face store in browser
    sget-object p1, Landroid/content/Intent;->ACTION_VIEW:Ljava/lang/String;

    const-string v0, "https://chujalt.com/jb.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-ailife-ClockSkinCoco-WatchFaceSelectionActivity(Landroid/view/View;)V
    .registers 3

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-ailife-ClockSkinCoco-WatchFaceSelectionActivity(Landroid/view/View;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->showCreateFolderDialog()V

    return-void
.end method

.method synthetic lambda$onCreate$5$com-ailife-ClockSkinCoco-WatchFaceSelectionActivity(Landroid/view/View;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->selectRandomWatchFace()V

    return-void
.end method

.method private showCreateFolderDialog()V
    .registers 7

    .line 181
    # Inflate dialog layout
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    # Get EditText from dialog
    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    # Create AlertDialog
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Create New Folder"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    # Add positive button
    new-instance v2, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$3;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;Landroid/widget/EditText;)V

    const-string v3, "Create"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    # Add negative button
    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    # Show dialog
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    # Show keyboard
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_done

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_done
    return-void
.end method

.method private createFolder(Ljava/lang/String;)V
    .registers 5

    .line 205
    # Validate folder name
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->validateFolderName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_validated

    # Show error toast
    const-string p1, "Invalid folder name. Special characters and reserved names are not allowed."

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_validated
    # Create folder
    invoke-static {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderUtil;->createFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_failed

    # Success - show toast
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    # Refresh list
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->loadWatchFaces()V

    goto :cond_done

    :cond_failed
    # Failed - show error toast
    const-string p1, "Failed to create folder. It may already exist."

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_done
    return-void
.end method

.method private selectRandomWatchFace()V
    .registers 8

    .line 230
    # Create a list to collect all non-demo watch faces
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    # Iterate through all folder items
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->allItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_folder_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_folders_done

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    .line 232
    # Get watch files from folder
    invoke-virtual {v2}, Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;->getWatchFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_file_loop
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_files_done

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 233
    # Skip demo watch face (empty path)
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_skip_demo

    .line 234
    # Add to list
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_skip_demo
    goto :goto_file_loop

    :cond_files_done
    goto :goto_folder_loop

    :cond_folders_done
    .line 240
    # Check if we have any watch faces
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_has_faces

    .line 241
    # Show toast - no watch faces found
    const-string v1, "No watch faces available"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_has_faces
    .line 246
    # Select random watch face
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 250
    # Show toast
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 252
    # Get ClockSkin base directory
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "ClockSkin"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    # Get absolute path of selected file
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 255
    # Get ClockSkin base path
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 256
    # Calculate relative path
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    # Save selected watch face path to preferences (relative path)
    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "watch_path"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    # Send broadcast to refresh (with relative path)
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.watchengine.changeface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "faceName"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    # Close the activity
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->finish()V

    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const p1, 0x7f0d0083

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->setContentView(I)V

    .line 39
    const p1, 0x7f0a029b

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->buttonBar:Landroid/widget/LinearLayout;

    .line 40
    const p1, 0x7f0a02a0

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchBar:Landroid/widget/LinearLayout;

    .line 41
    const p1, 0x7f0a0299

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnStore:Landroid/widget/Button;

    .line 42
    const p1, 0x7f0a029a

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnTransfer:Landroid/widget/Button;

    .line 43
    const p1, 0x7f0a0298

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnSearch:Landroid/widget/Button;

    .line 44
    const p1, 0x7f0a0297

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnCloseSearch:Landroid/widget/Button;

    const p1, 0x7f0a02a5

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnNewFolder:Landroid/widget/Button;

    const p1, 0x7f0a02aa

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnRandom:Landroid/widget/Button;

    .line 45
    const p1, 0x7f0a02a1

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchInput:Landroid/widget/EditText;

    .line 46
    const p1, 0x7f0a02a4

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49

        new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;



        const/4 v0, 0x0



        const/4 v1, 0x0



        invoke-direct {p1, p0, v0, v1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V



    # Set orientation to vertical (1)

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H2(I)V



    # Set span count to 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J2(I)V

    .line 58
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 60
    new-instance p1, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->allItems:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    .line 61
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->adapter:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 64
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnSearch:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnCloseSearch:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnStore:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnTransfer:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda3;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnNewFolder:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda4;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->btnRandom:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$$ExternalSyntheticLambda5;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->searchInput:Landroid/widget/EditText;

    new-instance v0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$2;-><init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->loadWatchFaces()V

    .line 80
    return-void
.end method

.method public refreshList()V
    .registers 1

    .line 181
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->loadWatchFaces()V

    .line 182
    return-void
.end method
