.class Lcom/ricktop/ClockSkinCoco/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

.field private c:I

.field private d:Landroid/content/BroadcastReceiver;

.field private heartEnabled:Z

.field private stepEnabled:Z

.field private darkEnabled:Z

.field private fullScreenMode:I


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/j;->d:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/j;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/j;->c:I

    return p0
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/j;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/j;->c:I

    return p1
.end method

.method static synthetic e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/j;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    return-object p0
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/j;->heartEnabled:Z

    return p0
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/j;->heartEnabled:Z

    return p1
.end method

.method static synthetic getStep(Lcom/ricktop/ClockSkinCoco/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/j;->stepEnabled:Z

    return p0
.end method

.method static synthetic putStep(Lcom/ricktop/ClockSkinCoco/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/j;->stepEnabled:Z

    return p1
.end method

.method static synthetic getDark(Lcom/ricktop/ClockSkinCoco/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/j;->darkEnabled:Z

    return p0
.end method

.method static synthetic putDark(Lcom/ricktop/ClockSkinCoco/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/j;->darkEnabled:Z

    return p1
.end method

.method static synthetic getFullScreen(Lcom/ricktop/ClockSkinCoco/j;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/j;->fullScreenMode:I

    return p0
.end method

.method static synthetic putFullScreen(Lcom/ricktop/ClockSkinCoco/j;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/j;->fullScreenMode:I

    return p1
.end method

.method static synthetic j(Lcom/ricktop/ClockSkinCoco/j;)I
    .locals 2

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/j;->fullScreenMode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/j;->fullScreenMode:I

    return v0
.end method


# virtual methods
.method k(ILjava/lang/String;IIZI)V
    .locals 10

    const/4 v0, 0x2

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v3, 0x7f0d0061

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V



    iput p1, p0, Lcom/ricktop/ClockSkinCoco/j;->c:I

    new-instance v4, Lcom/ricktop/ClockSkinCoco/j$a;

    invoke-direct {v4, p0, v1, p1}, Lcom/ricktop/ClockSkinCoco/j$a;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/app/Dialog;I)V

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/j;->d:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/j;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/j;->d:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v9, 0x21
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v8, v9, :old_api_registerReceiver_compat_29

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v6, v7, v4, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_29

    :old_api_registerReceiver_compat_29
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_29

    const v4, 0x7f0a01a0 # scale text

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v7, p0, Lcom/ricktop/ClockSkinCoco/j;->c:I

    mul-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v6, "Scale: "

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v8, v2

    const/4 v2, 0x1

    aput-object v7, v8, v2

    const-string v6, "%s%d%%"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "heartEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2


    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/j;->heartEnabled:Z


    const p3, 0x7f0a0102 # heart image view

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-boolean p5, p0, Lcom/ricktop/ClockSkinCoco/j;->heartEnabled:Z

    if-eqz p5, :cond_0

    const p5, 0x7f08012d

    goto :goto_0

    :cond_0
    const p5, 0x7f08012c

    :goto_0

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$d;

    invoke-direct {p5, p0, p3}, Lcom/ricktop/ClockSkinCoco/j$d;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #############

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "stepEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2


    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/j;->stepEnabled:Z


    const p3, 0x7f0a0274 # step image view

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-boolean p5, p0, Lcom/ricktop/ClockSkinCoco/j;->stepEnabled:Z

    if-eqz p5, :cond_1

    const p5, 0x7f080137

    goto :goto_1

    :cond_1
    const p5, 0x7f080136

    :goto_1

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$c;

    invoke-direct {p5, p0, p3}, Lcom/ricktop/ClockSkinCoco/j$c;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    ##############
    
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    # Read dim mode state from new preference
    const-string v2, "sp_dim_mode_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # Set darkEnabled to the dim mode state
    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/j;->darkEnabled:Z


    const p3, 0x7f0a025b #night image view

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-boolean p5, p0, Lcom/ricktop/ClockSkinCoco/j;->darkEnabled:Z

    if-eqz p5, :cond_2

    const p5, 0x7f080130

    goto :goto_2

    :cond_2
    const p5, 0x7f08012f

    :goto_2

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$b;

    invoke-direct {p5, p0, p3}, Lcom/ricktop/ClockSkinCoco/j$b;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    ##############

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "sp_clock_skin_fullscreen"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2


    iput v2, p0, Lcom/ricktop/ClockSkinCoco/j;->fullScreenMode:I


    const v8, 0x7f0a025a # full screen textview

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$k;

    invoke-direct {p5, p0, v1}, Lcom/ricktop/ClockSkinCoco/j$k;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/app/Dialog;)V

    invoke-virtual {v8, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Load fullScreenMode into v0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/j;->fullScreenMode:I

    const/4 v3, 0x0
    if-ne v0, v3, :check_1

    const-string v2, "fit vertical ↕️"
    goto :end

    :check_1
    const/4 v3, 0x1
    if-ne v0, v3, :check_2

    const-string v2, "stretch 💠"
    goto :end

    :check_2
    const/4 v3, 0x2
    if-ne v0, v3, :check_3

    const-string v2, "fit horizontal ↔️"
    goto :end

    :check_3
    const/4 v3, 0x3
    if-ne v0, v3, :check_4

    const-string v2, "fit vertical ↕️ (compatibility)"
    goto :end

    :check_4
    const/4 v3, 0x4
    if-ne v0, v3, :default

    const-string v2, "fit horizontal ↔️ (compatibility)"
    goto :end

    :default
    const-string v2, "fit vertical ↕️"

    :end

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V



    ####################
    const p3, 0x7f0a0257 # mode crop imageview

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$e;

    invoke-direct {p5, p0, p3, v8}, Lcom/ricktop/ClockSkinCoco/j$e;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    ######################
    const p3, 0x7f0a0258 # mode scale imageview

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$f;

    invoke-direct {p5, p0, p3, v8}, Lcom/ricktop/ClockSkinCoco/j$f;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    ######################
    const p3, 0x7f0a0259 # mode stretch imageview

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$h;

    invoke-direct {p5, p0, p3, v8}, Lcom/ricktop/ClockSkinCoco/j$h;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    ######################
    const p3, 0x7f0a0291 # zzzzc_modeCropCompat imageview

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$l;

    invoke-direct {p5, p0, p3, v8}, Lcom/ricktop/ClockSkinCoco/j$l;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    ######################
    const p3, 0x7f0a0292 # zzzzc_modeScaleCompat imageview

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance p5, Lcom/ricktop/ClockSkinCoco/j$m;

    invoke-direct {p5, p0, p3, v8}, Lcom/ricktop/ClockSkinCoco/j$m;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    ######################


    const p3, 0x7f0a019f

    invoke-virtual {v1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar;

    iget p5, p0, Lcom/ricktop/ClockSkinCoco/j;->c:I

    add-int/lit8 p5, p5, 0x32

    invoke-virtual {p3, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    
   

    new-instance v5, Lcom/ricktop/ClockSkinCoco/j$g;

    invoke-direct {v5, p0, p3, v4}, Lcom/ricktop/ClockSkinCoco/j$g;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {p3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    # Add click listener to scale text to reset to 0
    new-instance v6, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;

    invoke-direct {v6, p0, v4, p3}, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Add click listener for minus button
    const v6, 0x7f0a02a8 # zzzzg_scaleMinusBtn

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;

    invoke-direct {v7, p0, v4, p3}, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Add click listener for plus button
    const v6, 0x7f0a02a9 # zzzzg_scalePlusBtn

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/ricktop/ClockSkinCoco/ScalePlusClickListener;

    invoke-direct {v7, p0, v4, p3}, Lcom/ricktop/ClockSkinCoco/ScalePlusClickListener;-><init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V



    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
