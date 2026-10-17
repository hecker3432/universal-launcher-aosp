.class public Lcom/ricktop/ClockSkinCoco/v;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/v$c;,
        Lcom/ricktop/ClockSkinCoco/v$d;
    }
.end annotation


# static fields
.field private static final u0:[I

.field private static v0:Ljava/lang/Boolean;


# instance fields
.field private Y:Landroid/widget/Button;

.field private Z:Landroid/widget/Button;

.field private a0:Landroid/widget/Button;

.field private b0:Landroid/widget/Chronometer;

.field private c0:Landroid/content/Context;

.field private d0:Landroid/widget/Button;

.field private e0:Landroid/widget/ImageView;

.field private f0:Landroid/widget/ImageView;

.field private g0:I

.field private h0:Ljava/lang/String;

.field private i0:Landroid/widget/Button;

.field private j0:Landroid/widget/ImageButton;

.field private k0:Ljava/lang/String;

.field private l0:Landroid/view/ViewGroup;

.field private m0:Landroid/service/notification/StatusBarNotification;

.field private n0:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

.field private o0:Ljava/lang/String;

.field private p0:Landroid/widget/TextView;

.field private q0:Landroid/widget/TextView;

.field private r0:Lcom/ricktop/ClockSkinCoco/DateTimeView;

.field private s0:Landroid/widget/TextView;

.field private t0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/ricktop/ClockSkinCoco/v;->v0:Ljava/lang/Boolean;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ricktop/ClockSkinCoco/v;->u0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080117
        0x7f080105
        0x7f080104
        0x7f0800e6
        0x7f080095
        0x7f08006b
        0x7f080092
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->T1()V

    return-void
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->G1()V

    return-void
.end method

.method public static F1(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Lcom/ricktop/ClockSkinCoco/v;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "watch.notif.highcontrast"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ricktop/ClockSkinCoco/v;->v0:Ljava/lang/Boolean;

    :cond_0
    new-instance p1, Lcom/ricktop/ClockSkinCoco/v;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/v;-><init>()V

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/v;->V1(Landroid/service/notification/StatusBarNotification;)V

    return-object p1
.end method

.method private G1()V
    .locals 3

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->H1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->j0:Landroid/widget/ImageButton;

    # Add null check to prevent crash
    if-nez v0, :views_exist

    return-void

    :views_exist
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->q0:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/ricktop/ClockSkinCoco/v;->L1(Landroid/app/Notification;Landroid/widget/TextView;Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->U1()V

    :cond_0
    return-void
.end method

.method private H1()Z
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->j0:Landroid/widget/ImageButton;

    # Add null check to prevent crash
    if-nez v0, :not_null

    const/4 v0, 0x0

    return v0

    :not_null
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I1(Landroid/app/Notification;)V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    const-string v1, "INVISIBLE"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Ly/v;->c(Landroid/app/Notification;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ly/v;->a(Landroid/app/Notification;I)Ly/v$a;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/ricktop/ClockSkinCoco/v;->J1(Landroid/widget/Button;Ly/v$a;)V

    :cond_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    invoke-static {p1, v1}, Ly/v;->a(Landroid/app/Notification;I)Ly/v$a;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/ricktop/ClockSkinCoco/v;->J1(Landroid/widget/Button;Ly/v$a;)V

    :cond_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    invoke-static {p1, v2}, Ly/v;->a(Landroid/app/Notification;I)Ly/v$a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/v;->J1(Landroid/widget/Button;Ly/v$a;)V

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->i0:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/ricktop/ClockSkinCoco/v;->M1(Landroid/widget/Button;Landroid/app/Notification;)V

    return-void
.end method

.method private J1(Landroid/widget/Button;Ly/v$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p2, Ly/v$a;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "VISIBLE"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/v$c;

    invoke-direct {v0, p2}, Lcom/ricktop/ClockSkinCoco/v$c;-><init>(Ly/v$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private K1(Landroid/app/Notification;Landroid/view/View;I)V
    .locals 2

    if-eqz p2, :cond_1

    new-instance v0, Ly/v$c;

    invoke-direct {v0, p1}, Ly/v$c;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v0}, Ly/v$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/r;->f(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->d(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/v;->u0:[I

    array-length v1, v0

    rem-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    aget p3, v0, p3

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private L1(Landroid/app/Notification;Landroid/widget/TextView;Z)V
    .locals 5

    if-eqz p2, :cond_2

    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->i(Landroid/os/Bundle;)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p3, :cond_0

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    if-eqz p1, :cond_2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    array-length p3, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x11

    invoke-interface {v2, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "...\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private M1(Landroid/widget/Button;Landroid/app/Notification;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v0, "VISIBLE"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/v$d;

    invoke-direct {v0, p0, p2}, Lcom/ricktop/ClockSkinCoco/v$d;-><init>(Lcom/ricktop/ClockSkinCoco/v;Landroid/app/Notification;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private N1(Landroid/app/Notification;)V
    .locals 3

    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->s0:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/r;->j(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->q0:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/r;->h(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->q0:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/r;->h(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->q0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/v;->L1(Landroid/app/Notification;Landroid/widget/TextView;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private O1(Landroid/app/Notification;Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->c(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->k0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private P1()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/u;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->h0:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->k0:Ljava/lang/String;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->o0:Ljava/lang/String;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ricktop/ClockSkinCoco/v;->t0:J

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/v;->g0:I

    :cond_1
    return-void
.end method

.method private Q1(Landroid/app/Notification;)V
    .locals 7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->b0:Landroid/widget/Chronometer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->r0:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/r;->g(Landroid/os/Bundle;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->b0:Landroid/widget/Chronometer;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->b0:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->b0:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->r0:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->r0:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    invoke-virtual {p1, v3, v4}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->setTime(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private R1(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "mTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object p1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ricktop/ClockSkinCoco/p;->c(Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/p;->d(I)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object p1

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/v;->V1(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method private S1()V
    .locals 10

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->P1()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "appLabel"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/ricktop/ClockSkinCoco/v;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/v;->p0:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/v;->I1(Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/v;->Q1(Landroid/app/Notification;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->f0:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/v;->O1(Landroid/app/Notification;Landroid/widget/ImageView;)V

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/v;->N1(Landroid/app/Notification;)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->H1()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->U1()V

    :cond_4
    return-void
.end method

.method private T1()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDismiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationSubFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->n0:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    invoke-virtual {v0, v0}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->i(Landroid/view/View;)V

    return-void
.end method

.method private U1()V
    .locals 7

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/v;->i0:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "VISIBLE"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->i0:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->d0:Landroid/widget/Button;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private V1(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public E0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/os/Bundle;)V

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->k0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tag"

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->o0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mTime"

    iget-wide v1, p0, Lcom/ricktop/ClockSkinCoco/v;->t0:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "id"

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/v;->g0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public E1()V
    .locals 2

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->H1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->j0:Landroid/widget/ImageButton;

    # Add null check to prevent crash
    if-nez v0, :views_exist

    return-void

    :views_exist
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/v;->N1(Landroid/app/Notification;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->i0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->d0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f0(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->f0(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSwipe="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationSubFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ricktop.watchapp.NOTIFICATION_LISTENER.CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/v;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removed Notification sbn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notif"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.ricktop.ClockSkinCoco.NOTIF.REMOVED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Cache the SBN and get the cache key
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/r;->cacheSbn(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    # Send cache key instead of the entire SBN
    const-string v0, "sbn_key"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    # Get fragment's context
    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    # Check Android version for proper PendingIntent handling
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22  # API 34 (Android 14)

    if-lt p1, v0, :legacy_send_delete

    # Android 14+: Use ActivityOptions to allow background activity start
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    # Set background activity start mode to allowed
    const/4 v0, 0x1  # MODE_BACKGROUND_ACTIVITY_START_ALLOWED

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    # Convert to Bundle
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    # Call 7-parameter send(Context, int, Intent, OnFinished, Handler, String, Bundle)
    const/4 v4, 0x0  # code = 0
    const/4 v5, 0x0  # intent = null
    const/4 v6, 0x0  # onFinished = null
    const/4 v7, 0x0  # handler = null
    const/4 v8, 0x0  # requiredPermission = null

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :cond_1

    :legacy_send_delete
    # Android < 14: Use simple send()
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    # Get context to check screen shape
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    # Check if screen is round
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/RoundUtil;->isRound(Landroid/content/Context;)Z

    move-result v0

    # If round, use round layout, else use square layout
    if-eqz v0, :square_layout

    # Round screen - use zzzzh_notification_content_layout_round
    const v0, 0x7f0d0088

    goto :do_inflate

    :square_layout
    # Square screen - use notification_content_layout
    const v0, 0x7f0d0042

    :do_inflate
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0094

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->n0:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a010d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->f0:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a01f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->s0:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a01ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->q0:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0172

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->j0:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0034

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->Y:Landroid/widget/Button;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0035

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->Z:Landroid/widget/Button;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0036

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->a0:Landroid/widget/Button;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a0171

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->i0:Landroid/widget/Button;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a00b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->d0:Landroid/widget/Button;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a01f6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/DateTimeView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->r0:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a00a4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->b0:Landroid/widget/Chronometer;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a020b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->e0:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    const p2, 0x7f0a020c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->p0:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->n0:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    invoke-virtual {p1, p0}, Lcom/ricktop/ClockSkinCoco/NotificationScrollView;->setCallback(Lcom/ricktop/ClockSkinCoco/NotificationScrollView$b;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->j0:Landroid/widget/ImageButton;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/v$a;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/v$a;-><init>(Lcom/ricktop/ClockSkinCoco/v;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->d0:Landroid/widget/Button;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/v$b;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/v$b;-><init>(Lcom/ricktop/ClockSkinCoco/v;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->m0:Landroid/service/notification/StatusBarNotification;

    if-nez p1, :cond_0

    invoke-direct {p0, p3}, Lcom/ricktop/ClockSkinCoco/v;->R1(Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/v;->S1()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->n0:Lcom/ricktop/ClockSkinCoco/NotificationScrollView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/v;->l0:Landroid/view/ViewGroup;

    return-object p1
.end method


.method public getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0  # Flags (0 for basic info)

    .line 1
    :try_start_3
    # Get PackageManager
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/v;->c0:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0

    # Call getApplicationInfo
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    move-result-object v1

    # Get app label and convert to String
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0


    goto :goto_1f

    .line 7
    :catch_1a
    move-exception v0  # Catch NameNotFoundException
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0

    const-string v0, "APP"

    :goto_1f

    return-object v0

    .line 1
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_20} :catch_1a
.end method