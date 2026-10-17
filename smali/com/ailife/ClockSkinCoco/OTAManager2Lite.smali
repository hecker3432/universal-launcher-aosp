.class public Lcom/ailife/ClockSkinCoco/OTAManager2Lite;
.super Ljava/lang/Object;
.source "OTAManager2Lite.java"


# static fields
.field private static final APK_FILE_PATTERN:Ljava/lang/String; = ".*\\.apk$"

.field private static final DEBUG:Z = true

.field private static final GITLAB_API_BASE:Ljava/lang/String; = "https://gitlab.com/api/v4"

.field private static final GITLAB_OWNER:Ljava/lang/String; = "ailife8881"

.field private static final GITLAB_REPO:Ljava/lang/String; = "clock-skin-coco-hack"

.field private static final GITLAB_TOKEN:Ljava/lang/String;

.field private static final PREFS_NAME:Ljava/lang/String; = "OTAManagerPrefs"

.field private static final PREF_UPDATE_ENABLED:Ljava/lang/String; = "update_check_enabled"

.field private static final TAG:Ljava/lang/String; = "OTAManager2Lite"

.field private static final WIFI_ONLY:Z = true


# instance fields
.field private changelog:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private downloadUrl:Ljava/lang/String;

.field private latestVersion:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->GITLAB_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->mainHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->GITLAB_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->parseReleaseInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->openInBrowser()V

    return-void
.end method

.method static synthetic access$600(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    return-object p0
.end method

.method private cleanMarkdown(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 250
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4c

    .line 254
    :cond_9
    const-string v0, "\\[([^\\]]+)\\]\\([^)]+\\)"

    const-string v1, "$1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    const-string v0, "\\*\\*([^*]+)\\*\\*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    const-string v0, "__([^_]+)__"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    const-string v0, "\\*([^*]+)\\*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    const-string v0, "_([^_]+)_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    const-string v0, "`([^`]+)`"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    const-string v0, "^#{1,6}\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    const-string v0, "\\n#{1,6}\\s+"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    const-string v0, "\\n{3,}"

    const-string v1, "\n\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :cond_4c
    :goto_4c
    return-object p1
.end method

.method private compareAndPromptUpdate()V
    .registers 4

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 226
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 232
    if-gez v1, :cond_57

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showUpdateDialog()V

    goto :goto_6e

    .line 235
    :cond_57
    if-lez v1, :cond_64

    .line 236
    const-string v0, "Running newer version than latest release"

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 237
    const-string v0, "You are running prerelease"

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    goto :goto_6e

    .line 239
    :cond_64
    const-string v0, "Already running the latest version"

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 240
    const-string v0, "You are up to date"

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 246
    :goto_6e
    goto :goto_8f

    .line 243
    :catch_6f
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get package info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V

    .line 245
    const-string v0, "Failed to get update info"

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    .line 247
    :goto_8f
    return-void
.end method

.method private compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 268
    const-string v0, "^[^0-9]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 271
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 274
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 276
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_41

    .line 277
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->parseVersionPart(Ljava/lang/String;)I

    move-result v3

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 278
    :goto_2b
    array-length v4, p2

    if-ge v2, v4, :cond_35

    aget-object v4, p2, v2

    invoke-direct {p0, v4}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->parseVersionPart(Ljava/lang/String;)I

    move-result v4

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    .line 280
    :goto_36
    if-ge v3, v4, :cond_3a

    .line 281
    const/4 p1, -0x1

    return p1

    .line 282
    :cond_3a
    if-le v3, v4, :cond_3e

    .line 283
    const/4 p1, 0x1

    return p1

    .line 276
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 287
    :cond_41
    return v1
.end method

.method private logDebug(Ljava/lang/String;)V
    .registers 3

    .line 363
    const-string v0, "OTAManager2Lite"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 3

    .line 368
    const-string v0, "OTAManager2Lite"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method private openInBrowser()V
    .registers 4

    .line 341
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->downloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 342
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 344
    const-string v0, "Downloading in browser..."

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened in browser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 349
    goto :goto_55

    .line 346
    :catch_35
    move-exception v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V

    .line 348
    const-string v0, "Failed to download"

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    .line 350
    :goto_55
    return-void
.end method

.method private parseReleaseInfo(Ljava/lang/String;)V
    .registers 8

    .line 174
    const-string v0, ".*\\.apk$"

    const-string v1, ""

    const-string v2, "No changelog available"

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    const-string p1, "tag_name"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    const-string v4, "v"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    const-string v4, "V"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 178
    :cond_27
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    .line 181
    :cond_30
    const-string p1, "description"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 183
    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;

    goto :goto_4b

    .line 185
    :cond_43
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->cleanMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->changelog:Ljava/lang/String;

    .line 189
    :goto_4b
    const-string p1, "assets"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 190
    if-eqz p1, :cond_85

    .line 191
    const-string v2, "links"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 192
    if-eqz p1, :cond_85

    .line 193
    const/4 v2, 0x0

    :goto_5c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_85

    .line 194
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 195
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v5, "url"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_82

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    goto :goto_82

    .line 193
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 199
    :cond_82
    :goto_82
    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->downloadUrl:Ljava/lang/String;

    .line 200
    nop

    .line 206
    :cond_85
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->downloadUrl:Ljava/lang/String;

    if-nez p1, :cond_94

    .line 207
    const-string p1, "No APK file found in release assets"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V

    .line 208
    const-string p1, "Failed to get download link"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    .line 209
    return-void

    .line 212
    :cond_94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latest version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->latestVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->compareAndPromptUpdate()V
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_c7} :catch_c8

    .line 220
    goto :goto_e8

    .line 217
    :catch_c8
    move-exception p1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON parsing error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V

    .line 219
    const-string p1, "Failed to get update info"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V

    .line 221
    :goto_e8
    return-void
.end method

.method private parseVersionPart(Ljava/lang/String;)I
    .registers 8

    .line 292
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-char v4, p1, v3

    .line 294
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 295
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 300
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2a} :catch_2b

    :cond_2a
    return v0

    .line 301
    :catch_2b
    move-exception p1

    .line 302
    return v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$3;

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$3;-><init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method private showUpdateDialog()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$2;-><init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method


# virtual methods
.method public checkUpdate(Z)V
    .registers 4

    .line 104
    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->isUpdateCheckEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 105
    const-string p1, "Update check disabled by user"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 106
    return-void

    .line 110
    :cond_e
    if-nez p1, :cond_2d

    .line 111
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 112
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 113
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    .line 114
    :cond_27
    const-string p1, "Not on WiFi, skipping update check"

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 115
    return-void

    .line 120
    :cond_2d
    nop

    .line 121
    const-string p1, "/"

    const-string v0, "%2F"

    const-string v1, "ailife8881/clock-skin-coco-hack"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://gitlab.com/api/v4/projects/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/releases/permalink/latest"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking for updates at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;-><init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method public isUpdateCheckEnabled()Z
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    const-string v1, "OTAManagerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    const-string v1, "update_check_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    return v0
.end method

.method public setUpdateCheckEnabled(Z)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->context:Landroid/content/Context;

    const-string v1, "OTAManagerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    const-string v1, "update_check_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update check "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_26

    const-string p1, "enabled"

    goto :goto_28

    :cond_26
    const-string p1, "disabled"

    :goto_28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logDebug(Ljava/lang/String;)V

    .line 96
    return-void
.end method
