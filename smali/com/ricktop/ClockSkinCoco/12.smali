.class public Lcom/ricktop/ClockSkinCoco/x;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/x$f;
    }
.end annotation


# instance fields
.field private Y:Z

.field private Z:Z

.field private a0:I

.field private b0:Landroid/content/Context;

.field private c0:I

.field private d0:I

.field private e0:Landroid/widget/ImageView;

.field private f0:Landroid/widget/TextView;

.field private g0:Landroid/widget/ImageView;

.field private h0:I

.field private i0:Landroid/telephony/TelephonyManager;

.field private final j0:Lcom/ricktop/ClockSkinCoco/x$f;

.field private k0:I

.field private final l0:Landroid/telephony/PhoneStateListener;

.field private final m0:Landroid/content/BroadcastReceiver;

.field private n0:Landroid/widget/ImageView;

.field private o0:Z

.field private p0:Landroid/bluetooth/BluetoothAdapter;

.field private final q0:Landroid/content/BroadcastReceiver;

.field private r0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->g0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/x;->o0:Z

    new-instance v2, Lcom/ricktop/ClockSkinCoco/x$a;

    invoke-direct {v2, p0}, Lcom/ricktop/ClockSkinCoco/x$a;-><init>(Lcom/ricktop/ClockSkinCoco/x;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/x;->q0:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x63

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/x;->r0:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/x;->h0:I

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/x;->Y:Z

    new-instance v1, Lcom/ricktop/ClockSkinCoco/x$f;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/x$f;-><init>(Lcom/ricktop/ClockSkinCoco/x;)V

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->j0:Lcom/ricktop/ClockSkinCoco/x$f;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->p0:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/x$b;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/x$b;-><init>(Lcom/ricktop/ClockSkinCoco/x;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->l0:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/x$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/x$c;-><init>(Lcom/ricktop/ClockSkinCoco/x;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->m0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/x;->o0:Z

    return p1
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->Y1()V

    return-void
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->X1()V

    return-void
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/x;->Y:Z

    return p1
.end method

.method static synthetic G1(Lcom/ricktop/ClockSkinCoco/x;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->V1()Z

    move-result p0

    return p0
.end method

.method static synthetic H1(Lcom/ricktop/ClockSkinCoco/x;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/x;->k0:I

    return p0
.end method

.method static synthetic I1(Lcom/ricktop/ClockSkinCoco/x;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->k0:I

    return p1
.end method

.method static synthetic J1(Lcom/ricktop/ClockSkinCoco/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/x;->Z:Z

    return p1
.end method

.method static synthetic K1(Lcom/ricktop/ClockSkinCoco/x;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/x;->a0:I

    return p0
.end method

.method static synthetic L1(Lcom/ricktop/ClockSkinCoco/x;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->a0:I

    return p1
.end method

.method static synthetic M1(Lcom/ricktop/ClockSkinCoco/x;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/x;->c0:I

    return p0
.end method

.method static synthetic N1(Lcom/ricktop/ClockSkinCoco/x;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->c0:I

    return p1
.end method

.method static synthetic O1(Lcom/ricktop/ClockSkinCoco/x;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->r0:I

    return p1
.end method

.method static synthetic P1(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->Z1()V

    return-void
.end method

.method static synthetic Q1(Lcom/ricktop/ClockSkinCoco/x;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/x;->d0:I

    return p0
.end method

.method static synthetic R1(Lcom/ricktop/ClockSkinCoco/x;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->d0:I

    return p1
.end method

.method static synthetic S1(Lcom/ricktop/ClockSkinCoco/x;)I
    .locals 0

    iget p0, p0, Lcom/ricktop/ClockSkinCoco/x;->h0:I

    return p0
.end method

.method static synthetic T1(Lcom/ricktop/ClockSkinCoco/x;I)I
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->h0:I

    return p1
.end method

.method private U1()Z
    .locals 3

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/x;->d0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private V1()Z
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->i0:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private W1(ZII)I
    .locals 6

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/x;->r0:I

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    const/16 p1, -0x6f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-le p2, p1, :cond_5

    const/16 p1, 0x55

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, -0x5b

    if-lt p2, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    const/16 p1, -0x62

    if-lt p2, p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const/16 p1, -0x67

    if-lt p2, p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-le p3, v5, :cond_a

    if-ne p3, v0, :cond_6

    goto :goto_2

    :cond_6
    const/16 p2, 0xc

    if-lt p3, p2, :cond_7

    const/4 v1, 0x4

    goto :goto_2

    :cond_7
    const/16 p2, 0x8

    if-lt p3, p2, :cond_8

    const/4 v1, 0x3

    goto :goto_2

    :cond_8
    const/4 p2, 0x5

    if-lt p3, p2, :cond_9

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_2
    iget p2, p0, Lcom/ricktop/ClockSkinCoco/x;->h0:I

    if-eqz p2, :cond_b

    return v0

    :cond_b
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private X1()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->f0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->i0:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Y1()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->p0:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->n0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT adapter conn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/x;->o0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/x;->o0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->n0:Landroid/widget/ImageView;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->n0:Landroid/widget/ImageView;

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private Z1()V
    .locals 6

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->g0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->U1()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/x;->c0:I

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/x;->a0:I

    invoke-direct {p0, v0, v2, v3}, Lcom/ricktop/ClockSkinCoco/x;->W1(ZII)I

    move-result v0

    sput v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->l:I

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->V1()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/x;->Y:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/x;->h0:I

    if-eq v2, v1, :cond_8

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/x;->g0:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v1, 0x7f080103

    invoke-static {v0, v1}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v1, 0x7f080101

    invoke-static {v0, v1}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v5, 0x7f080100

    invoke-static {v0, v5}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v5, 0x7f0800ff

    invoke-static {v0, v5}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v5, 0x7f0800fe

    invoke-static {v0, v5}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v5, 0x7f0800fd

    invoke-static {v0, v5}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v5, 0x7f0800fc

    invoke-static {v0, v5}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->g0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v2, 0x7f080102

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->V1()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/x;->d0:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v2, 0x7f0800c8

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sput v3, Lcom/ricktop/ClockSkinCoco/WatchApp;->m:I

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v3, 0x7f0800c7

    invoke-static {v2, v3}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sput v1, Lcom/ricktop/ClockSkinCoco/WatchApp;->m:I

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const v2, 0x7f0800c6

    invoke-static {v1, v2}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    sput v0, Lcom/ricktop/ClockSkinCoco/WatchApp;->m:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->X1()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/x;->Y1()V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x;->i0:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->l0:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x141

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x;->i0:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/x;->d0:I

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->j0:Lcom/ricktop/ClockSkinCoco/x$f;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_23

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_23

    :old_api_registerReceiver_compat_23
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_23

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->m0:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_24

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_24

    :old_api_registerReceiver_compat_24
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_24

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x;->p0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->q0:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v3, 0x21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v4, v3, :old_api_registerReceiver_compat_25

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_25

    :old_api_registerReceiver_compat_25
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_25

    # Load the permission string into v0
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    # Call checkSelfPermission (requires a Context, e.g., Activity)
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    move-result v1

    # Compare result to PERMISSION_GRANTED (0)
    if-eqz v1, :cond_1
    
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x;->p0:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/x;->o0:Z

    :cond_1
    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01c0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/x;->g0:Landroid/widget/ImageView;

    new-instance p3, Lcom/ricktop/ClockSkinCoco/x$d;

    invoke-direct {p3, p0}, Lcom/ricktop/ClockSkinCoco/x$d;-><init>(Lcom/ricktop/ClockSkinCoco/x;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a00bf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/DateView;

    new-instance p3, Lcom/ricktop/ClockSkinCoco/x$e;

    invoke-direct {p3, p0}, Lcom/ricktop/ClockSkinCoco/x$e;-><init>(Lcom/ricktop/ClockSkinCoco/x;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a015c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/x;->e0:Landroid/widget/ImageView;

    const p2, 0x7f0a01bf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/x;->f0:Landroid/widget/TextView;

    const p2, 0x7f0a007c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/x;->n0:Landroid/widget/ImageView;

    return-object p1
.end method

.method public n0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->m0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->j0:Lcom/ricktop/ClockSkinCoco/x$f;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->p0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x;->b0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x;->q0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public y0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
