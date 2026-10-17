.class public final Lcom/ricktop/ClockSkinCoco/i;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/i$b;,
        Lcom/ricktop/ClockSkinCoco/i$a;
    }
.end annotation


# static fields
.field public static final o0:Lcom/ricktop/ClockSkinCoco/i$a;

.field private static p0:Z


# instance fields
.field private Y:Lcom/ricktop/ClockSkinCoco/NumberPicker;

.field private Z:Lcom/ricktop/ClockSkinCoco/NumberPicker;

.field private a0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

.field private b0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

.field private c0:Landroid/widget/ImageView;

.field private d0:Landroid/widget/TextView;

.field private final e0:Landroid/os/Handler;

.field private f0:J

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field private j0:Landroid/media/MediaPlayer;

.field private k0:J

.field private l0:I

.field private m0:Ljava/util/ArrayList;

.field private final n0:Lcom/ricktop/ClockSkinCoco/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ricktop/ClockSkinCoco/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ricktop/ClockSkinCoco/i$a;-><init>(LK0/a;)V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/i;->o0:Lcom/ricktop/ClockSkinCoco/i$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->e0:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/i$c;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/i$c;-><init>(Lcom/ricktop/ClockSkinCoco/i;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->n0:Lcom/ricktop/ClockSkinCoco/i$c;

    return-void
.end method

.method public static synthetic C1(Lcom/ricktop/ClockSkinCoco/i;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/i;->J1(Lcom/ricktop/ClockSkinCoco/i;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic D1(Lcom/ricktop/ClockSkinCoco/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/i;->e0:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic E1(Lcom/ricktop/ClockSkinCoco/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/i;->h0:Z

    return p0
.end method

.method public static final synthetic F1(Lcom/ricktop/ClockSkinCoco/i;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/i;->R1(J)V

    return-void
.end method

.method private final G1(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/i;->l0:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    :cond_0
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/i;->l0:I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/i;->l0:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrono_skin"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/i;->c0:Landroid/widget/ImageView;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/i;->l0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/i$b;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/i$b;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic H1(Lcom/ricktop/ClockSkinCoco/i;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/i;->G1(I)V

    return-void
.end method

.method private static final J1(Lcom/ricktop/ClockSkinCoco/i;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p1, v0}, LK0/b;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/i;->I1(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/16 v3, 0x190

    int-to-float v3, v3

    mul-float v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    mul-float p2, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ricktop/ClockSkinCoco/i;->l0:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/i$b;

    invoke-virtual {p1, v0, p2}, Lcom/ricktop/ClockSkinCoco/i$b;->a(FF)C

    move-result p1

    const/16 p2, 0x63

    const-wide/16 v3, 0x0

    if-ne p1, p2, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/ricktop/ClockSkinCoco/i;->K1(J)V

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x72

    if-ne p1, p2, :cond_2

    iget-wide p1, p0, Lcom/ricktop/ClockSkinCoco/i;->k0:J

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/i;->K1(J)V

    goto/16 :goto_0

    :cond_2
    const/16 p2, 0x62

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/i;->Y:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->a0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->Z:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->b0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    add-int/2addr p1, p2

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/i;->i0:Z

    invoke-direct {p0, v3, v4}, Lcom/ricktop/ClockSkinCoco/i;->K1(J)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/i;->M1()V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/i;->i0:Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/i;->Y:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x258

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->Z:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->a0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->b0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/ricktop/ClockSkinCoco/i;->k0:J

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/i;->K1(J)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/i;->M1()V

    goto :goto_0

    :cond_4
    const/16 p2, 0x65

    if-ne p1, p2, :cond_5

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->O1()V

    goto :goto_0

    :cond_5
    const/16 p2, 0x73

    if-ne p1, p2, :cond_6

    const/4 p1, 0x0

    invoke-static {p0, v1, v2, p1}, Lcom/ricktop/ClockSkinCoco/i;->H1(Lcom/ricktop/ClockSkinCoco/i;IILjava/lang/Object;)V

    :cond_6
    :goto_0
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    return v1
.end method

.method private final K1(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/i;->i0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/ricktop/ClockSkinCoco/i;->f0:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/i;->R1(J)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->P1()V

    return-void
.end method

.method private final L1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/i;->g0:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->Q1()V

    return-void
.end method

.method private final N1()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->j0:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->j0:Landroid/media/MediaPlayer;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->j0:Landroid/media/MediaPlayer;

    invoke-static {v0}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final O1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/i;->g0:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->Q1()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->P1()V

    return-void
.end method

.method private final P1()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->j0:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->j0:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private final Q1()V
    .locals 4

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/i;->g0:Z

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/i;->h0:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/i;->h0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->e0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i;->n0:Lcom/ricktop/ClockSkinCoco/i$c;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ricktop/ClockSkinCoco/i;->R1(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->e0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i;->n0:Lcom/ricktop/ClockSkinCoco/i$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final declared-synchronized R1(J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/i;->i0:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ricktop/ClockSkinCoco/i;->f0:J

    sub-long/2addr v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/ricktop/ClockSkinCoco/i;->f0:J

    sub-long v0, p1, v0

    :goto_0
    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/i;->L1(Z)V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->N1()V

    move-wide v0, v2

    :cond_1
    const p1, 0x927c0

    int-to-long v2, p1

    div-long v2, v0, v2

    long-to-int p2, v2

    mul-int p1, p1, p2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const p1, 0xea60

    int-to-long v2, p1

    div-long v2, v0, v2

    long-to-int v3, v2

    mul-int p1, p1, v3

    int-to-long v4, p1

    sub-long/2addr v0, v4

    const/16 p1, 0x2710

    int-to-long v4, p1

    div-long v4, v0, v4

    long-to-int p1, v4

    mul-int/lit16 v2, p1, 0x2710

    int-to-long v4, v2

    sub-long/2addr v0, v4

    const/16 v2, 0x3e8

    int-to-long v4, v2

    div-long/2addr v0, v4

    long-to-int v1, v0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i;->Y:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {v0}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->Z:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->a0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/i;->b0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/i;->d0:Landroid/widget/TextView;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    sget-boolean p2, Lcom/ricktop/ClockSkinCoco/i;->p0:Z

    if-eqz p2, :cond_2

    const-string p2, ":"

    goto :goto_1

    :cond_2
    const-string p2, " "

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean p1, Lcom/ricktop/ClockSkinCoco/i;->p0:Z

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/ricktop/ClockSkinCoco/i;->p0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method

.method public final I1(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public final M1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/i;->g0:Z

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->Q1()V

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/i;->P1()V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d002d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a016b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/NumberPicker;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->Y:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    const p2, 0x7f0a016c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/NumberPicker;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->Z:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    const p2, 0x7f0a016d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/NumberPicker;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->a0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    const p2, 0x7f0a016e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/NumberPicker;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->b0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/i;->a0:Lcom/ricktop/ClockSkinCoco/NumberPicker;

    invoke-static {p2}, LK0/b;->c(Ljava/lang/Object;)V

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const p2, 0x7f0a0002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/i;->c0:Landroid/widget/ImageView;

    const p3, 0x7f0a01b8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/i;->d0:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/ricktop/ClockSkinCoco/i$b;

    invoke-direct {p3}, Lcom/ricktop/ClockSkinCoco/i$b;-><init>()V

    const v1, 0x7f080081

    invoke-virtual {p3, v1}, Lcom/ricktop/ClockSkinCoco/i$b;->c(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/ricktop/ClockSkinCoco/i$b;

    invoke-direct {p3}, Lcom/ricktop/ClockSkinCoco/i$b;-><init>()V

    const v1, 0x7f080082

    invoke-virtual {p3, v1}, Lcom/ricktop/ClockSkinCoco/i$b;->c(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/ricktop/ClockSkinCoco/i$b;

    invoke-direct {p3}, Lcom/ricktop/ClockSkinCoco/i$b;-><init>()V

    const v1, 0x7f080083

    invoke-virtual {p3, v1}, Lcom/ricktop/ClockSkinCoco/i$b;->c(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/ricktop/ClockSkinCoco/i$b;

    invoke-direct {p3}, Lcom/ricktop/ClockSkinCoco/i$b;-><init>()V

    const v1, 0x7f080084

    invoke-virtual {p3, v1}, Lcom/ricktop/ClockSkinCoco/i$b;->c(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i;->m0:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p3

    invoke-static {p3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v1, "chrono_skin"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-direct {p0, v0}, Lcom/ricktop/ClockSkinCoco/i;->G1(I)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/ricktop/ClockSkinCoco/i;->G1(I)V

    :goto_0
    new-instance p3, Lcom/ricktop/ClockSkinCoco/h;

    invoke-direct {p3, p0}, Lcom/ricktop/ClockSkinCoco/h;-><init>(Lcom/ricktop/ClockSkinCoco/i;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method
