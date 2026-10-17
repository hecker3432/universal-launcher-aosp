.class public Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;
.super Landroid/app/Activity;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;,
        Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

.field private allApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private btnSave:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/Button;

.field private btnSelectNone:Landroid/widget/Button;

.field private btnSelectSystem:Landroid/widget/Button;

.field private btnToggleMode:Landroid/widget/Button;

.field private currentMode:Ljava/lang/String;

.field private filteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hideNonLaunchableApps:Z

.field private listView:Landroid/widget/ListView;

.field private manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

.field private searchBox:Landroid/widget/EditText;

.field private switchHideNonLaunchable:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->toggleMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)Ljava/util/List;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)Landroid/widget/EditText;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filterApps(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->selectAll()V

    return-void
.end method

.method static synthetic access$500(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->selectNone()V

    return-void
.end method

.method static synthetic access$600(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->selectSystemApps()V

    return-void
.end method

.method static synthetic access$700(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->saveAndExit()V

    return-void
.end method

.method private filterApps(Ljava/lang/String;)V
    .registers 6

    .line 235
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "whitelist"

    if-eqz v0, :cond_37

    .line 237
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 239
    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z

    if-eqz v2, :cond_30

    iget-boolean v2, v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->hasLaunchIntent:Z

    if-nez v2, :cond_30

    .line 243
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 244
    goto :goto_13

    .line 246
    :cond_30
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    goto :goto_13

    :cond_36
    goto :goto_7c

    .line 249
    :cond_37
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 252
    iget-boolean v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z

    if-eqz v3, :cond_5e

    iget-boolean v3, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->hasLaunchIntent:Z

    if-nez v3, :cond_5e

    .line 256
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 257
    goto :goto_41

    .line 259
    :cond_5e
    iget-object v3, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->packageName:Ljava/lang/String;

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 261
    :cond_76
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_7b
    goto :goto_41

    .line 265
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method

.method private loadApps()V
    .registers 8

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    .line 196
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 197
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {v2}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getHiddenPackages()Ljava/util/Set;

    move-result-object v2

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 202
    new-instance v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    invoke-direct {v5, v4}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$1;)V

    .line 203
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->packageName:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->appName:Ljava/lang/String;

    .line 205
    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 206
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v6, 0x0

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    iput-boolean v3, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSystemApp:Z

    .line 209
    iget-object v3, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    :goto_57
    iput-boolean v4, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->hasLaunchIntent:Z

    .line 213
    iget-object v3, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v5, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 215
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    goto :goto_1b

    .line 219
    :cond_67
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    new-instance v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$8;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$8;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    .line 227
    new-instance v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    invoke-direct {v0, p0, v4}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$1;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    .line 228
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filterApps(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private saveAndExit()V
    .registers 6

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->allApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 297
    iget-boolean v3, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    if-eqz v3, :cond_33

    .line 301
    iget-boolean v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z

    if-eqz v3, :cond_2e

    iget-boolean v3, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->hasLaunchIntent:Z

    if-nez v3, :cond_2e

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    .line 302
    const-string v4, "blacklist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 303
    goto :goto_b

    .line 305
    :cond_2e
    iget-object v2, v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_33
    goto :goto_b

    .line 311
    :cond_34
    const-string v1, "whitelist"

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 312
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_45
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setMode(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {v1, v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setHiddenPackages(Ljava/util/Set;)V

    .line 317
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->saveConfiguration()V

    .line 320
    const-string v0, "Settings saved"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->finish()V

    .line 322
    return-void
.end method

.method private selectAll()V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 270
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 271
    goto :goto_6

    .line 272
    :cond_16
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->notifyDataSetChanged()V

    .line 273
    const-string v0, "All apps selected"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    return-void
.end method

.method private selectNone()V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 278
    iput-boolean v2, v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 279
    goto :goto_6

    .line 280
    :cond_16
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->notifyDataSetChanged()V

    .line 281
    const-string v0, "All apps deselected"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 282
    return-void
.end method

.method private selectSystemApps()V
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    .line 286
    iget-boolean v2, v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSystemApp:Z

    if-eqz v2, :cond_19

    .line 287
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 289
    :cond_19
    goto :goto_6

    .line 290
    :cond_1a
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->adapter:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->notifyDataSetChanged()V

    .line 291
    const-string v0, "System apps selected"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 292
    return-void
.end method

.method private setupUI()V
    .registers 6

    .line 68
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnToggleMode:Landroid/widget/Button;

    .line 74
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->updateModeButton()V

    .line 75
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnToggleMode:Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$1;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnToggleMode:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->switchHideNonLaunchable:Landroid/widget/Switch;

    .line 85
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->switchHideNonLaunchable:Landroid/widget/Switch;

    const-string v2, "Hide apps without launcher activity"

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->switchHideNonLaunchable:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 87
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->switchHideNonLaunchable:Landroid/widget/Switch;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 88
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->switchHideNonLaunchable:Landroid/widget/Switch;

    new-instance v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->switchHideNonLaunchable:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectAll:Landroid/widget/Button;

    .line 102
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectAll:Landroid/widget/Button;

    const-string v4, "Select All"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectAll:Landroid/widget/Button;

    new-instance v4, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$3;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$3;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectNone:Landroid/widget/Button;

    .line 112
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectNone:Landroid/widget/Button;

    const-string v4, "Select None"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectNone:Landroid/widget/Button;

    new-instance v4, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$4;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$4;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectNone:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectSystem:Landroid/widget/Button;

    .line 122
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectSystem:Landroid/widget/Button;

    const-string v4, "System Apps"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectSystem:Landroid/widget/Button;

    new-instance v4, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$5;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$5;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSelectSystem:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;

    .line 135
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;

    const-string v2, "Search apps..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$6;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$6;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->listView:Landroid/widget/ListView;

    .line 152
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 157
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSave:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSave:Landroid/widget/Button;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSave:Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$7;

    invoke-direct {v2, p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$7;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->setContentView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method private toggleMode()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    const-string v1, "blacklist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    const-string v0, "whitelist"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    goto :goto_11

    .line 186
    :cond_f
    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    .line 188
    :goto_11
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->updateModeButton()V

    .line 190
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filterApps(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    return-void
.end method

.method private updateModeButton()V
    .registers 3

    .line 175
    const-string v0, "blacklist"

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 176
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnToggleMode:Landroid/widget/Button;

    const-string v1, "Mode: Black List (Hide Selected)"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 178
    :cond_12
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->btnToggleMode:Landroid/widget/Button;

    const-string v1, "Mode: White List (Show Only Selected)"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const p1, 0x1030224

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->setTheme(I)V

    .line 59
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    .line 60
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->currentMode:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->setupUI()V

    .line 63
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->loadApps()V

    .line 64
    return-void
.end method
