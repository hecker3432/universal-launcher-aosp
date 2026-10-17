.class public Lcom/ricktop/ClockSkinCoco/B;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/B$g;
    }
.end annotation


# instance fields
.field private Y:I

.field private final Z:Landroid/os/Handler;

.field private a0:Landroid/widget/ImageView;

.field private b0:Landroid/bluetooth/BluetoothAdapter;

.field private c0:Landroid/content/Context;

.field private d0:Landroid/view/View$OnClickListener;

.field private e0:Landroid/media/AudioManager;

.field private f0:Landroid/net/wifi/WifiManager;

.field private g0:Landroid/widget/ImageView;

.field private h0:Landroid/widget/ImageView;

.field private i0:Landroid/widget/TextView;

.field private j0:Landroid/widget/ImageView;

.field private k0:Landroid/widget/ImageView;

.field private l0:Landroid/widget/ImageView;

.field private m0:Landroid/widget/ImageView;

.field private n0:Landroid/widget/ImageView;

.field private o0:Landroid/widget/ImageView;

.field private p0:I

.field private q0:I

.field private r0:Ljava/lang/Runnable;

.field private s0:Lcom/ricktop/ClockSkinCoco/B$g;

.field private t0:Z

.field private u0:Z

.field private final v0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$a;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->v0:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->Z:Landroid/os/Handler;

    const/16 v0, 0xff

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/B;->p0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/B;->q0:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/B;->Y:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->b0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/B;->t0:Z

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/B;->u0:Z

    return-void
.end method

.method private A2()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->B2()V

    sput v1, Lcom/ricktop/ClockSkinCoco/WatchApp;->h:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->C2()V

    const/4 v0, 0x0

    sput v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->h:I

    :goto_1
    return-void
.end method

.method private B2()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, -0x37

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const v2, 0x7f080123

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 v1, -0x46

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const v2, 0x7f080122

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/16 v1, -0x55

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const v2, 0x7f080121

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/16 v1, -0x64

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const v2, 0x7f080120

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const v2, 0x7f08011f

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->z2()V

    return-void
.end method

.method private C2()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    const v2, 0x7f080124

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->A2()V

    return-void
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/B;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/B;->s2(Z)V

    return-void
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/B;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->k2()Z

    move-result p0

    return p0
.end method

.method static synthetic G1(Lcom/ricktop/ClockSkinCoco/B;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/B;->t2(Z)V

    return-void
.end method

.method static synthetic H1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->m0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic I1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->o2()V

    return-void
.end method

.method static synthetic J1(Lcom/ricktop/ClockSkinCoco/B;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/B;->Y:I

    return p0
.end method

.method static synthetic K1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->r2()V

    return-void
.end method

.method static synthetic L1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->x2()V

    return-void
.end method

.method static synthetic M1(Lcom/ricktop/ClockSkinCoco/B;)I
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->h2()I

    move-result p0

    return p0
.end method

.method static synthetic N1(Lcom/ricktop/ClockSkinCoco/B;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/B;->q0:I

    return p0
.end method

.method static synthetic O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->b0:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic P1(Lcom/ricktop/ClockSkinCoco/B;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/B;->p2(I)V

    return-void
.end method

.method static synthetic Q1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic R1(Lcom/ricktop/ClockSkinCoco/B;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/B;->p0:I

    return p0
.end method

.method static synthetic S1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->a0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic T1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->w2()V

    return-void
.end method

.method static synthetic U1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic V1(Lcom/ricktop/ClockSkinCoco/B;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->r0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic W1(Lcom/ricktop/ClockSkinCoco/B;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->r0:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic X1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->Z:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Y1(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->y2()V

    return-void
.end method

.method static synthetic Z1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic a2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->v0:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/B;->e0:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic d2(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->u2()V

    return-void
.end method

.method static synthetic e2(Lcom/ricktop/ClockSkinCoco/B;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->j2()Z

    move-result p0

    return p0
.end method

.method static synthetic f2(Lcom/ricktop/ClockSkinCoco/B;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/B;->u0:Z

    return p0
.end method

.method static synthetic g2(Lcom/ricktop/ClockSkinCoco/B;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/B;->u0:Z

    return p1
.end method

.method private h2()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x1e

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x78

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v1, 0xbe

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/16 v1, 0xfa

    if-ge v0, v1, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method private i2()V
    .locals 1

    const/16 v0, 0xff

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/B;->p0:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/B;->q0:I

    return-void
.end method

.method private j2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/B;->t0:Z

    return v0
.end method

.method private k2()Z
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swlauncher.persist.sys.raise.wakeup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemRaiseWakeUp() isRaiseWakeUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickSetSysConfFrag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private l2()V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->u2()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->v2()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->q2()V

    return-void
.end method

.method private m2()Z
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private n2()Z
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private o2()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private p2(I)V
    .locals 3

    const-string v0, "screen_brightness"

    :try_start_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    const-string v1, "Setting not allowed"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private q2()V
    .locals 3

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->h2()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private r2()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->h0:Landroid/widget/ImageView;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->h0:Landroid/widget/ImageView;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private s2(Z)V
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "watch.notif.turnon"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/B;->u0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "watch.notif.highcontrast"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/B;->t0:Z

    return-void
.end method

.method private t2(Z)V
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "swlauncher.persist.sys.raise.wakeup"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRaiseWakeUpOnOff() on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickSetSysConfFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private u2()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->j2()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/B;->k0:Landroid/widget/ImageView;

    const v4, 0x7f08010e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/B;->u0:Z

    if-eqz v3, :cond_0

    const v3, 0x7f110029

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->N(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f110028

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->N(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/B;->k0:Landroid/widget/ImageView;

    const v4, 0x7f08010d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v3, ""

    :goto_0
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->e0:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const-string v5, "%s%s"

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->j0:Landroid/widget/ImageView;

    const v6, 0x7f080110

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->i0:Landroid/widget/TextView;

    const v6, 0x7f1100aa

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->N(I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->j0:Landroid/widget/ImageView;

    const v6, 0x7f080112

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->i0:Landroid/widget/TextView;

    const v6, 0x7f1100a9

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->N(I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->j0:Landroid/widget/ImageView;

    const v6, 0x7f080113

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B;->i0:Landroid/widget/TextView;

    const v6, 0x7f1100a8

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->N(I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->m2()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->l0:Landroid/widget/ImageView;

    const v3, 0x7f080107

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->l0:Landroid/widget/ImageView;

    const v3, 0x7f080106

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->k2()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->m0:Landroid/widget/ImageView;

    const v3, 0x7f080115

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->m0:Landroid/widget/ImageView;

    const v3, 0x7f080114

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/B;->Y:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->r2()V

    :cond_6
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->n2()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->n0:Landroid/widget/ImageView;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sput v2, Lcom/ricktop/ClockSkinCoco/WatchApp;->j:I

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->n0:Landroid/widget/ImageView;

    const v2, 0x7f08009e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sput v1, Lcom/ricktop/ClockSkinCoco/WatchApp;->j:I

    :goto_4
    return-void
.end method

.method private v2()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->j0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->k0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->l0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->m0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->n0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->h0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private w2()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private x2()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private y2()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private z2()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->b0:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->a0:Landroid/widget/ImageView;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->a0:Landroid/widget/ImageView;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->l2()V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "watch.notif.turnon"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/B;->t0:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/B;->t0:Z

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/B;->s2(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/B;->t0:Z

    sput v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->k:I

    const-string v0, "watch.notif.highcontrast"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/B;->u0:Z

    :cond_1
    new-instance p1, Lcom/ricktop/ClockSkinCoco/B$b;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/B$b;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->d0:Landroid/view/View$OnClickListener;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/A;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->i2()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/B;->Y:I

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->e0:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->b0:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_5

    :cond_4
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->v0:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_14

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_14

    :old_api_registerReceiver_compat_14
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_14

    :cond_5
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->k2()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    const-class v2, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->z2()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->a0:Landroid/widget/ImageView;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$c;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->a0:Landroid/widget/ImageView;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$d;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$d;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->A2()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$e;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$e;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$f;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$f;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/B;->n2()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    sput p1, Lcom/ricktop/ClockSkinCoco/WatchApp;->j:I

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    sput p1, Lcom/ricktop/ClockSkinCoco/WatchApp;->j:I

    :goto_2
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$g;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$g;-><init>(Lcom/ricktop/ClockSkinCoco/B;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->s0:Lcom/ricktop/ClockSkinCoco/B$g;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_15

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_15

    :old_api_registerReceiver_compat_15
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_15

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0169

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->j0:Landroid/widget/ImageView;

    const p2, 0x7f0a016a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->k0:Landroid/widget/ImageView;

    const p2, 0x7f0a0167

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->i0:Landroid/widget/TextView;

    const p2, 0x7f0a01de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->l0:Landroid/widget/ImageView;

    const p2, 0x7f0a01df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->n0:Landroid/widget/ImageView;

    const p2, 0x7f0a0155

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->h0:Landroid/widget/ImageView;

    const p2, 0x7f0a01e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->m0:Landroid/widget/ImageView;

    const p2, 0x7f0a0076

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->o0:Landroid/widget/ImageView;

    const p2, 0x7f0a007e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->a0:Landroid/widget/ImageView;

    const p2, 0x7f0a023b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/B;->g0:Landroid/widget/ImageView;

    return-object p1
.end method

.method public n0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->b0:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->f0:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->v0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->c0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->s0:Lcom/ricktop/ClockSkinCoco/B$g;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public y0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
