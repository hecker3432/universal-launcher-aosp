.class public Lcom/ailife/ClockSkinCoco/QsViewManager;
.super Ljava/lang/Object;
.source "QsViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QsViewManager"


# instance fields
.field airplane:Landroid/view/View;

.field airplaneBg:Landroid/graphics/drawable/GradientDrawable;

.field airplaneDetail:Landroid/widget/TextView;

.field airplaneReceiver:Landroid/content/BroadcastReceiver;

.field background:Landroid/view/View;

.field battery:Landroid/widget/TextView;

.field batteryReceiver:Landroid/content/BroadcastReceiver;

.field bgEnabled:Z

.field brightness:Landroid/widget/SeekBar;

.field brightnessObserver:Landroid/database/ContentObserver;

.field bt:Landroid/view/View;

.field btBg:Landroid/graphics/drawable/GradientDrawable;

.field btDetail:Landroid/widget/TextView;

.field btReceiver:Landroid/content/BroadcastReceiver;

.field colorConnected:Ljava/lang/String;

.field colorDisconnected:Ljava/lang/String;

.field colorIdle:Ljava/lang/String;

.field colorOff:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field data:Landroid/view/View;

.field dataBg:Landroid/graphics/drawable/GradientDrawable;

.field dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field dataDetail:Landroid/widget/TextView;

.field dataListener:Landroid/telephony/PhoneStateListener;

.field date:Landroid/widget/TextView;

.field dateReceiver:Landroid/content/BroadcastReceiver;

.field extraRow:Landroid/widget/TableRow;

.field flashBg:Landroid/graphics/drawable/GradientDrawable;

.field flashLight:Landroid/widget/ImageView;

.field hotspot:Landroid/view/View;

.field hotspotBg:Landroid/graphics/drawable/GradientDrawable;

.field hotspotDetail:Landroid/widget/TextView;

.field hotspotReceiver:Landroid/content/BroadcastReceiver;

.field launcherBg:Landroid/graphics/drawable/GradientDrawable;

.field launcherSetting:Landroid/widget/ImageView;

.field permissionReceiver:Landroid/content/BroadcastReceiver;

.field power:Landroid/widget/ImageView;

.field powerBg:Landroid/graphics/drawable/GradientDrawable;

.field recents:Landroid/widget/ImageView;

.field recentsBg:Landroid/graphics/drawable/GradientDrawable;

.field private rootView:Landroid/view/View;

.field settings:Landroid/widget/ImageView;

.field settingsBg:Landroid/graphics/drawable/GradientDrawable;

.field time:Landroid/widget/TextView;

.field timeReceiver:Landroid/content/BroadcastReceiver;

.field volume:Landroid/view/View;

.field volumeBg:Landroid/graphics/drawable/GradientDrawable;

.field volumeDetail:Landroid/widget/TextView;

.field volumeReceiver:Landroid/content/BroadcastReceiver;

.field wifi:Landroid/view/View;

.field wifiBg:Landroid/graphics/drawable/GradientDrawable;

.field wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field wifiDetail:Landroid/widget/TextView;

.field wifiReceiver:Landroid/content/BroadcastReceiver;

.field zzzzk_airplaneIcon:Landroid/widget/ImageView;

.field zzzzk_btIcon:Landroid/widget/ImageView;

.field zzzzk_dataFreq:Landroid/widget/TextView;

.field zzzzk_dataIcon:Landroid/widget/ImageView;

.field zzzzk_hotspotIcon:Landroid/widget/ImageView;

.field zzzzk_volumeIcon:Landroid/widget/ImageView;

.field zzzzk_wifiFreq:Landroid/widget/TextView;

.field zzzzk_wifiIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "#379950"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    .line 76
    const-string v0, "#2444e3"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorIdle:Ljava/lang/String;

    .line 77
    const-string v0, "#ad7623"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    .line 78
    const-string v0, "#AAAAAA"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bgEnabled:Z

    .line 82
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->rootView:Landroid/view/View;

    .line 84
    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinCoco/QsViewManager;->init(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/QsViewManager;)Landroid/content/Context;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBrightness()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ailife/ClockSkinCoco/QsViewManager;Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ailife/ClockSkinCoco/QsViewManager;I)I
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getCellularSignalLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ailife/ClockSkinCoco/QsViewManager;I)I
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getCellularSignalDrawable(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ailife/ClockSkinCoco/QsViewManager;I)I
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getWifiSignalLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ailife/ClockSkinCoco/QsViewManager;I)I
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getWifiSignalDrawable(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateDate()V

    return-void
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBattery()V

    return-void
.end method

.method static synthetic access$400(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateWifi()V

    return-void
.end method

.method static synthetic access$500(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V

    return-void
.end method

.method static synthetic access$600(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBt()V

    return-void
.end method

.method static synthetic access$700(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateVolume()V

    return-void
.end method

.method static synthetic access$800(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateAirplane()V

    return-void
.end method

.method static synthetic access$900(Lcom/ailife/ClockSkinCoco/QsViewManager;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateHotspot()V

    return-void
.end method

.method private changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    .registers 4

    .line 511
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bgEnabled:Z

    if-eqz v0, :cond_b

    .line 512
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 514
    :cond_b
    return-void
.end method

.method private getConnectedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    :try_start_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 640
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isConnected"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 641
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 642
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 643
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 644
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3f

    .line 646
    :cond_3d
    goto :goto_d

    .line 649
    :cond_3e
    goto :goto_47

    .line 647
    :catch_3f
    move-exception p1

    .line 648
    const-string v1, "QsViewManager"

    const-string v2, "Error getting connected devices"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    :goto_47
    return-object v0
.end method

.method private getNetworkTypeName(I)Ljava/lang/String;
    .registers 2

    .line 654
    sparse-switch p1, :sswitch_data_12

    .line 670
    const-string p1, "Unknown"

    return-object p1

    .line 668
    :sswitch_6
    const-string p1, "5G"

    return-object p1

    .line 666
    :sswitch_9
    const-string p1, "4G"

    return-object p1

    .line 664
    :sswitch_c
    const-string p1, "3G"

    return-object p1

    .line 659
    :sswitch_f
    const-string p1, "2G"

    return-object p1

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_f
        0x3 -> :sswitch_c
        0x4 -> :sswitch_f
        0x7 -> :sswitch_f
        0x8 -> :sswitch_c
        0xa -> :sswitch_c
        0xd -> :sswitch_9
        0xf -> :sswitch_c
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method private getCellularSignalLevel(I)I
    .registers 4

    .line 161
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    return v1

    .line 162
    :cond_5
    const/16 v0, -0x46

    if-lt p1, v0, :cond_b

    const/4 p1, 0x4

    return p1

    .line 163
    :cond_b
    const/16 v0, -0x55

    if-lt p1, v0, :cond_11

    const/4 p1, 0x3

    return p1

    .line 164
    :cond_11
    const/16 v0, -0x64

    if-lt p1, v0, :cond_17

    const/4 p1, 0x2

    return p1

    .line 165
    :cond_17
    const/16 v0, -0x6e

    if-lt p1, v0, :cond_1d

    const/4 p1, 0x1

    return p1

    .line 166
    :cond_1d
    return v1
.end method

.method private getCellularSignalDrawable(I)I
    .registers 2

    .line 180
    packed-switch p1, :pswitch_data_18

    .line 185
    const p1, 0x7f080141

    return p1

    .line 181
    :pswitch_7
    const p1, 0x7f080145

    return p1

    .line 182
    :pswitch_b
    const p1, 0x7f080144

    return p1

    .line 183
    :pswitch_f
    const p1, 0x7f080143

    return p1

    .line 184
    :pswitch_13
    const p1, 0x7f080142

    return p1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private getWifiSignalLevel(I)I
    .registers 3

    .line 152
    const/16 v0, -0x32

    if-lt p1, v0, :cond_6

    const/4 p1, 0x4

    return p1

    .line 153
    :cond_6
    const/16 v0, -0x3c

    if-lt p1, v0, :cond_c

    const/4 p1, 0x3

    return p1

    .line 154
    :cond_c
    const/16 v0, -0x46

    if-lt p1, v0, :cond_12

    const/4 p1, 0x2

    return p1

    .line 155
    :cond_12
    const/16 v0, -0x50

    if-lt p1, v0, :cond_18

    const/4 p1, 0x1

    return p1

    .line 156
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private getWifiSignalDrawable(I)I
    .registers 2

    .line 170
    packed-switch p1, :pswitch_data_18

    .line 175
    const p1, 0x7f080147

    return p1

    .line 171
    :pswitch_7
    const p1, 0x7f08014b

    return p1

    .line 172
    :pswitch_b
    const p1, 0x7f08014a

    return p1

    .line 173
    :pswitch_f
    const p1, 0x7f080149

    return p1

    .line 174
    :pswitch_13
    const p1, 0x7f080148

    return p1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private init(Landroid/view/View;)V
    .registers 7

    .line 89
    const v0, 0x7f0a026a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->launcherSetting:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0a026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->recents:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0a0267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->flashLight:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0a026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->power:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0a026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->settings:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0a026f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->time:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0a025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->battery:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a0265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->date:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0a0273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiDetail:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0a0264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataDetail:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeDetail:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0a025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneDetail:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0a0269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotDetail:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0a0272

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifi:Landroid/view/View;

    .line 107
    const v0, 0x7f0a0263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->data:Landroid/view/View;

    .line 108
    const v0, 0x7f0a0261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bt:Landroid/view/View;

    .line 109
    const v0, 0x7f0a0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volume:Landroid/view/View;

    .line 110
    const v0, 0x7f0a025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplane:Landroid/view/View;

    .line 111
    const v0, 0x7f0a0268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspot:Landroid/view/View;

    .line 113
    const v0, 0x7f0a0277

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->background:Landroid/view/View;

    .line 114
    const v0, 0x7f0a0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightness:Landroid/widget/SeekBar;

    .line 115
    const v0, 0x7f0a0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->extraRow:Landroid/widget/TableRow;

    .line 116
    const v0, 0x7f0a02c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0a02c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiFreq:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0a02c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataIcon:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0a02c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_dataFreq:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0a02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_btIcon:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0a02c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_volumeIcon:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0a02bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_airplaneIcon:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0a02c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_hotspotIcon:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    .line 119
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->data:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    .line 120
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btBg:Landroid/graphics/drawable/GradientDrawable;

    .line 121
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volume:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    .line 122
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    .line 123
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    .line 125
    const v0, 0x7f0a0279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    const v1, 0x7f0a027b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    const v2, 0x7f0a0278

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 128
    const v3, 0x7f0a027a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 129
    const v4, 0x7f0a027c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->launcherBg:Landroid/graphics/drawable/GradientDrawable;

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->recentsBg:Landroid/graphics/drawable/GradientDrawable;

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->flashBg:Landroid/graphics/drawable/GradientDrawable;

    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->powerBg:Landroid/graphics/drawable/GradientDrawable;

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->settingsBg:Landroid/graphics/drawable/GradientDrawable;

    .line 138
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->settings:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->launcherSetting:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda8;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->flashLight:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda9;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->power:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda10;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->recents:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda11;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$1;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 192
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volume:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda12;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volume:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda13;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplane:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda14;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplane:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda15;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 207
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifi:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda16;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifi:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 214
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bt:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda2;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bt:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda3;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->data:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda4;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->data:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda5;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspot:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda6;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspot:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$$ExternalSyntheticLambda7;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 234
    return-void
.end method

.method private manageColor()V
    .registers 9

    .line 472
    const-string v0, "#ad7623"

    const-string v1, "#2444e3"

    const-string v2, "#379950"

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 473
    const-string v4, "qsColor"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "#000000"

    const-string v7, "#AAAAAA"

    if-nez v4, :cond_88

    .line 474
    iput-boolean v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bgEnabled:Z

    .line 475
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->background:Landroid/view/View;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 476
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 477
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 478
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 479
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 480
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 481
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 482
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->launcherBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 483
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->recentsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 484
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->flashBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 485
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->powerBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 486
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->settingsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_f7

    .line 489
    :cond_88
    const/4 v4, 0x1

    :try_start_89
    iput-boolean v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->bgEnabled:Z

    .line 490
    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->background:Landroid/view/View;

    const-string v5, "qsBackground"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    # Apply background color to round root view if screen is round
    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :not_round_bg_vm

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->rootView:Landroid/view/View;

    const v6, 0x7f0a02c7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :not_round_bg_vm

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :not_round_bg_vm

    .line 491
    const-string v4, "qsStatic"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->launcherBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 493
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->recentsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 494
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->flashBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 495
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->powerBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 496
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->settingsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 497
    const-string v4, "qsConnected"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    .line 498
    const-string v4, "qsIdle"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorIdle:Ljava/lang/String;

    .line 499
    const-string v4, "qsDisconnected"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    .line 500
    const-string v4, "qsOff"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_ed} :catch_ee

    .line 506
    goto :goto_f7

    .line 501
    :catch_ee
    move-exception v3

    .line 502
    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    .line 503
    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorIdle:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    .line 505
    iput-object v7, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    .line 508
    :goto_f7
    # Apply brightness slider color
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qsBrightnessSliderColor"

    const-string v2, "#FFFFFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightness:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private applyRoundMargin()V
    .registers 6

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :not_round

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "qsRoundMargin"

    const/16 v3, 0x14

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->background:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->background:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :not_round

    return-void
.end method

.method private updateAirplane()V
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 756
    :cond_10
    if-eqz v2, :cond_21

    .line 757
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneDetail:Landroid/widget/TextView;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_2f

    .line 760
    :cond_21
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 763
    :goto_2f
    return-void
.end method

.method private updateBattery()V
    .registers 4

    .line 525
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 526
    if-nez v0, :cond_d

    return-void

    .line 528
    :cond_d
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 529
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 531
    const/4 v2, 0x5

    if-eq v0, v2, :cond_37

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    goto :goto_37

    .line 534
    :cond_1e
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->battery:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 532
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->battery:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\u26a1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_4f
    return-void
.end method

.method private updateBrightness()V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightness:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 541
    return-void
.end method

.method private updateBt()V
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkBluetoothPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 604
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    const-string v1, "permission denied"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    return-void

    .line 608
    :cond_10
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 609
    if-nez v0, :cond_1e

    .line 610
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    return-void

    .line 614
    :cond_1e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_33

    .line 615
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 617
    return-void

    .line 620
    :cond_33
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 621
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    const-string v1, "scanning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 623
    return-void

    .line 626
    :cond_48
    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getConnectedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 628
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorIdle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_74

    .line 631
    :cond_61
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btDetail:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 634
    :goto_74
    return-void
.end method

.method private updateData()V
    .registers 11

    .line 675
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 676
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataDetail:Landroid/widget/TextView;

    const-string v1, "permission denied"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    return-void

    .line 680
    :cond_10
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 681
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 683
    if-eqz v1, :cond_e9

    if-nez v0, :cond_2b

    move-object v3, p0

    goto/16 :goto_ea

    .line 688
    :cond_2b
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    .line 689
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 690
    const/4 v2, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    .line 691
    :goto_44
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 692
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    .line 695
    nop

    .line 696
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 697
    const/4 v1, -0x1

    if-eqz v0, :cond_92

    .line 698
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 699
    instance-of v6, v3, Landroid/telephony/CellInfoLte;

    const v9, 0x7fffffff

    if-eqz v6, :cond_7e

    .line 700
    check-cast v3, Landroid/telephony/CellInfoLte;

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v2

    .line 701
    if-ne v2, v9, :cond_8f

    .line 702
    const/4 v2, -0x1

    goto :goto_8f

    .line 704
    :cond_7e
    instance-of v6, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_8f

    .line 705
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v2

    .line 706
    if-ne v2, v9, :cond_8f

    .line 707
    const/4 v2, -0x1

    .line 710
    :cond_8f
    :goto_8f
    goto :goto_5d

    .line 698
    :cond_90
    move v6, v2

    goto :goto_93

    .line 697
    :cond_92
    const/4 v6, -0x1

    .line 713
    :goto_93
    nop

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Data - Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SIM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Signal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ailife/ClockSkinCoco/QsViewManager$15;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/ailife/ClockSkinCoco/QsViewManager$15;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    return-void

    .line 683
    :cond_e9
    move-object v3, p0

    .line 684
    :goto_ea
    iget-object v0, v3, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataDetail:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    return-void
.end method

.method private updateDate()V
    .registers 5

    .line 521
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->date:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method private updateHotspot()V
    .registers 6

    .line 767
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 769
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWifiApState"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 770
    const/16 v1, 0xa

    if-le v0, v1, :cond_2d

    add-int/lit8 v0, v0, -0xa

    .line 772
    :cond_2d
    packed-switch v0, :pswitch_data_6e

    .line 783
    :pswitch_30
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotDetail:Landroid/widget/TextView;

    goto :goto_51

    .line 775
    :pswitch_33
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotDetail:Landroid/widget/TextView;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 777
    goto :goto_5d

    .line 779
    :pswitch_42
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 781
    goto :goto_5d

    .line 783
    :goto_51
    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5d} :catch_5e

    .line 789
    :goto_5d
    goto :goto_6d

    .line 786
    :catch_5e
    move-exception v0

    .line 787
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotDetail:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 790
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0xa
        :pswitch_42
        :pswitch_33
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method

.method private updateTime()V
    .registers 5

    .line 517
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    return-void
.end method

.method private updateVolume()V
    .registers 8

    .line 738
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 739
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 740
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-double v5, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v0, v3

    .line 742
    if-nez v1, :cond_47

    .line 743
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeDetail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% silent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_89

    .line 745
    :cond_47
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6a

    .line 746
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeDetail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% vibrate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorIdle:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_89

    .line 749
    :cond_6a
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeDetail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 752
    :goto_89
    return-void
.end method

.method private collapseGlobalQs()V
    .registers 3

    # Send broadcast to collapse the global QS panel
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailife.ClockSkinCoco.COLLAPSE_GLOBAL_QS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateWifi()V
    .registers 9

    .line 544
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 545
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiDetail:Landroid/widget/TextView;

    const-string v1, "permission denied"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    return-void

    .line 549
    :cond_10
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 550
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 552
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 553
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    .line 554
    nop

    .line 555
    nop

    .line 557
    nop

    .line 558
    nop

    .line 559
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v3, :cond_90

    .line 560
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 561
    if-eqz v2, :cond_48

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    .line 563
    :goto_49
    if-eqz v3, :cond_8d

    .line 564
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_8d

    .line 566
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "^\"(.*)\"$"

    const-string v5, "$1"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 567
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    .line 570
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v2, v7, :cond_8a

    .line 571
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 572
    const/16 v2, 0x960

    if-lt v0, v2, :cond_78

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_78

    .line 573
    const-string v6, " 2.4G"

    move v0, v4

    move v4, v3

    goto :goto_91

    .line 574
    :cond_78
    const/16 v2, 0x141e

    if-lt v0, v2, :cond_85

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_85

    .line 575
    const-string v6, " 5G"

    move v0, v4

    move v4, v3

    goto :goto_91

    .line 577
    :cond_85
    const-string v6, " 6G"

    move v0, v4

    move v4, v3

    goto :goto_91

    .line 570
    :cond_8a
    move v0, v4

    move v4, v3

    goto :goto_91

    .line 584
    :cond_8d
    move v4, v3

    const/4 v0, 0x0

    goto :goto_91

    .line 559
    :cond_90
    const/4 v0, 0x0

    .line 584
    :goto_91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFi - Enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Band: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dBm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QsViewManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v1, :cond_112

    .line 588
    if-eqz v4, :cond_103

    move v7, v0

    .line 590
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiDetail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dBm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorConnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0, v7}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getWifiSignalLevel(I)I

    move-result v0

    .line 593
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->getWifiSignalDrawable(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 594
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_120

    .line 595
    :cond_103
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiDetail:Landroid/widget/TextView;

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorDisconnected:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiFreq:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_120

    .line 597
    :cond_112
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->colorOff:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 600
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->zzzzk_wifiFreq:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    :goto_120
    return-void
.end method


# virtual methods
.method synthetic lambda$init$0$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 4

    .line 140
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    # Collapse the QS panel after starting activity
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 145
    goto :goto_1a

    .line 143
    :catch_12
    move-exception p1

    .line 144
    const-string v0, "QsViewManager"

    const-string v1, "Failed to open settings"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_1a
    return-void
.end method

.method synthetic lambda$init$1$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 5

    .line 149
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.ailife.ClockSkinCoco"

    const-string v2, "com.ricktop.ClockSkinCoco.SettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 151
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    # Collapse the QS panel after starting launcher settings activity
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 153
    return-void
.end method

.method synthetic lambda$init$10$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)Z
    .registers 2

    .line 210
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->wifiMore(Landroid/content/Context;)V

    # Collapse the QS panel after opening WiFi settings
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 211
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$init$11$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 2

    .line 214
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->toggleBluetooth(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$init$12$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)Z
    .registers 2

    .line 217
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->bluetoothMore(Landroid/content/Context;)V

    # Collapse the QS panel after opening Bluetooth settings
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 218
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$init$13$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 2

    .line 221
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->toggleData(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$init$14$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)Z
    .registers 2

    .line 224
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->dataMore(Landroid/content/Context;)V

    # Collapse the QS panel after opening Data settings
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 225
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$init$15$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 2

    .line 228
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->toggleHotspot(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$init$16$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)Z
    .registers 2

    .line 231
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->hotspotMore(Landroid/content/Context;)V

    # Collapse the QS panel after opening Hotspot settings
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 232
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$init$2$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 4

    .line 156
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-class v1, Lcom/ailife/ClockSkinCoco/FlashLightActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    # Collapse the QS panel after starting activity
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 159
    return-void
.end method

.method synthetic lambda$init$3$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 3

    .line 162
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->checkAccessibilityPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.ailife.ClockSkinCoco.POWER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    :cond_1d
    return-void
.end method

.method synthetic lambda$init$4$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 3

    .line 170
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->checkAccessibilityPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 171
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.ailife.ClockSkinCoco.RECENTS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # Collapse the QS panel after triggering recents
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 175
    :cond_1d
    return-void
.end method

.method synthetic lambda$init$5$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 2

    .line 192
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->setVolume(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$init$6$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)Z
    .registers 2

    .line 195
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->setSoundMode(Landroid/content/Context;)V

    .line 196
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateVolume()V

    .line 197
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$init$7$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 2

    .line 200
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->toggleAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$init$8$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)Z
    .registers 2

    .line 203
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->airplaneModeMore(Landroid/content/Context;)V

    # Collapse the QS panel after opening Airplane Mode settings
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->collapseGlobalQs()V

    .line 204
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$init$9$com-ailife-ClockSkinCoco-QsViewManager(Landroid/view/View;)V
    .registers 2

    .line 207
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->toggleWifi(Landroid/content/Context;)V

    return-void
.end method

.method public registerAllListeners()V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    # Check if screen is round - if so, always hide extra row regardless of preference
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :not_round

    # Screen is round - hide extra row and skip preference check
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->extraRow:Landroid/widget/TableRow;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_1c

    :not_round
    # Screen is not round - continue with normal preference check
    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qsExtraRow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 239
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->extraRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_1c

    .line 241
    :cond_15
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->extraRow:Landroid/widget/TableRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 244
    :goto_1c
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->applyRoundMargin()V

    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->manageColor()V

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$2;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$2;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->timeReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    const/16 v4, 0x21

    if-lt v1, v4, :cond_3c

    .line 255
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->timeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_43

    .line 257
    :cond_3c
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->timeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    :goto_43
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateTime()V

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 263
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$3;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$3;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dateReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_60

    .line 270
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_67

    .line 272
    :cond_60
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    :goto_67
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateDate()V

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$4;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$4;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_84

    .line 285
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_8b

    .line 287
    :cond_84
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    :goto_8b
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBattery()V

    .line 292
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$5;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$5;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_a8

    .line 300
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_af

    .line 302
    :cond_a8
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    :goto_af
    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$6;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$6;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 322
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 323
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 324
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateWifi()V

    .line 327
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$7;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$7;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 338
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 341
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 342
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$8;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$8;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataListener:Landroid/telephony/PhoneStateListener;

    .line 348
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x140

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 349
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$9;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$9;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_12e

    .line 362
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_135

    .line 364
    :cond_12e
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    :goto_135
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBt()V

    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$10;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$10;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_152

    .line 377
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_159

    .line 379
    :cond_152
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    :goto_159
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateVolume()V

    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 385
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$11;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$11;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_176

    .line 392
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_17d

    .line 394
    :cond_176
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    :goto_17d
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateAirplane()V

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$12;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$12;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_19a

    .line 407
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1a1

    .line 409
    :cond_19a
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    :goto_1a1
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateHotspot()V

    .line 414
    new-instance v0, Lcom/ailife/ClockSkinCoco/QsViewManager$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/ailife/ClockSkinCoco/QsViewManager$13;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightnessObserver:Landroid/database/ContentObserver;

    .line 420
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 421
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightnessObserver:Landroid/database/ContentObserver;

    .line 420
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 425
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBrightness()V

    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ailife.ClockSkinCoco.PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 429
    new-instance v1, Lcom/ailife/ClockSkinCoco/QsViewManager$14;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QsViewManager$14;-><init>(Lcom/ailife/ClockSkinCoco/QsViewManager;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->permissionReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1de

    .line 438
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->permissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1e5

    .line 440
    :cond_1de
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->permissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 442
    :goto_1e5
    return-void
.end method

.method public unregisterAllListeners()V
    .registers 4

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->timeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->timeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    :cond_b
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    :cond_16
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    :cond_21
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    :cond_2c
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 451
    :cond_37
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    :cond_42
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    :cond_4d
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    :cond_58
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->permissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->permissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    :cond_63
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 457
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 458
    :cond_76
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 460
    :cond_7f
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 461
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->dataListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 463
    :cond_93
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightnessObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_a2

    .line 464
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QsViewManager;->brightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a2} :catch_a3

    .line 468
    :cond_a2
    goto :goto_ab

    .line 466
    :catch_a3
    move-exception v0

    .line 467
    const-string v1, "QsViewManager"

    const-string v2, "Error unregistering listeners"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    :goto_ab
    return-void
.end method

.method public refreshAllData()V
    .registers 1

    .line 473
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateTime()V

    .line 474
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateDate()V

    .line 475
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBattery()V

    .line 476
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateWifi()V

    .line 477
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateData()V

    .line 478
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBt()V

    .line 479
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateVolume()V

    .line 480
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateAirplane()V

    .line 481
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateHotspot()V

    .line 482
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QsViewManager;->updateBrightness()V

    .line 483
    return-void
.end method
