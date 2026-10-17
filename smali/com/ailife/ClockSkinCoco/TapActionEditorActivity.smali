.class public Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;
.super Landroid/app/Activity;
.source "TapActionEditorActivity.java"


# static fields
.field public static final TAP_ACTIONS:[Ljava/lang/String;

.field private static final TAP_ACTION_NAMES:[Ljava/lang/String;


# instance fields
.field private actionSpinner:Landroid/widget/Spinner;

.field private activityEditText:Landroid/widget/EditText;

.field private appListAdapter:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;

.field private appListView:Landroid/widget/ListView;

.field private installedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private saveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1a

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "tap_launcher"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "widget_weather"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "widget_health"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "widget_calendar"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "w_agenda"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "w_fit"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "w_heart_rate"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "w_compass"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "w_keep"

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "m_email"

    const/16 v10, 0x9

    aput-object v2, v1, v10

    const-string v2, "m_calendar"

    const/16 v10, 0xa

    aput-object v2, v1, v10

    const-string v2, "voice_search"

    const/16 v10, 0xb

    aput-object v2, v1, v10

    const-string v2, "w_contacts"

    const/16 v10, 0xc

    aput-object v2, v1, v10

    const-string v2, "w_sports"

    const/16 v10, 0xd

    aput-object v2, v1, v10

    const-string v2, "w_gallery"

    const/16 v10, 0xe

    aput-object v2, v1, v10

    const-string v2, "w_messaging"

    const/16 v10, 0xf

    aput-object v2, v1, v10

    const-string v2, "w_camera"

    const/16 v10, 0x10

    aput-object v2, v1, v10

    const-string v2, "w_dialer"

    const/16 v10, 0x11

    aput-object v2, v1, v10

    const-string v2, "w_music"

    const/16 v10, 0x12

    aput-object v2, v1, v10

    const-string v2, "w_clock"

    const/16 v10, 0x13

    aput-object v2, v1, v10

    const-string v2, "w_calculator"

    const/16 v10, 0x14

    aput-object v2, v1, v10

    const-string v2, "w_payment"

    const/16 v10, 0x15

    aput-object v2, v1, v10

    const-string v2, "w_map"

    const/16 v10, 0x16

    aput-object v2, v1, v10

    const-string v2, "browser"

    const/16 v10, 0x17

    aput-object v2, v1, v10

    const-string v2, "flashlight"

    const/16 v10, 0x18

    aput-object v2, v1, v10

    const-string v2, "socialmedia"

    const/16 v10, 0x19

    aput-object v2, v1, v10

    sput-object v1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTIONS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Tap Launcher"

    aput-object v1, v0, v3

    const-string v1, "Weather Widget"

    aput-object v1, v0, v4

    const-string v1, "Health Widget"

    aput-object v1, v0, v5

    const-string v1, "Calendar Widget"

    aput-object v1, v0, v6

    const-string v1, "Agenda"

    aput-object v1, v0, v7

    const-string v1, "Fit"

    aput-object v1, v0, v8

    const-string v1, "Heart Rate"

    aput-object v1, v0, v9

    const-string v1, "Compass"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Keep"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Email"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Calendar"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Voice Search"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Contacts"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Sports"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Gallery"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Messaging"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Camera"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "Dialer"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Music"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Clock"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Calculator"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Payment"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Map"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Browser"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Flashlight"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Social Media"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTION_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->loadActionConfig(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->saveActionConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->installedApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->activityEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method private loadActionConfig(I)V
    .locals 3

    if-ltz p1, :cond_1

    sget-object v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTIONS:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tap_action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->activityEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadInstalledApps()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->installedApps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->installedApps:Ljava/util/List;

    new-instance v8, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->installedApps:Ljava/util/List;

    new-instance v1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$4;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$4;-><init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private saveActionConfig()V
    .locals 4

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->actionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTIONS:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tap_action_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->activityEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Saved!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d007e    # R.layout.zzzza_activity_tap_action_editor

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->setContentView(I)V

    invoke-static {p0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->prefs:Landroid/content/SharedPreferences;

    const p1, 0x7f0a0285    # R.id.zzzza_action_spinner

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->actionSpinner:Landroid/widget/Spinner;

    const p1, 0x7f0a0286    # R.id.zzzza_activity_edittext

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->activityEditText:Landroid/widget/EditText;

    const p1, 0x7f0a028b    # R.id.zzzza_save_button

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->saveButton:Landroid/widget/Button;

    const p1, 0x7f0a0288    # R.id.zzzza_app_listview

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->appListView:Landroid/widget/ListView;

    new-instance p1, Landroid/widget/ArrayAdapter;

    sget-object v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTION_NAMES:[Ljava/lang/String;

    const v1, 0x1090008    # android.R.layout.simple_spinner_item

    invoke-direct {p1, p0, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009    # android.R.layout.simple_spinner_dropdown_item

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->actionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->actionSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->saveButton:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$2;-><init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->loadInstalledApps()V

    new-instance p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;

    invoke-direct {p1, p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;-><init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->appListAdapter:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppListAdapter;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->appListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->appListView:Landroid/widget/ListView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$3;-><init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->TAP_ACTIONS:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->loadActionConfig(I)V

    :cond_0
    return-void
.end method
