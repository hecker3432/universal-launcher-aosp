.class public Lcom/ricktop/ClockSkinCoco/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field mainLocationName:Landroid/widget/EditText;

.field mainLocationX:Landroid/widget/EditText;

.field mainLocationY:Landroid/widget/EditText;

.field autoLocation:Landroidx/appcompat/widget/SwitchCompat;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/D;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/D;->g()V

    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/D;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/D;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/D;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/D;->b:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/D;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/D;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/D;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/D;->i()V

    return-void
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Skin_Weather_Location_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    const-string v4, "London,0,0"

    aput-object v4, v1, v3

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    aput-object v1, v4, v3

    :goto_0
    sget-object v1, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/ricktop/ClockSkinCoco/D;->j:Ljava/lang/String;

    const-string v3, "Skin_Weather_Location_2"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "London`-1"

    aput-object v3, v1, v4

    goto :goto_1

    :cond_1
    aput-object v3, v1, v4

    :goto_1
    const-string v3, "Skin_Weather_Location_3"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    const-string v3, "New York`-6"

    aput-object v3, v1, v4

    goto :goto_2

    :cond_2
    aput-object v3, v1, v4

    :goto_2
    const-string v3, "Skin_Weather_Location_4"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    if-nez v3, :cond_3

    const-string v3, "Moscow`6"

    aput-object v3, v1, v2

    goto :goto_3

    :cond_3
    aput-object v3, v1, v2

    :goto_3
    return-void
.end method

.method private i()V
    .locals 8

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    # save cordinate

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationX:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationY:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3



    # end

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "`"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/D;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->h:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->e:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/D;->i:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skin_Weather_Location_1"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skin_Weather_Location_2"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Skin_Weather_Location_3"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skin_Weather_Location_4"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    # switch

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/D;->autoLocation:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1



    const-string v2, "weatherAutoLocation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V


    # end

    return-void
.end method


# virtual methods
.method e()V
    .locals 12

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/D;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0d003d

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v2, 0x7f0a014f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationName:Landroid/widget/EditText;

    # x y edittext
    
    const v2, 0x7f0a0253

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->autoLocation:Landroidx/appcompat/widget/SwitchCompat;

    

    new-instance v10, Lcom/ricktop/ClockSkinCoco/D$b;

    invoke-direct {v10, p0, v0}, Lcom/ricktop/ClockSkinCoco/D$b;-><init>(Lcom/ricktop/ClockSkinCoco/D;Landroid/app/Dialog;)V

    invoke-virtual {v2, v10}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    
    
    const v2, 0x7f0a0254

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationX:Landroid/widget/EditText;

    const v2, 0x7f0a0255

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationY:Landroid/widget/EditText;

    # end

    new-instance v2, Lcom/ricktop/ClockSkinCoco/D$a;

    invoke-direct {v2, p0}, Lcom/ricktop/ClockSkinCoco/D$a;-><init>(Lcom/ricktop/ClockSkinCoco/D;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.ricktop.ClockSkinCoco.LOCATION.FOUND"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/D;->b:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v11, 0x21
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v6, v11, :old_api_registerReceiver_compat_17

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_17

    :old_api_registerReceiver_compat_17
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_17

    sget-object v4, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    aget-object v5, v4, v3

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationName:Landroid/widget/EditText;

    aget-object v10, v5, v3

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # x y setText

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationX:Landroid/widget/EditText;

    aget-object v10, v5, v3

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationY:Landroid/widget/EditText;

    aget-object v10, v5, v3

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V





    const/4 v3, 0x0

    #end

    aget-object v2, v4, v1

    const-string v5, "`"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0a013d

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->d:Landroid/widget/EditText;

    const v6, 0x7f0a013f

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->g:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->d:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    array-length v6, v2

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->g:Landroid/widget/EditText;

    aget-object v8, v2, v3

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    array-length v6, v2

    const-string v8, ""

    if-le v6, v1, :cond_2

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->d:Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0a0141

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->e:Landroid/widget/EditText;

    const v6, 0x7f0a0143

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->h:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->e:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    array-length v6, v2

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->h:Landroid/widget/EditText;

    aget-object v9, v2, v3

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    array-length v6, v2

    if-le v6, v1, :cond_4

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/D;->e:Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/D;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v2, 0x3

    aget-object v2, v4, v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0a0145

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->f:Landroid/widget/EditText;

    const v4, 0x7f0a0147

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->i:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->f:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    array-length v4, v2

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/D;->i:Landroid/widget/EditText;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    array-length v3, v2

    if-le v3, v1, :cond_6

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/D;->f:Landroid/widget/EditText;

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/D;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0090

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/ricktop/ClockSkinCoco/D$c;

    invoke-direct {v3, p0, v0}, Lcom/ricktop/ClockSkinCoco/D$c;-><init>(Lcom/ricktop/ClockSkinCoco/D;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/ricktop/ClockSkinCoco/D$d;

    invoke-direct {v2, p0, v0}, Lcom/ricktop/ClockSkinCoco/D$d;-><init>(Lcom/ricktop/ClockSkinCoco/D;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V



    # set auto location
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "weatherAutoLocation"

    const/4 v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/D;->autoLocation:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v5, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    # end


    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ricktop/ClockSkinCoco/D;->k:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Skin_Weather_Location_1"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
