.class public Lcom/ailife/ClockSkinCoco/QSFragment;
.super Landroidx/fragment/app/Fragment;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;
    }
.end annotation


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
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 111
    const-string v0, "#379950"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    .line 112
    const-string v0, "#2444e3"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorIdle:Ljava/lang/String;

    .line 113
    const-string v0, "#ad7623"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    .line 114
    const-string v0, "#AAAAAA"

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bgEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/QSFragment;I)I
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->getCellularSignalLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/QSFragment;I)I
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->getCellularSignalDrawable(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/QSFragment;I)I
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->getWifiSignalLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/QSFragment;I)I
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->getWifiSignalDrawable(I)I

    move-result p0

    return p0
.end method

.method public static failed(Landroid/content/Context;)V
    .registers 3

    .line 126
    const-string v0, "not possible"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
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

.method private getNetworkTypeName(I)Ljava/lang/String;
    .registers 2

    .line 130
    sparse-switch p1, :sswitch_data_12

    .line 146
    const-string p1, "Unknown"

    return-object p1

    .line 144
    :sswitch_6
    const-string p1, "5G"

    return-object p1

    .line 142
    :sswitch_9
    const-string p1, "4G"

    return-object p1

    .line 140
    :sswitch_c
    const-string p1, "3G"

    return-object p1

    .line 135
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


# virtual methods
.method public D0()V
    .registers 1

    .line 191
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    .line 192
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->registerAllListener()V

    .line 193
    return-void
.end method

.method public changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V
    .registers 4

    .line 196
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bgEnabled:Z

    if-eqz v0, :cond_b

    .line 197
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 199
    :cond_b
    return-void
.end method

.method public getAclConnectedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;
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

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 205
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isConnected"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 206
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3b} :catch_3c

    .line 210
    :cond_3b
    goto :goto_59

    .line 208
    :catch_3c
    move-exception v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reflection error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_59
    goto :goto_d

    .line 212
    :cond_5a
    return-object v0
.end method

.method public getWifiApState(Landroid/net/wifi/WifiManager;)Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;
    .registers 6

    .line 217
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWifiApState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 218
    const/16 v0, 0xa

    if-le p1, v0, :cond_1f

    .line 219
    add-int/lit8 p1, p1, -0xa

    .line 221
    :cond_1f
    const-class v0, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    aget-object p1, v0, p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-object p1

    .line 222
    :catch_2a
    move-exception p1

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    sget-object p1, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->WIFI_AP_STATE_FAILED:Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    return-object p1
.end method

.method public init(Landroid/view/View;)V
    .registers 7

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called, view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const v0, 0x7f0a026a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->launcherSetting:Landroid/widget/ImageView;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcherSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->launcherSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const v0, 0x7f0a026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->recents:Landroid/widget/ImageView;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->recents:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const v0, 0x7f0a0267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->flashLight:Landroid/widget/ImageView;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flashLight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->flashLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const v0, 0x7f0a026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->power:Landroid/widget/ImageView;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->power:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const v0, 0x7f0a026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->settings:Landroid/widget/ImageView;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->settings:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const v0, 0x7f0a026f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->time:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0a025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->battery:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0a0265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->date:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0a0273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiDetail:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0a0264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0a0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeDetail:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0a025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneDetail:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f0a0269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotDetail:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0a02c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiIcon:Landroid/widget/ImageView;

    .line 250
    const v0, 0x7f0a02c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_wifiFreq:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0a02c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataIcon:Landroid/widget/ImageView;

    .line 252
    const v0, 0x7f0a02c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_dataFreq:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0a02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_btIcon:Landroid/widget/ImageView;

    .line 254
    const v0, 0x7f0a02c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_volumeIcon:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f0a02bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_airplaneIcon:Landroid/widget/ImageView;

    .line 256
    const v0, 0x7f0a02c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->zzzzk_hotspotIcon:Landroid/widget/ImageView;

    .line 257
    const v0, 0x7f0a0272

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifi:Landroid/view/View;

    .line 258
    const v0, 0x7f0a0263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->data:Landroid/view/View;

    .line 259
    const v0, 0x7f0a0261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bt:Landroid/view/View;

    .line 260
    const v0, 0x7f0a0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volume:Landroid/view/View;

    .line 261
    const v0, 0x7f0a025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplane:Landroid/view/View;

    .line 262
    const v0, 0x7f0a0268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspot:Landroid/view/View;

    .line 263
    const v0, 0x7f0a0277

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->background:Landroid/view/View;

    .line 264
    const v0, 0x7f0a0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightness:Landroid/widget/SeekBar;

    .line 265
    const v0, 0x7f0a0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->extraRow:Landroid/widget/TableRow;

    .line 267
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifi:Landroid/view/View;

    if-eqz v0, :cond_1e5

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    .line 268
    :cond_1e5
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->data:Landroid/view/View;

    if-eqz v0, :cond_1f3

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->data:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    .line 269
    :cond_1f3
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bt:Landroid/view/View;

    if-eqz v0, :cond_201

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btBg:Landroid/graphics/drawable/GradientDrawable;

    .line 270
    :cond_201
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volume:Landroid/view/View;

    if-eqz v0, :cond_20f

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volume:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    .line 271
    :cond_20f
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplane:Landroid/view/View;

    if-eqz v0, :cond_21d

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    .line 272
    :cond_21d
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspot:Landroid/view/View;

    if-eqz v0, :cond_22b

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    .line 273
    :cond_22b
    const v0, 0x7f0a0279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    const v1, 0x7f0a027b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    const v2, 0x7f0a0278

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 276
    const v3, 0x7f0a027a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 277
    const v4, 0x7f0a027c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 278
    if-eqz v0, :cond_258

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->launcherBg:Landroid/graphics/drawable/GradientDrawable;

    .line 279
    :cond_258
    if-eqz v1, :cond_262

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->recentsBg:Landroid/graphics/drawable/GradientDrawable;

    .line 280
    :cond_262
    if-eqz v2, :cond_26c

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->flashBg:Landroid/graphics/drawable/GradientDrawable;

    .line 281
    :cond_26c
    if-eqz v3, :cond_276

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->powerBg:Landroid/graphics/drawable/GradientDrawable;

    .line 282
    :cond_276
    if-eqz p1, :cond_280

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->settingsBg:Landroid/graphics/drawable/GradientDrawable;

    .line 283
    :cond_280
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->settings:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$1;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->launcherSetting:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$2;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->flashLight:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$3;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->power:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$4;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$4;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->recents:Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$5;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$5;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightness:Landroid/widget/SeekBar;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$6;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$6;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 347
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volume:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$7;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$7;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volume:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$8;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$8;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 362
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplane:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$9;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$9;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplane:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$10;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$10;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 378
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifi:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$11;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$11;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifi:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$12;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$12;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 394
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bt:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$13;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$13;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bt:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$14;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$14;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 410
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->data:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$15;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$15;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->data:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$16;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$16;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 426
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspot:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$17;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$17;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspot:Landroid/view/View;

    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$18;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$18;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 440
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 444
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result p3

    .line 445
    if-eqz p3, :cond_e

    const v0, 0x7f0d007d

    goto :goto_11

    :cond_e
    const v0, 0x7f0d0076

    .line 446
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m0() isRound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ", layoutId=0x"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "QSFragment"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 p3, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "m0() inflated view="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->init(Landroid/view/View;)V

    .line 450
    return-object p1
.end method

.method public mGetContext()Landroid/app/Activity;
    .registers 2

    .line 454
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    return-object v0
.end method

.method public manageColor()V
    .registers 9

    .line 458
    const-string v0, "#ad7623"

    const-string v1, "#2444e3"

    const-string v2, "#379950"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 459
    const-string v4, "qsColor"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, "#000000"

    const-string v7, "#AAAAAA"

    if-nez v4, :cond_8a

    .line 460
    iput-boolean v5, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bgEnabled:Z

    .line 461
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->background:Landroid/view/View;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 462
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 463
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 464
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 465
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 466
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 467
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 468
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->launcherBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->recentsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 470
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->flashBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 471
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->powerBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 472
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->settingsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 473
    return-void

    .line 476
    :cond_8a
    const/4 v4, 0x1

    :try_start_8b
    iput-boolean v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->bgEnabled:Z

    .line 477
    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->background:Landroid/view/View;

    const-string v5, "qsBackground"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    # Apply background color to root view parent on round screens
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :not_round_bg

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :not_round_bg

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v6, 0x7f0a02c7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :not_round_bg

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :not_round_bg

    .line 478
    const-string v4, "qsStatic"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->launcherBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 480
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->recentsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 481
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->flashBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 482
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->powerBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 483
    iget-object v5, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->settingsBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 484
    const-string v4, "qsConnected"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    .line 485
    const-string v4, "qsIdle"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorIdle:Ljava/lang/String;

    .line 486
    const-string v4, "qsDisconnected"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    .line 487
    const-string v4, "qsOff"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    .line 488
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 489
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorIdle:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 490
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 491
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_8b .. :try_end_103} :catchall_104

    .line 497
    goto :goto_10d

    .line 492
    :catchall_104
    move-exception v3

    .line 493
    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorIdle:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    .line 496
    iput-object v7, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    .line 498
    :goto_10d
    # Apply brightness slider color
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qsBrightnessSliderColor"

    const-string v2, "#FFFFFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightness:Landroid/widget/SeekBar;

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

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

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

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->background:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->background:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :not_round

    return-void
.end method

.method public registerAllListener()V
    .registers 8

    .line 501
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    # Check if screen is round - if so, always hide extra row regardless of preference
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :not_round

    # Screen is round - hide extra row and skip preference check
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->extraRow:Landroid/widget/TableRow;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_1e

    :not_round
    # Screen is not round - continue with normal preference check
    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qsExtraRow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 502
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->extraRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_1e

    .line 504
    :cond_17
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->extraRow:Landroid/widget/TableRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 506
    :goto_1e
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->applyRoundMargin()V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->manageColor()V

    .line 507
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$19;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$19;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->timeReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 515
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->timeReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x2

    const/16 v6, 0x21

    if-lt v4, v6, :cond_40

    .line 517
    invoke-virtual {v1, v3, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_43

    .line 519
    :cond_40
    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 521
    :goto_43
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateTime()V

    .line 522
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 523
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$20;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$20;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dateReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 530
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dateReceiver:Landroid/content/BroadcastReceiver;

    .line 531
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_62

    .line 532
    invoke-virtual {v1, v3, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_65

    .line 534
    :cond_62
    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    :goto_65
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateDate()V

    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$21;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$21;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 545
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_84

    .line 547
    invoke-virtual {v1, v3, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_87

    .line 549
    :cond_84
    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    :goto_87
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateBattery()V

    .line 552
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 553
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$22;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$22;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 560
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 561
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_a6

    .line 562
    invoke-virtual {v1, v3, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_a9

    .line 564
    :cond_a6
    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    :goto_a9
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$23;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$23;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 585
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 586
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 587
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateWifi()V

    .line 588
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 589
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 590
    new-instance v3, Lcom/ailife/ClockSkinCoco/QSFragment$24;

    invoke-direct {v3, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$24;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 601
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 602
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$25;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$25;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataListener:Landroid/telephony/PhoneStateListener;

    .line 613
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x140

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 614
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateData()V

    .line 615
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 616
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$26;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$26;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btReceiver:Landroid/content/BroadcastReceiver;

    .line 624
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 625
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_12e

    .line 627
    invoke-virtual {v1, v2, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_131

    .line 629
    :cond_12e
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    :goto_131
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateBt()V

    .line 632
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->registerAllListener2()V

    .line 633
    return-void
.end method

.method public registerAllListener2()V
    .registers 7

    .line 636
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 637
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$27;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$27;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeReceiver:Landroid/content/BroadcastReceiver;

    .line 643
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 644
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/16 v5, 0x21

    if-lt v3, v5, :cond_1f

    .line 646
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_22

    .line 648
    :cond_1f
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    :goto_22
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateVolume()V

    .line 651
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 652
    const-string v1, "android.settings.AIRPLANE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$28;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$28;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 660
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 661
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 662
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_4b

    .line 663
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_4e

    .line 665
    :cond_4b
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 667
    :goto_4e
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateAirplane()V

    .line 668
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 669
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$29;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$29;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    .line 675
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 676
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_6d

    .line 678
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_70

    .line 680
    :cond_6d
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    :goto_70
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateHotspot()V

    .line 683
    new-instance v0, Lcom/ailife/ClockSkinCoco/QSFragment$30;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment$30;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightnessObserver:Landroid/database/ContentObserver;

    .line 689
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 690
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->updateBrightness()V

    .line 691
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ailife.ClockSkinCoco.PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 692
    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$31;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/QSFragment$31;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->permissionReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    .line 701
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->permissionReceiver:Landroid/content/BroadcastReceiver;

    .line 702
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_b2

    .line 703
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_b5

    .line 705
    :cond_b2
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 707
    :goto_b5
    return-void
.end method

.method public unregisterAllListener()V
    .registers 4

    .line 710
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->timeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d

    .line 711
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->timeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 713
    :cond_d
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 714
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 716
    :cond_1a
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_27

    .line 717
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 719
    :cond_27
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_34

    .line 720
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 722
    :cond_34
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_41

    .line 723
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 725
    :cond_41
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4e

    .line 726
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 728
    :cond_4e
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5b

    .line 729
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 731
    :cond_5b
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_68

    .line 732
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 734
    :cond_68
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_7d

    .line 735
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 737
    :cond_7d
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_92

    .line 738
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 740
    :cond_92
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_a8

    .line 741
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 743
    :cond_a8
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightnessObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_b9

    .line 744
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 746
    :cond_b9
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->permissionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c6

    .line 747
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->permissionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 749
    :cond_c6
    return-void
.end method

.method public updateAirplane()V
    .registers 5

    .line 752
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "airplane"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_35

    .line 754
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneDetail:Landroid/widget/TextView;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_43

    .line 757
    :cond_35
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->airplaneBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 760
    :goto_43
    return-void
.end method

.method public updateBattery()V
    .registers 6

    .line 763
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 764
    if-nez v0, :cond_f

    .line 765
    return-void

    .line 767
    :cond_f
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 768
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    goto :goto_3d

    .line 771
    :cond_24
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->battery:Landroid/widget/TextView;

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

    goto :goto_55

    .line 769
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->battery:Landroid/widget/TextView;

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

    .line 773
    :goto_55
    return-void
.end method

.method public updateBrightness()V
    .registers 5

    .line 776
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->brightness:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 777
    return-void
.end method

.method public updateBt()V
    .registers 4

    .line 780
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkBluetoothPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 781
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    const-string v1, "permission denied"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    return-void

    .line 784
    :cond_12
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 785
    if-nez v0, :cond_20

    .line 786
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    return-void

    .line 789
    :cond_20
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_35

    .line 790
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 792
    return-void

    .line 794
    :cond_35
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 795
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    const-string v1, "scanning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 797
    return-void

    .line 799
    :cond_4a
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->getAclConnectedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;

    move-result-object v0

    .line 800
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 801
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorIdle:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_76

    .line 804
    :cond_63
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btDetail:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->btBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 807
    :goto_76
    return-void
.end method

.method public updateData()V
    .registers 11

    .line 811
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 812
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    const-string v1, "permission denied"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    return-void

    .line 815
    :cond_12
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 816
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 817
    if-eqz v1, :cond_e6

    if-nez v0, :cond_31

    move-object v3, p0

    goto/16 :goto_e7

    .line 821
    :cond_31
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    .line 822
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 823
    const/4 v2, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    move v4, v2

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    .line 824
    :goto_47
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    .line 825
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    .line 826
    nop

    .line 827
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 828
    const/4 v1, -0x1

    if-eqz v0, :cond_95

    .line 829
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 830
    instance-of v6, v3, Landroid/telephony/CellInfoLte;

    const v9, 0x7fffffff

    if-eqz v6, :cond_81

    .line 831
    check-cast v3, Landroid/telephony/CellInfoLte;

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v2

    .line 832
    if-ne v2, v9, :cond_92

    .line 833
    const/4 v2, -0x1

    goto :goto_92

    .line 835
    :cond_81
    instance-of v6, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_92

    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v2

    if-ne v2, v9, :cond_92

    .line 836
    const/4 v2, -0x1

    .line 838
    :cond_92
    :goto_92
    goto :goto_60

    .line 839
    :cond_93
    move v6, v2

    goto :goto_96

    .line 841
    :cond_95
    const/4 v6, -0x1

    .line 843
    :goto_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Data Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sim installed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signal strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    nop

    .line 845
    nop

    .line 846
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/ailife/ClockSkinCoco/QSFragment$32;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/ailife/ClockSkinCoco/QSFragment$32;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 874
    return-void

    .line 817
    :cond_e6
    move-object v3, p0

    .line 818
    :goto_e7
    iget-object v0, v3, Lcom/ailife/ClockSkinCoco/QSFragment;->dataDetail:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    return-void
.end method

.method public updateDate()V
    .registers 5

    .line 877
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->date:Landroid/widget/TextView;

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

    .line 878
    return-void
.end method

.method public updateHotspot()V
    .registers 3

    .line 881
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->getWifiApState(Landroid/net/wifi/WifiManager;)Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QSFragment$WIFI_AP_STATE;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 888
    :pswitch_1b
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotDetail:Landroid/widget/TextView;

    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorDisconnected:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 890
    goto :goto_48

    .line 892
    :pswitch_2a
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotDetail:Landroid/widget/TextView;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_48

    .line 883
    :pswitch_39
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotDetail:Landroid/widget/TextView;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->hotspotBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 885
    nop

    .line 896
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_1b
        :pswitch_2a
    .end packed-switch
.end method

.method public updateTime()V
    .registers 5

    .line 899
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->time:Landroid/widget/TextView;

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

    .line 900
    return-void
.end method

.method public updateVolume()V
    .registers 8

    .line 903
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 904
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 905
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

    .line 906
    if-nez v1, :cond_49

    .line 907
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% silent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorOff:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_90

    .line 909
    :cond_49
    const/4 v0, 0x1

    if-ne v1, v0, :cond_6d

    .line 910
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorIdle:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    goto :goto_90

    .line 912
    :cond_6d
    const/4 v0, 0x2

    if-ne v1, v0, :cond_90

    .line 913
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeDetail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->volumeBg:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->colorConnected:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/QSFragment;->changeBg(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;)V

    .line 916
    :cond_90
    :goto_90
    return-void
.end method

.method public updateWifi()V
    .registers 9

    .line 919
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 920
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment;->wifiDetail:Landroid/widget/TextView;

    const-string v1, "permission denied"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    return-void

    .line 924
    :cond_12
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 925
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 926
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 927
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 929
    nop

    .line 930
    const/4 v4, 0x0

    if-eqz v2, :cond_48

    .line 931
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 932
    if-eqz v1, :cond_48

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 933
    goto :goto_49

    .line 937
    :cond_48
    const/4 v2, 0x0

    :goto_49
    nop

    .line 938
    nop

    .line 939
    nop

    .line 941
    const-string v1, ""

    if-eqz v2, :cond_92

    .line 942
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_92

    .line 944
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 945
    const-string v5, "^\"(.*)\"$"

    const-string v6, "$1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 948
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_8f

    .line 949
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 950
    const/16 v1, 0x960

    if-lt v0, v1, :cond_7d

    const/16 v1, 0x9c4

    if-ge v0, v1, :cond_7d

    .line 951
    const-string v1, "2.4G"

    move-object v6, v1

    move-object v7, v4

    goto :goto_96

    .line 952
    :cond_7d
    const/16 v1, 0x141e

    if-lt v0, v1, :cond_8a

    const/16 v1, 0x170c

    if-ge v0, v1, :cond_8a

    .line 953
    const-string v1, "5G"

    move-object v6, v1

    move-object v7, v4

    goto :goto_96

    .line 955
    :cond_8a
    const-string v1, "6G"

    move-object v6, v1

    move-object v7, v4

    goto :goto_96

    .line 948
    :cond_8f
    move-object v6, v1

    move-object v7, v4

    goto :goto_96

    .line 961
    :cond_92
    const/4 v0, 0x0

    move-object v7, v0

    move-object v6, v1

    const/4 v5, 0x0

    :goto_96
    nop

    .line 962
    nop

    .line 963
    nop

    .line 964
    nop

    .line 965
    nop

    .line 967
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/QSFragment$33;

    move v4, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ailife/ClockSkinCoco/QSFragment$33;-><init>(Lcom/ailife/ClockSkinCoco/QSFragment;ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 997
    return-void
.end method

.method public vibrateOnLongPress()V
    .registers 6

    .line 1000
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1001
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-wide/16 v3, 0x1f4

    if-lt v1, v2, :cond_1d

    .line 1002
    const/4 v1, -0x1

    invoke-static {v3, v4, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_20

    .line 1004
    :cond_1d
    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1006
    :goto_20
    return-void
.end method

.method public y0()V
    .registers 1

    .line 1010
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    .line 1011
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/QSFragment;->unregisterAllListener()V

    .line 1012
    return-void
.end method
